import sys

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