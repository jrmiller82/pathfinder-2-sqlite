import yaml
import sqlite3
import os
import pprint
import sys

DBFILE = 'tmp.db'


def main():
    # delete DBfile and run fresh
    os.remove(DBFILE)
    # Load in the yaml data
    with open('basics.yaml') as yl:
        data = yaml.full_load(yl)
    # Get a DB conn
    conn = get_db_conn()
    # call the functions to input to SQL
    do_abilityscore(data['abilityscore'], conn)
    do_actioncost(data['actioncost'], conn)
    do_alignment(data['alignment'], conn)
    do_frequency(data['frequency'], conn)
    do_langrarity(data['lang_rarity'], conn)
    do_movement(data['movement'], conn)
    do_size(data['size'], conn)
    do_weaponcategory(data['weaponcategory'], conn)

    # move on to traits
    with open('traits.yaml') as yl:
        data = yaml.full_load(yl)
    do_traits(data, conn)  # does both trait types and traits

    # move on to sources
    with open('sources.yaml') as yl:
        data = yaml.full_load(yl)
    do_sources(data, conn)
    do_source_entry_table(conn)

    # move on to skills
    with open('skills.yaml') as yl:
        data = yaml.full_load(yl)
    do_skills(data, conn)


def do_skills(data, conn):
    # make skill table
    table = """
CREATE TABLE skill (
  skill_id INTEGER PRIMARY KEY,
  "name" TEXT UNIQUE NOT NULL,
  descr TEXT
);
   """
    c = conn.cursor()
    c.execute(table)

    # make sourceentry many-to-many table
    table = """
CREATE TABLE sourceentry_skill (
  id INTEGER PRIMARY KEY,
  sourceentry_id INTEGER NOT NULL,
  skill_id INTEGER NOT NULL,
  UNIQUE (sourceentry_id, skill_id), -- prevent duplicates
  FOREIGN KEY (sourceentry_id) REFERENCES sourceentry(sourceentry_id),
  FOREIGN KEY (skill_id) REFERENCES skill(skill_id)
);
   """
    c = conn.cursor()
    c.execute(table)

    # insert basics into skill table
    inp_data = []
    for i in data['skill']:
        inp_data.append((i['name'], i['descr']))

    stmt = "INSERT INTO skill (name, descr) VALUES (?,?)"
    try:
        conn.executemany(stmt, inp_data)
    except sqlite3.Error as e:
        print("Error creating skill: {}".format(e))
    except:
        print("Error creating skill something other than sqlite3 error")
    else:
        conn.commit()

    # go through and do source entry linking

    for i in data['skill']:
        print("\n\nDoing the skill: {}".format(i['name']))
        srcs = []
        # TODO refactor this inner loop for sources out
        for j in i['source']:
            abbr = j['abbr']
            page_start = j['page_start']
            if 'page_stop' in j:
                page_stop = j['page_stop']
            else:
                page_stop = page_start
            srcs.append([i['name'], abbr, page_start, page_stop])
        print("srcs: {}".format(srcs))
        do_sourceentry_to_skill(srcs, conn)


# TODO ugggh;;; this is soooo ugly and needs refactoring but it's working
def do_sourceentry_to_skill(srcs, conn):
    c = conn.cursor()

    stmt = "SELECT source.source_id, skill.skill_id FROM source, skill WHERE source.abbr=? AND skill.name=?"
    istmt = "INSERT INTO sourceentry (source_id, page_start, page_stop) VALUES (?,?,?)"
    for i in srcs:
        print("i in srcs: {}".format(i))
        inp_data = (i[1], i[0])
        print("inp data: {}".format(inp_data))
        for row in c.execute(stmt, inp_data):
            print("source_id:{} skill_id:{}".format(row[0], row[1]))
            iinp_data = (row[0], i[2], i[3])
            print("iinp data: {}".format(iinp_data))

            try:
                c.execute(istmt, iinp_data)
            except sqlite3.IntegrityError as e:
                if "UNIQUE" in str(e):
                    # we fully expect UNIQUE constraint to fail on some of these so it's fine
                    conn.commit()
                    print("committed istmt")
                else:
                    # but we still want to know what's going on if there's some other error
                    print("Something went wrong with istmt: {}".format(e))
            except sqlite3.Error as e:
                print("Error inserting a sourceentry for skill: {}".format(e))
            else:
                conn.commit()
                print("committed istmt")

            linkstmt = "INSERT INTO sourceentry_skill (sourceentry_id, skill_id) VALUES ((SELECT sourceentry_id from sourceentry WHERE source_id=? AND page_start=? AND page_stop=?), ?)"
            linkinp_data = (row[0], i[2], i[3], row[1])
            print(linkinp_data)
            try:
                c.execute(linkstmt, linkinp_data)
            except sqlite3.IntegrityError as e:
                if "UNIQUE" in str(e):
                    # we fully expect UNIQUE constraint to fail on some of these so it's fine
                    conn.commit()
                    print("committed linkstmt")
                    pass
                else:
                    # but we still want to know what's going on if there's some other error
                    print(e)
            except sqlite3.Error as e:
                print("Error inserting a sourceentry for skill: {}".format(e))
            else:
                conn.commit()
                print("committed linkstmt")


def do_source_entry_table(conn):
    table = """
CREATE TABLE sourceentry (
  sourceentry_id INTEGER PRIMARY KEY,
  source_id INTEGER NOT NULL,
  page_start INTEGER NOT NULL,
  page_stop INTEGER NOT NULL,
  UNIQUE (source_id, page_start, page_stop), -- prevent duplicates
  FOREIGN KEY (source_id) REFERENCES source(source_id)
);
   """
    c = conn.cursor()
    c.execute(table)


def do_sources(data, conn):
    table = """
CREATE TABLE source (
  source_id INTEGER PRIMARY KEY,
  isbn TEXT,
  pzocode TEXT,
  full_name TEXT NOT NULL UNIQUE,
  short_name TEXT NOT NULL UNIQUE,
  abbr TEXT NOT NULL UNIQUE,
  descr TEXT NOT NULL,
  release_date TEXT NOT NULL, -- in YYYY-MM-DD format
  is_first_party BOOLEAN NOT NULL,
  ogl_copyright_block TEXT NOT NULL
);
   """

    c = conn.cursor()
    c.execute(table)

    inp_data = []
    for i in data['source']:
        inp_data.append(
            (i['isbn'], i['pzocode'], i['full_name'], i['short_name'],
             i['abbr'], i['descr'], i['release_date'], i['is_first_party'],
             i['ogl_copyright_block']))

    stmt = "INSERT INTO source (isbn, pzocode, full_name, short_name, abbr, descr, release_date, is_first_party, ogl_copyright_block) VALUES (?,?,?,?,?,?,?,?,?)"
    try:
        conn.executemany(stmt, inp_data)
    except sqlite3.Error as e:
        print("Error creating source: {}".format(e))
    except:
        print("Error creating sources something other than sqlite3 error")
    else:
        conn.commit()


def do_traits(data, conn):
    # create the two tables
    table = """
CREATE TABLE traittype (
  traittype_id INTEGER PRIMARY KEY,
  name TEXT NOT NULL
);
   """
    table_two = """
CREATE TABLE trait (
  trait_id INTEGER PRIMARY KEY,
  traittype_id INTEGER,
  short_name TEXT NOT NULL,
  descr TEXT NOT NULL,
  FOREIGN KEY (traittype_id) REFERENCES traittype(traittype_id)
);
"""
    c = conn.cursor()
    c.execute(table)
    c.execute(table_two)
    # insert data into traittype
    inp_data = []
    for i in data['traittype']:
        inp_data.append((i, ))  # trailing comma necessary for one-item tuple
    stmt = "INSERT INTO traittype (name) VALUES (?)"
    try:
        conn.executemany(stmt, inp_data)
    except:
        e = sys.exc_info()[0]
        print("Error creating traittype: {}".format(e))
        print(vars(e))
    else:
        conn.commit()
    # insert data into trait
    inp_data = []
    for i in data['trait']:
        inp_data.append(
            (i['descr'], i['name'],
             i['type']))  # trailing comma necessary for one-item tuple
    stmt = "INSERT INTO trait (descr, short_name, traittype_id) SELECT ?,?, traittype_id FROM traittype WHERE traittype.name=?"
    try:
        conn.executemany(stmt, inp_data)
    except sqlite3.Error as e:
        print("Error creating trait input: {}".format(e))
    except:
        e = sys.exc_info()[0]
        print("Error creating trait: {}".format(e))
        print(vars(e))
    else:
        conn.commit()


def do_size(data, conn):
    table = """
CREATE TABLE size (
  size_id INTEGER PRIMARY KEY,
  short_name TEXT NOT NULL UNIQUE,
  space_in_ft INTEGER NOT NULL,
  reach_tall_ft INTEGER NOT NULL,
  reach_long_ft INTEGER NOT NULL
);
   """

    c = conn.cursor()
    c.execute(table)

    inp_data = []
    for i in data:
        inp_data.append((i['name'], i['space_in_ft'], i['reach_tall_ft'],
                         i['reach_long_ft']))

    stmt = "INSERT INTO size (short_name, space_in_ft, reach_tall_ft, reach_long_ft) VALUES (?,?,?,?)"
    try:
        conn.executemany(stmt, inp_data)
    except:
        print("Error creating size")
    else:
        conn.commit()


def do_weaponcategory(data, conn):
    table = """
CREATE TABLE weaponcategory (
  weaponcategory_id INTEGER PRIMARY KEY,
  "name" TEXT NOT NULL UNIQUE
);
   """

    c = conn.cursor()
    c.execute(table)

    inp_data = []
    for i in data:
        inp_data.append((i, ))  # trailing comma necessary for one-item tuple

    stmt = "INSERT INTO weaponcategory(name) VALUES (?)"
    try:
        conn.executemany(stmt, inp_data)
    except:
        e = sys.exc_info()[0]
        print("Error creating weaponcategory: {}".format(e))
        print(vars(e))
    else:
        conn.commit()


def do_movement(data, conn):
    table = """
CREATE TABLE movement (
  movement_id INTEGER PRIMARY KEY,
  "name" TEXT UNIQUE NOT NULL
);
   """

    c = conn.cursor()
    c.execute(table)

    inp_data = []
    for i in data:
        inp_data.append((i, ))  # trailing comma necessary for one-item tuple

    stmt = "INSERT INTO movement(name) VALUES (?)"
    try:
        conn.executemany(stmt, inp_data)
    except:
        e = sys.exc_info()[0]
        print("Error creating movement: {}".format(e))
        print(vars(e))
    else:
        conn.commit()


def do_frequency(data, conn):
    table = """
CREATE TABLE frequency (
  freq_id INTEGER PRIMARY KEY,
  freq_descr TEXT NOT NULL UNIQUE
);
   """

    c = conn.cursor()
    c.execute(table)

    inp_data = []
    for i in data:
        inp_data.append((i, ))  # trailing comma necessary for one-item tuple

    stmt = "INSERT INTO frequency(freq_descr) VALUES (?)"
    try:
        conn.executemany(stmt, inp_data)
    except:
        e = sys.exc_info()[0]
        print("Error creating frequency: {}".format(e))
        print(vars(e))
    else:
        conn.commit()


def do_alignment(data, conn):
    # print(data)
    table = """
CREATE TABLE alignment (
  alignment_id INTEGER PRIMARY KEY,
  "name" TEXT UNIQUE NOT NULL, -- 'Lawful Good'
  abbr TEXT UNIQUE NOT NULL -- 'LG'
);
   """

    c = conn.cursor()
    c.execute(table)

    inp_data = []
    for i in data:
        inp_data.append((i['name'], i['abbr']))

    stmt = "INSERT INTO alignment(name, abbr) VALUES (?,?)"
    try:
        conn.executemany(stmt, inp_data)
    except:
        print("Error creating alignment")
    else:
        conn.commit()


def do_langrarity(data, conn):
    table = """
CREATE TABLE langrarity (
  rarity_id INTEGER PRIMARY KEY,
  rarity_name TEXT NOT NULL UNIQUE
);
   """

    c = conn.cursor()
    c.execute(table)

    inp_data = []
    for i in data:
        inp_data.append((i, ))  # trailing comma necessary for one-item tuple

    stmt = "INSERT INTO langrarity(rarity_name) VALUES (?)"
    try:
        conn.executemany(stmt, inp_data)
    except:
        e = sys.exc_info()[0]
        print("Error creating langrarity: {}".format(e))
        print(vars(e))
    else:
        conn.commit()


def do_actioncost(data, conn):
    table = """
CREATE TABLE actioncost (
  actioncost_id INTEGER PRIMARY KEY,
  name TEXT NOT NULL UNIQUE,
  abbr TEXT NOT NULL UNIQUE
);
   """

    c = conn.cursor()
    c.execute(table)

    inp_data = []
    for i in data:
        inp_data.append((i['name'], i['abbr']))

    stmt = "INSERT INTO actioncost(name, abbr) VALUES (?,?)"
    try:
        conn.executemany(stmt, inp_data)
    except:
        print("Error creating actioncost")
    else:
        conn.commit()


def do_abilityscore(data, conn):
    table = """
CREATE TABLE abilityscore (
   abilityscore_id INTEGER PRIMARY KEY,
   flag_rep INTEGER NOT NULL,
   short_name TEXT NOT NULL UNIQUE,
   long_name TEXT NOT NULL UNIQUE
);
   """

    c = conn.cursor()
    c.execute(table)

    inp_data = []
    for i in data:
        inp_data.append((i['flag_rep'], i['short_name'], i['long_name']))

    stmt = "INSERT INTO abilityscore (flag_rep, short_name, long_name) VALUES (?,?,?)"
    try:
        conn.executemany(stmt, inp_data)
    except:
        print("Error creating abilityscore")
    else:
        conn.commit()


def get_db_conn():
    ## Get database connection
    conn = sqlite3.connect(DBFILE)  # eventually hook this up to be the main db
    ## Set pragmas
    pragma1 = "PRAGMA synchronous=OFF;"
    pragma2 = "PRAGMA count_changes=OFF;"
    pragma3 = "PRAGMA journal_mode=MEMORY;"
    pragma4 = "PRAGMA temp_store=MEMORY;"
    pragma5 = "PRAGMA foreign_keys=ON;"
    conn.execute(pragma1)
    conn.execute(pragma2)
    conn.execute(pragma3)
    conn.execute(pragma4)
    conn.execute(pragma5)
    return conn


if __name__ == "__main__":
    main()
