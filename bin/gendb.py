import sys
# the append makes python look in the repo dir for other python modules
sys.path.append('..')
import yaml
import sqlite3
import os
import pprint
from lib.gendb.basics import *
from lib.gendb import utils
import pathlib


DBFILE = 'tmp.db'
DBOUTPUT_PATH = pathlib.Path().absolute().parent
DATA_PATH = pathlib.Path().absolute().parent / 'data'


def main():

    print("DB output is in path: {}".format(DBOUTPUT_PATH))
    print("Data is in path: {}".format(DATA_PATH))

    # CHANGE TO DIR WHERE DB FILE IS OUTPUT
    try:
        os.chdir(DBOUTPUT_PATH)
    except OSError as e:
        print("{}".format(e))

    # delete DBfile and run fresh
    try:
        os.remove(DBFILE)
    except OSError as e:
        print("No prior database file found to remove. Will create a new one. Error message: {}".format(e))

    # Get a DB conn
    try:
        os.chdir(DBOUTPUT_PATH)
    except OSError as e:
        print("{}".format(e))
    conn = utils.get_db_conn(DBFILE)
    pragma = "PRAGMA foreign_keys = ON;"
    c = conn.cursor()
    c.execute(pragma)

    # CHANGE DIRECTORY TO WHERE THE DATA CURRENTLY IS RELATIVE TO SCRIPT
    try:
        os.chdir(DATA_PATH)
    except OSError as e:
        print("{}".format(e))

    # Load in the yaml data
    with open('basics.yaml', encoding='utf-8') as yl:
        data = yaml.full_load(yl)
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
    with open('traits.yaml', encoding='utf-8') as yl:
        data = yaml.full_load(yl)
    do_traits(data, conn)  # does both trait types and traits

    # move on to sources
    with open('sources.yaml', encoding='utf-8') as yl:
        data = yaml.full_load(yl)
    do_sources(data, conn)
    do_source_entry_table(conn)

    # move on to senses
    with open('senses.yaml', encoding='utf-8') as yl:
        data = yaml.full_load(yl)
    do_senses(data, conn)

    # move on to skills
    with open('skills.yaml', encoding='utf-8') as yl:
        data = yaml.full_load(yl)
    do_skills(data, conn)

    # move on to damagecategory and damagetype
    with open('damage.yaml', encoding='utf-8') as yl:
        data = yaml.full_load(yl)
    do_damage(data, conn)

    # move on to conditions
    with open('conditions.yaml', encoding='utf-8') as yl:
        data = yaml.full_load(yl)
    do_conditions(data, conn)

    # move on to backgrounds
    with open('backgrounds.yaml', encoding='utf-8') as yl:
        data = yaml.full_load(yl)
    do_backgrounds(data, conn)

    # move on to bulks
    with open('bulks.yaml', encoding='utf-8') as yl:
        data = yaml.full_load(yl)
    do_bulks(data, conn)

    # move on to langs
    with open('langs.yaml', encoding='utf-8') as yl:
        data = yaml.full_load(yl)
    do_langs(data, conn)

    # move on to actions
    with open('actions.yaml', encoding='utf-8') as yl:
        data = yaml.full_load(yl)
    do_actions(data, conn)

    # move on to spells
    # TODO do spells once data is proofread
    with open('spells.yaml', encoding='utf-8') as yl:
        data = yaml.full_load(yl)
    do_spells(data, conn)

    # move on to requirements
    with open('requirements.yaml', encoding='utf-8') as yl:
        data = yaml.full_load(yl)
    do_requirements(data, conn)

    # move on to triggers
    with open('triggers.yaml', encoding='utf-8') as yl:
        data = yaml.full_load(yl)
    do_triggers(data, conn)

    # move on to armor
    with open('armor.yaml', encoding='utf-8') as yl:
        data = yaml.full_load(yl)
    do_armor(data, conn)

    # move on to ammo
    with open('ammunition.yaml', encoding='utf-8') as yl:
        data = yaml.full_load(yl)
    do_ammo(data, conn)

    with open('gear.yaml', encoding='utf-8') as yl:
        data = yaml.full_load(yl)
    do_gear(data, conn)

    with open('feats.yaml', encoding='utf-8') as yl:
        data = yaml.full_load(yl)
    do_feats(data, conn)

    with open('ancestriesheritages.yaml', encoding='utf-8') as yl:
        data = yaml.full_load(yl)
    do_ancestries(data, conn)

    # Must be called after feats are loaded
    with open('ancestriesheritages.yaml', encoding='utf-8') as yl:
        data = yaml.full_load(yl)
    do_heritages(data, conn)

def do_feats(data, conn):

    table = """
    CREATE TABLE feat (
      feat_id INTEGER PRIMARY KEY,
      actioncost_id INTEGER,
      descr TEXT NOT NULL,
      freq_id INTEGER,
      level INTEGER, -- TODO Make not null once issue 88 is resolved
      name TEXT NOT NULL UNIQUE,
      requirement_id INTEGER,
      trigger_id INTEGER,
      FOREIGN KEY (actioncost_id) REFERENCES actioncost(actioncost_id),
      FOREIGN KEY (freq_id) REFERENCES frequency(freq_id),
      FOREIGN KEY (requirement_id) REFERENCES requirement(requirement_id),
      FOREIGN KEY (trigger_id) REFERENCES trigger(trigger_id)
    );
    """
    c = conn.cursor()
    c.execute(table)

    table = """
CREATE TABLE sourceentry_feat (
  id INTEGER PRIMARY KEY,
  sourceentry_id INTEGER NOT NULL,
  feat_id INTEGER NOT NULL,
  UNIQUE (sourceentry_id, feat_id), -- prevent duplicates
  FOREIGN KEY (sourceentry_id) REFERENCES sourceentry(sourceentry_id),
  FOREIGN KEY (feat_id) REFERENCES feat(feat_id)
);
   """
    c = conn.cursor()
    c.execute(table)

    table = """
    CREATE TABLE trait_feat (
        id INTEGER PRIMARY KEY,
        trait_id INTEGER NOT NULL,
        feat_id INTEGER NOT NULL,
    UNIQUE(trait_id, feat_id),
    FOREIGN KEY (feat_id) REFERENCES feat(feat_id),
    FOREIGN KEY (trait_id) REFERENCES trait(trait_id)
    );
    """
    c.execute(table)

    table = """
    CREATE TABLE featprereq (
        featprereq_id INTEGER PRIMARY KEY,
        descr TEXT NOT NULL,
        parent_feat_id INTEGER NOT NULL,        -- THE FEAT THAT REQUIRES THE PREREQ
        is_prereq_feat_bool BOOL NOT NULL,      -- THIS TELLS YOU THAT THE PREREQ ITSELF IS A FEAT
        prereq_feat_id INTEGER,                 -- THIS IS THE PREREQ FEAT, NOT THE FEAT THAT REQUIRES THE PREREQ, if is_prereq_feat_bool == FALSE then this will also be null
        FOREIGN KEY (prereq_feat_id) REFERENCES feat(feat_id),
        FOREIGN KEY (parent_feat_id) REFERENCES feat(feat_id)
    );
    """
    c.execute(table)

    feat_result_list = []
    feats_no_levels = []
    for i in data['feat']:
        if i['actioncost'] == None:
            ac_id = None
        else:
            ac_id = get_actioncost_id_by_name(i['actioncost'], conn)
            # print("ac_id for {} is {}".format(i['actioncost'], ac_id))
        if i['frequency'] == None:
            f_id = None
        else:
            f_id = get_freq_id_by_descr(i['frequency'], conn)
            # print("f_id for {} is {}".format(i['frequency'], f_id))
        if i['requirement'] == None:
            r_id = None
        else:
            r_id = get_requirement_id_by_descr(i['requirement'], conn)
        if i['trigger'] == None:
            t_id = None
        else:
            t_id = get_trigger_id_by_descr(i['trigger'], conn)
        if 'level' not in i:
            resl = {'name': i['name'], 'source': i['source']}
            feats_no_levels.append(resl)
            i['level'] = None



        res = (ac_id, i['descr'], f_id, i['level'], i['name'], r_id, t_id)
        feat_result_list.append(res)

    insert_stmt = "INSERT INTO feat (actioncost_id, descr, freq_id, level, name, requirement_id, trigger_id) VALUES (?,?,?,?,?,?,?);"
    try:
        conn.executemany(insert_stmt, feat_result_list)
    except sqlite3.Error as e:
        print("Error creating feats: {}".format(e))
    except:
        print("Error creating feats something other than sqlite3 error")
    else:
        conn.commit()
    
    print("\n\nWARNING!\n\nThe following feats do not have level information and need to be manually checked!:\n")
    for i in feats_no_levels:
        print(i)

    # go through and do source entry linking

    for i in data['feat']:
        # print("\n\nDoing the skill: {}".format(i['name']))
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
        # print("srcs: {}".format(srcs))
        do_sourceentry_to_feats(srcs, conn)

    # do traits
    for i in data['feat']:
        traitlist = []
        if i['traits'] != None:
            for j in i['traits']:
                traitlist.append((i['name'], j))
            # print("traitlist is:\t{}".format(traitlist))

            stmt = """
            INSERT INTO trait_feat (feat_id, trait_id) VALUES (
                (SELECT feat_id FROM feat WHERE name=?), 
                (SELECT trait_id FROM trait WHERE short_name=?) 
                );
            """
            try:
                conn.executemany(stmt, traitlist)
            except sqlite3.Error as e:
                print("Error creating feat_trait: {}".format(e))
            except:
                print(
                    "Error creating feat_trait something other than sqlite3 error"
                )
            else:
                conn.commit()

    # do prereqs
    for i in data['feat']:
        # print("\nDoing prereq:\t{}".format(i['name']))
        if i['prereqs'] == None:
            # do nothing and start on next 'i'
            # print("Continuing prereqs, skipping:\t{}".format(i['name']))
            continue
        preqlist = []
        for j in i['prereqs']:
            descr = j['descr']
            pfeat = j['feat']
            if pfeat == None:
                is_feat_bool = False
            else:
                is_feat_bool = True
            res = (descr, i['name'], is_feat_bool, pfeat)
            preqlist.append(res)
        # print(preqlist)

        # now to do the insert
        istmt = """
        INSERT INTO featprereq (descr, parent_feat_id, is_prereq_feat_bool, prereq_feat_id)
        VALUES (
        ?,
        (SELECT feat_id FROM feat WHERE name=?),
        ?,
        (SELECT feat_id FROM feat WHERE name=?)
        )
        """
        try:
            conn.executemany(istmt, preqlist)
        except sqlite3.Error as e:
            print("Error creating featprereq {}".format(e))
        except:
            print(
                "Error creating featprereq something other than sqlite3 error"
            )
        else:
            conn.commit()

# TODO ugggh;;; this is soooo ugly and needs refactoring but it's working
def do_sourceentry_to_feats(srcs, conn):
    c = conn.cursor()

    stmt = "SELECT source.source_id, feat.feat_id FROM source, feat WHERE source.abbr=? AND feat.name=?"
    istmt = "INSERT INTO sourceentry (source_id, page_start, page_stop) VALUES (?,?,?)"
    for i in srcs:
        # print("i in srcs: {}".format(i))
        inp_data = (i[1], i[0])
        # print("inp data: {}".format(inp_data))
        for row in c.execute(stmt, inp_data):
            # print("source_id:{} skill_id:{}".format(row[0], row[1]))
            iinp_data = (row[0], i[2], i[3])
            # print("iinp data: {}".format(iinp_data))

            try:
                c.execute(istmt, iinp_data)
            except sqlite3.IntegrityError as e:
                if "UNIQUE" in str(e):
                    # we fully expect UNIQUE constraint to fail on some of these so it's fine
                    conn.commit()
                    # print("committed istmt")
                else:
                    # but we still want to know what's going on if there's some other error
                    print("Something went wrong with istmt: {}".format(e))
            except sqlite3.Error as e:
                print("Error inserting a sourceentry for skill: {}".format(e))
            else:
                conn.commit()
                # print("committed istmt")

            linkstmt = "INSERT INTO sourceentry_feat (sourceentry_id, feat_id) VALUES ((SELECT sourceentry_id from sourceentry WHERE source_id=? AND page_start=? AND page_stop=?), ?)"
            linkinp_data = (row[0], i[2], i[3], row[1])
            # print(linkinp_data)
            try:
                c.execute(linkstmt, linkinp_data)
            except sqlite3.IntegrityError as e:
                if "UNIQUE" in str(e):
                    # we fully expect UNIQUE constraint to fail on some of these so it's fine
                    conn.commit()
                    # print("committed linkstmt")
                    pass
                else:
                    # but we still want to know what's going on if there's some other error
                    print(e)
            except sqlite3.Error as e:
                print("Error inserting a sourceentry for feat: {}".format(e))
            else:
                # print("committed linkstmt")
                conn.commit()


def get_trigger_id_by_descr(t, conn):
    qstmt = "SELECT trigger_id FROM trigger WHERE descr=?;"
    try:
        c = conn.cursor()
        c.execute(qstmt, (t,))
    except sqlite3.Error as e:
        print("Error getting an trigger_id by name: {} Error: {}".format(t, e))
    except:
        print("Error getting an trigger_id_by_name something other than sqlite3 error")
    else:
        x = c.fetchone()
        if x == None:
            raise AssertionError('there was no trigger_id for given trigger name: {}\nYou should check to see if this trigger is in triggers.yaml and sometimes it is a straight apostrophe versus uni-code curly apostrophe.'.format(t))
        else:
            return x[0]

def get_requirement_id_by_descr(r, conn):
    qstmt = "SELECT requirement_id FROM requirement WHERE descr=?;"
    try:
        c = conn.cursor()
        c.execute(qstmt, (r,))
    except sqlite3.Error as e:
        print("Error getting an requirement_id by name: {} Error: {}".format(r, e))
    except:
        print("Error getting an requirement_id_by_name something other than sqlite3 error")
    else:
        x = c.fetchone()
        if x == None:
            raise AssertionError('there was no requirement_id for given requirement name: {}\nYou should check to see if this requirement is in requirements.yaml and sometimes it is a straight apostrophe versus uni-code curly apostrophe.'.format(r))
        else:
            return x[0]

def get_freq_id_by_descr(f, conn):
    qstmt = "SELECT freq_id FROM frequency WHERE freq_descr=?;"
    try:
        c = conn.cursor()
        c.execute(qstmt, (f,))
    except sqlite3.Error as e:
        print("Error getting an freq_id_id by name: {} Error: {}".format(f, e))
    except:
        print("Error getting an freq_id_id_by_name something other than sqlite3 error")
    else:
        x = c.fetchone()
        if x == None:
            raise AssertionError('there was no freq_id_id for given freq_id name: {}'.format(f))
        else:
            return x[0]

def get_actioncost_id_by_name(ac, conn):
    qstmt = "SELECT actioncost_id FROM actioncost WHERE name=?;"
    try:
        c = conn.cursor()
        c.execute(qstmt, (ac,))
    except sqlite3.Error as e:
        print("Error getting an actioncost_id by name: {} Error: {}".format(ac, e))
    except:
        print("Error getting an actioncost_id_by_name something other than sqlite3 error")
    else:
        x = c.fetchone()
        if x == None:
            raise AssertionError('there was no actioncost_id for given actioncost name: {}'.format(ac))
        else:
            return x[0]


def do_heritages(data, conn):
    table = """
    CREATE TABLE heritage (
        heritage_id INTEGER PRIMARY KEY,
        name TEXT NOT NULL UNIQUE,
        descr TEXT NOT NULL,
        ancestry_id INTEGER NOT NULL, -- many to one relationship
    FOREIGN KEY (ancestry_id) REFERENCES ancestries(ancestry_id)
    );
    """

    c = conn.cursor()
    c.execute(table)

    table = """
    CREATE TABLE heritage_feat (
      id INTEGER PRIMARY KEY,
      heritage_id INTEGER NOT NULL,
      feat_id INTEGER NOT NULL,
      FOREIGN KEY (heritage_id) REFERENCES heritage(heritage_id),
      FOREIGN KEY (feat_id) REFERENCES feat(feat_id)
    );
    """

    c = conn.cursor()
    c.execute(table)

    for i in data['ancestries']:
        #GET ID OF ANCESTRY
        stmt = "SELECT ancestry_id FROM ancestries WHERE name=?;"
        c.execute(stmt, (i['name'],))
        rowid = c.fetchone()
        #FOR EACH HERITAGE, INSERT INTO TABLE USING ANCESTRY ID
        for j in i['heritages']:
            # print("doing this heritage: {}".format(j['name']))
            stmt = "INSERT INTO heritage (name, descr, ancestry_id) VALUES (?,?,?);"
            try:
                c.execute(stmt, (j['name'], j['descr'], rowid[0]))
            except sqlite3.Error as e:
                    print("Error inserting a heritage: {}".format(e))
            except:
                    print("Error inserting a heritage other than sqlite3 error")
            else:
                conn.commit()

            if j['feat'] != None:
                # print("We have a feat that is not equal to none: {}".format(j['feat']))
                stmt = """INSERT INTO heritage_feat
                (heritage_id, feat_id)
                VALUES (
                  (SELECT heritage_id FROM heritage WHERE name=?),
                  (SELECT feat_id FROM feat WHERE name=?)
                );"""
                try:
                    c.execute(stmt, (j['name'],j['feat']))
                except sqlite3.Error as e:
                    print("Error linking a heritage to its feat: {}".format(e))
                except:
                    print("Error linking a heritage something other than sqlite3 error")
                else:
                    conn.commit()


def do_ancestries(data, conn):
    # create tables
    table = """
    CREATE TABLE ancestries (
        ancestry_id INTEGER PRIMARY KEY,
        name TEXT NOT NULL UNIQUE,
        flavor_text TEXT NOT NULL,
        hp INTEGER NOT NULL,
        size_id INTEGER NOT NULL,
        speed INTEGER NOT NULL,
        vision_id INTEGER,
    FOREIGN KEY (vision_id) REFERENCES senses(senses_id),
    FOREIGN KEY (size_id) REFERENCES size(size_id)
    );
    """
    c = conn.cursor()
    c.execute(table)

    table = """
    CREATE TABLE ancestries_boosts (
        id INTEGER PRIMARY KEY,
        ancestry_id INTEGER NOT NULL,
        abilityscore_id INTEGER NOT NULL,
    FOREIGN KEY (ancestry_id) REFERENCES ancestries(ancestry_id),
    FOREIGN KEY (abilityscore_id) REFERENCES abilityscore(abilityscore_id)
    );
    """
    c.execute(table)

    table = """
    CREATE TABLE ancestries_flaws (
        id INTEGER PRIMARY KEY,
        ancestry_id INTEGER NOT NULL,
        abilityscore_id INTEGER NOT NULL,
    FOREIGN KEY (ancestry_id) REFERENCES ancestries(ancestry_id),
    FOREIGN KEY (abilityscore_id) REFERENCES abilityscore(abilityscore_id)
    );
    """
    c.execute(table)

    table = """
    CREATE TABLE trait_ancestries (
        id INTEGER PRIMARY KEY,
        ancestry_id INTEGER NOT NULL,
        trait_id INTEGER NOT NULL,
    UNIQUE(ancestry_id, trait_id),
    FOREIGN KEY (ancestry_id) REFERENCES ancestries(ancestry_id),
    FOREIGN KEY (trait_id) REFERENCES trait(trait_id)
    );
    """
    c.execute(table)


    # insert basics into ancestries table
    inp_data = []
    for i in data['ancestries']:
        # Get the size_id
        sstmt = """
        SELECT size_id FROM size WHERE short_name=?;
        """
        sinp_data = (i['size'], )
        sres = c.execute(sstmt, sinp_data).fetchall()
        sid = sres[0][0]
        # print(sid)

        # Get the vision_id
        vstmt = """
        SELECT senses_id FROM senses WHERE name=?;
        """
        vinp_data = (i['senses'], )
        vres = c.execute(vstmt, vinp_data).fetchall()
        # print(vres)
        if len(vres) > 0:
            vid = vres[0][0]
        else:
            vid = None
        # print(vid)

        #print(i)
        inp_data.append(
            (i['name'], i['flavor_text'], i['hp'], sid, i['speed'], vid))

    stmt = "INSERT INTO ancestries(name, flavor_text, hp, size_id, speed, vision_id) VALUES (?,?,?,?,?,?)"
    try:
        conn.executemany(stmt, inp_data)
    except sqlite3.Error as e:
        print("Error creating ancestries: {}".format(e))
    except:
        print("Error creating ancestries something other than sqlite3 error")
    else:
        conn.commit()

    # do boosts
    for i in data['ancestries']:
        boostlist = []
        if i['boosts'] != None:
            for j in i['boosts']:
                boostlist.append((i['name'], j))
            # print("boostlist is:\t{}".format(boostlist))

            stmt = """
            INSERT INTO ancestries_boosts (ancestry_id, abilityscore_id) VALUES (
                (SELECT ancestry_id FROM ancestries WHERE name=?),
                (SELECT abilityscore_id FROM abilityscore WHERE short_name=?)
                );
            """
            try:
                conn.executemany(stmt, boostlist)
            except sqlite3.Error as e:
                print("Error creating ancestries_boosts: {}".format(e))
            except:
                print(
                    "Error creating ancestries_boosts something other than sqlite3 error"
                )
            else:
                conn.commit()

    # do flaws
    for i in data['ancestries']:
        flawlist = []
        if i['flaws'] != None:
            for j in i['flaws']:
                flawlist.append((i['name'], j))
            # print("flawlist is:\t{}".format(flawlist))

            stmt = """
            INSERT INTO ancestries_flaws (ancestry_id, abilityscore_id) VALUES (
                (SELECT ancestry_id FROM ancestries WHERE name=?), 
                (SELECT abilityscore_id FROM abilityscore WHERE short_name=?)
                );
            """
            try:
                conn.executemany(stmt, flawlist)
            except sqlite3.Error as e:
                print("Error creating ancestries_flaws: {}".format(e))
            except:
                print(
                    "Error creating ancestries_flaws something other than sqlite3 error"
                )
            else:
                conn.commit()

    # do traits
    for i in data['ancestries']:
        traitlist = []
        if i['traits'] != None:
            for j in i['traits']:
                traitlist.append((i['name'], j))
            # print("traitlist is:\t{}".format(traitlist))

            stmt = """
            INSERT INTO trait_ancestries (ancestry_id, trait_id) VALUES (
                (SELECT ancestry_id FROM ancestries WHERE name=?), 
                (SELECT trait_id FROM trait WHERE short_name=?) 
                );
            """
            try:
                conn.executemany(stmt, traitlist)
            except sqlite3.Error as e:
                print("Error creating trait_ancestries {}".format(e))
            except:
                print(
                    "Error creating trait_ancestries something other than sqlite3 error"
                )
            else:
                conn.commit()



def do_gear(data, conn):
    table = """
    CREATE TABLE gear(
        "gear_id" INTEGER PRIMARY KEY,
        "name" TEXT NOT NULL UNIQUE,
        "level" INTEGER,
        "price_gp" REAL,
        "bulk" REAL,
        "hands" INTEGER,
        "descr" TEXT
    );
    """
    c = conn.cursor()
    c.execute(table)
    table = """
    CREATE TABLE gear_traits(
        id INTEGER PRIMARY KEY,
        gear_id INTEGER NOT NULL,
        trait_id INTEGER NOT NULL,
    FOREIGN KEY (gear_id) REFERENCES gear(gear_id),
    FOREIGN KEY (trait_id) REFERENCES trait(trait_id)
    );
    """
    c.execute(table)
    table = """
    CREATE TABLE sourceentry_gear (
        id INTEGER PRIMARY KEY,
        sourceentry_id INTEGER NOT NULL,
        gear_id INTEGER NOT NULL,
    UNIQUE (sourceentry_id, gear_id), -- prevent duplicates
    FOREIGN KEY (sourceentry_id) REFERENCES sourceentry(sourceentry_id),
    FOREIGN KEY (gear_id) REFERENCES gear(gear_id)
    );
   """
    c.execute(table)

    # insert basics into gear table
    inp_data = []
    for i in data['gear']:
        # print(i)
        inp_data.append((i['bulk'], i['descr'], i['hands'], i['level'],
                         i['name'], i['price_gp']))

    stmt = "INSERT INTO gear(bulk, descr, hands, level, name, price_gp) VALUES (?,?,?,?,?,?)"
    try:
        conn.executemany(stmt, inp_data)
    except sqlite3.Error as e:
        print("Error creating gear: {}".format(e))
    except:
        print("Error creating gear something other than sqlite3 error")
    else:
        conn.commit()

    # link the traits to the gear_traits table
    traitslist = []
    for i in data['gear']:
        if i['traits'] == None:
            continue
        else:
            for j in i['traits']:
                traitslist.append((i['name'], j))
    # print(traitslist)
    stmt = """
    INSERT INTO gear_traits(gear_id, trait_id)
    VALUES (
    (SELECT gear_id FROM gear WHERE name=?),
    (SELECT trait_id FROM trait WHERE short_name=?)
    );
    """
    try:
        conn.executemany(stmt, traitslist)
    except sqlite3.Error as e:
        print("Error creating gear_traits data: {}".format(e))
    except:
        print(
            "Error creating gear_traits data something other than sqlite3 error"
        )
    else:
        conn.commit()

    # do the sourceentry linking
    for i in data['gear']:
        srcentrydata = util_srcentrydata(i)
        util_insert_into_sourceentry(srcentrydata, conn)
        link_sourceentry_gear(i['name'], srcentrydata, conn)


def link_sourceentry_gear(name, srcentrydata, conn):
    stmt = """
    INSERT INTO sourceentry_gear (sourceentry_id, gear_id)
    SELECT sourceentry_id, gear_id
        FROM sourceentry, gear
        WHERE sourceentry.source_id=(SELECT source_id FROM source WHERE abbr=?)
        AND sourceentry.page_start=?
        AND sourceentry.page_stop=?
        AND gear.name=?;
    """
    # print(srcentrydata)
    for i in srcentrydata:
        # print("i is:{}".format(i))
        d = (i[0], i[1], i[2], name)
        # print(d)
        try:
            conn.execute(stmt, d)
        except Exception as e:
            print("Error linking sourceentry to gear: {}".format(e))
        else:
            conn.commit()


def do_ammo(data, conn):
    table = """ 
    CREATE TABLE ammunition (
        ammunition_id INTEGER PRIMARY KEY,
        "name" TEXT NOT NULL UNIQUE,
        price_gp REAL,
        amount INTEGER,
        bulk REAL,
        descr TEXT
    );
    """
    c = conn.cursor()
    c.execute(table)

    table = """
    CREATE TABLE sourceentry_ammunition (
        id INTEGER PRIMARY KEY,
        sourceentry_id INTEGER NOT NULL,
        ammunition_id INTEGER NOT NULL,
    UNIQUE (sourceentry_id, ammunition_id), -- prevent duplicates
    FOREIGN KEY (sourceentry_id) REFERENCES sourceentry(sourceentry_id),
    FOREIGN KEY (ammunition_id) REFERENCES ammunition(ammunition_id)
    );
   """
    c.execute(table)

    # insert basics into ammunition table
    inp_data = []
    for i in data['ammunition']:
        # print(i)
        inp_data.append(
            (i['amount'], i['bulk'], i['descr'], i['name'], i['price_gp']))

    stmt = "INSERT INTO ammunition(amount, bulk, descr, name, price_gp) VALUES (?,?,?,?,?)"
    try:
        conn.executemany(stmt, inp_data)
    except sqlite3.Error as e:
        print("Error creating ammunition: {}".format(e))
    except:
        print("Error creating ammunition something other than sqlite3 error")
    else:
        conn.commit()

    for i in data['ammunition']:
        srcentrydata = util_srcentrydata(i)
        util_insert_into_sourceentry(srcentrydata, conn)
        link_sourceentry_ammunition(i['name'], srcentrydata, conn)


def util_srcentrydata(i):
    srcentrydata = []
    for j in i['source']:
        abbr = j['abbr']
        page_start = j['page_start']
        # Not all YAML entries have page_stop data
        if 'page_stop' in j:
            page_stop = j['page_stop']
        else:
            page_stop = page_start
        srcentrydata.append((abbr, page_start, page_stop))
    return srcentrydata


def link_sourceentry_ammunition(name, srcentrydata, conn):
    stmt = """
    INSERT INTO sourceentry_ammunition (sourceentry_id, ammunition_id)
    SELECT sourceentry_id, ammunition_id
        FROM sourceentry, ammunition
        WHERE sourceentry.source_id=(SELECT source_id FROM source WHERE abbr=?)
        AND sourceentry.page_start=?
        AND sourceentry.page_stop=?
        AND ammunition.name=?;
    """
    # print(srcentrydata)
    for i in srcentrydata:
        # print("i is:{}".format(i))
        d = (i[0], i[1], i[2], name)
        # print(d)
        try:
            conn.execute(stmt, d)
        except Exception as e:
            print("Error linking sourceentry to ammunition: {}".format(e))
        else:
            conn.commit()


def do_armor(data, conn):
    # Create the 3 tables
    table = """ 
    CREATE TABLE armorcategory (
        armor_category_id INTEGER PRIMARY KEY,
        name TEXT NOT NULL UNIQUE);
    """
    c = conn.cursor()
    c.execute(table)

    table = """
    CREATE TABLE armorgroup (
        grp_id INTEGER PRIMARY KEY,
        name TEXT NOT NULL UNIQUE,
        descr TEXT NOT NULL
    );
    """
    c.execute(table)

    table = """
    CREATE TABLE armor (
        armor_id INTEGER PRIMARY KEY,
        armor_category_id INTEGER NOT NULL,
        name TEXT NOT NULL,
        item_level INTEGER,
        price_text TEXT NOT NULL,
        price_gp FLOAT NOT NULL,
        ac_bonus INTEGER NOT NULL,
        dex_cap INTEGER,
        check_penalty INTEGER,
        speed_penalty INTEGER,
        strength INTEGER,
        bulk_id INTEGER NOT NULL,
        grp_id INTEGER,
        descr TEXT NOT NULL,
	FOREIGN KEY (bulk_id) REFERENCES bulk(bulk_id),
	FOREIGN KEY (grp_id) REFERENCES armorgroup(grp_id)
    );
    """
    c.execute(table)
    table = """
    CREATE TABLE trait_armor (
        id INTEGER PRIMARY KEY,
        trait_id INTEGER NOT NULL,
        armor_id INTEGER NOT NULL,
    FOREIGN KEY (trait_id) REFERENCES trait(trait_id),
    FOREIGN KEY (armor_id) REFERENCES armor(armor_id)
    );
    """
    c.execute(table)

    table = """
    CREATE TABLE sourceentry_armorgroup (
        id INTEGER PRIMARY KEY,
        sourceentry_id INTEGER NOT NULL,
        grp_id INTEGER NOT NULL,
    UNIQUE (sourceentry_id, grp_id), -- prevent duplicates
    FOREIGN KEY (sourceentry_id) REFERENCES sourceentry(sourceentry_id),
    FOREIGN KEY (grp_id) REFERENCES armorgroup(grp_id)
    );
   """
    c.execute(table)

    table = """
    CREATE TABLE sourceentry_armor (
        id INTEGER PRIMARY KEY,
        sourceentry_id INTEGER NOT NULL,
        armor_id INTEGER NOT NULL,
    UNIQUE (sourceentry_id, armor_id), -- prevent duplicates
    FOREIGN KEY (sourceentry_id) REFERENCES sourceentry(sourceentry_id),
    FOREIGN KEY (armor_id) REFERENCES armor(armor_id)
    );
   """
    c.execute(table)

    # insert basics into armorcategory table
    inp_data = []
    for i in data['armorcategory']:
        # print(i)
        inp_data.append((i, ))

    stmt = "INSERT INTO armorcategory(name) VALUES (?)"
    try:
        conn.executemany(stmt, inp_data)
    except sqlite3.Error as e:
        print("Error creating armorcategory: {}".format(e))
    except:
        print(
            "Error creating armorcategory something other than sqlite3 error")
    else:
        conn.commit()

    # insert basics into armorgroup table
    inp_data = []
    for i in data['armorgroup']:
        # print(i)
        inp_data.append((i['name'], i['descr']))

    stmt = "INSERT INTO armorgroup(name, descr) VALUES (?,?)"
    try:
        conn.executemany(stmt, inp_data)
    except sqlite3.Error as e:
        print("Error creating armorgroup: {}".format(e))
    except:
        print("Error creating armorgroup something other than sqlite3 error")
    else:
        conn.commit()

    # insert basics into armor table
    inp_data = []
    for i in data['armor']:
        # print(i)
        inp_data.append(
            (i['ac_bonus'], i['bulk'], i['category'], i['check_penalty'],
             i['dex_cap'], i['group'], i['level'], i['name'], i['price_gp'],
             i['price_text'], i['speed_penalty'], i['strength'], i['descr']))
    stmt = """
    INSERT INTO armor 
    (ac_bonus, bulk_id, armor_category_id, check_penalty, dex_cap, grp_id, item_level, name, price_gp, price_text, speed_penalty, strength, descr) 
    VALUES (?,(SELECT bulk_id FROM bulk WHERE short_name=?),(SELECT armor_category_id FROM armorcategory WHERE armorcategory.name=?),?,?,(SELECT grp_id from armorgroup where armorgroup.name=?),?,?,?,?,?,?,?);
    """
    try:
        conn.executemany(stmt, inp_data)
    except sqlite3.Error as e:
        print("Error creating armorbasiscs: {}".format(e))
    except:
        print("Error creating armorbasics something other than sqlite3 error")
    else:
        conn.commit()

    # traits for armor into table trait_armor
    # TODO refactor short_name to name in trait
    stmt = """
    INSERT INTO trait_armor (trait_id, armor_id) 
    VALUES ((SELECT trait_id FROM trait WHERE short_name=?),(SELECT armor_id FROM armor WHERE name=?));
    """
    inp_data = []
    for i in data['armor']:
        if i['traits'] != None:
            for j in i['traits']:
                inp_data.append((j, i['name']))
    try:
        conn.executemany(stmt, inp_data)
    except sqlite3.Error as e:
        print("Error creating trait_armor entries: {}".format(e))
    except:
        print(
            "Error creating trait_armor entries something other than sqlite3 error"
        )
    else:
        conn.commit()

    for i in data['armorgroup']:
        srcentrydata = util_srcentrydata(i)
        util_insert_into_sourceentry(srcentrydata, conn)
        # now link the source entries to this table
        # TODO
        link_sourceentry_armorgroup(i['name'], srcentrydata, conn)

    for i in data['armor']:
        srcentrydata = util_srcentrydata(i)
        util_insert_into_sourceentry(srcentrydata, conn)
        # now link the source entries to this table
        # TODO
        link_sourceentry_armor(i['name'], srcentrydata, conn)


def link_sourceentry_armorgroup(name, srcentrydata, conn):
    stmt = """
INSERT INTO sourceentry_armorgroup (sourceentry_id, grp_id)
    SELECT sourceentry_id, grp_id
    FROM sourceentry, armorgroup
    WHERE sourceentry.source_id=(SELECT source_id FROM source WHERE abbr=?)
    AND sourceentry.page_start=?
    AND sourceentry.page_stop=?
    AND armorgroup.name=?;
    """
    # print(srcentrydata)
    for i in srcentrydata:
        # print("i is:{}".format(i))
        d = (i[0], i[1], i[2], name)
        # print(d)
        try:
            conn.execute(stmt, d)
        except Exception as e:
            print("Error linking sourceentry to armorgroup: {}".format(e))
        else:
            conn.commit()


def link_sourceentry_armor(name, srcentrydata, conn):
    stmt = """
INSERT INTO sourceentry_armor (sourceentry_id, armor_id)
    SELECT sourceentry_id, armor_id
    FROM sourceentry, armor
    WHERE sourceentry.source_id=(SELECT source_id FROM source WHERE abbr=?)
    AND sourceentry.page_start=?
    AND sourceentry.page_stop=?
    AND armor.name=?;
    """
    # print(srcentrydata)
    for i in srcentrydata:
        # print("i is:{}".format(i))
        d = (i[0], i[1], i[2], name)
        # print(d)
        try:
            conn.execute(stmt, d)
        except Exception as e:
            print("Error linking sourceentry to armorgroup: {}".format(e))
        else:
            conn.commit()


def do_triggers(data, conn):
    table = """
CREATE TABLE trigger (
  trigger_id INTEGER PRIMARY KEY,
  descr TEXT NOT NULL UNIQUE
);
   """

    c = conn.cursor()
    c.execute(table)

    inp_data = []
    for i in data['trigger']:
        inp_data.append((i, ))

    stmt = "INSERT INTO trigger (descr) VALUES (?)"
    try:
        conn.executemany(stmt, inp_data)
    except Exception as e:
        print("Error creating trigger: {}".format(e))
    else:
        conn.commit()


def do_requirements(data, conn):
    table = """
CREATE TABLE requirement (
  requirement_id INTEGER PRIMARY KEY,
  descr TEXT NOT NULL UNIQUE
);
   """

    c = conn.cursor()
    c.execute(table)

    inp_data = []
    for i in data['requirement']:
        inp_data.append((i, ))

    stmt = "INSERT INTO requirement (descr) VALUES (?)"
    try:
        conn.executemany(stmt, inp_data)
    except Exception as e:
        print("Error creating requirement: {}".format(e))
    else:
        conn.commit()


def do_spells(data, conn):
    # load the helper info
    do_spelltype(data, conn)
    do_spellcomponent(data, conn)
    do_spelltradition(data, conn)
    do_spellschool(data, conn)
    # TODO once spells data complete, write a do_spellsthemselves(data, conn) function


def do_spelltype(data, conn):
    table = """
CREATE TABLE spelltype (
  spelltype_id INTEGER PRIMARY KEY,
  name TEXT NOT NULL UNIQUE
);
   """

    c = conn.cursor()
    c.execute(table)

    inp_data = []
    for i in data['spelltype']:
        inp_data.append((i, ))

    stmt = "INSERT INTO spelltype (name) VALUES (?)"
    try:
        conn.executemany(stmt, inp_data)
    except Exception as e:
        print("Error creating spelltype: {}".format(e))
    else:
        conn.commit()


def do_spellcomponent(data, conn):
    table = """
CREATE TABLE spellcomponent (
  spellcomponent_id INTEGER PRIMARY KEY,
  name TEXT NOT NULL UNIQUE
);
   """
    c = conn.cursor()
    c.execute(table)

    inp_data = []
    for i in data['spellcomponent']:
        inp_data.append((i, ))

    stmt = "INSERT INTO spellcomponent (name) VALUES (?)"
    try:
        conn.executemany(stmt, inp_data)
    except Exception as e:
        print("Error creating spellcomponent: {}".format(e))
    else:
        conn.commit()


def do_spelltradition(data, conn):
    table = """
CREATE TABLE spelltradition (
  spelltradition_id INTEGER PRIMARY KEY,
  name TEXT NOT NULL UNIQUE
);
   """
    c = conn.cursor()
    c.execute(table)

    inp_data = []
    for i in data['spelltradition']:
        inp_data.append((i, ))

    stmt = "INSERT INTO spelltradition (name) VALUES (?)"
    try:
        conn.executemany(stmt, inp_data)
    except Exception as e:
        print("Error creating spelltradition: {}".format(e))
    else:
        conn.commit()


def do_spellschool(data, conn):
    table = """
CREATE TABLE spellschool (
  spellschool_id INTEGER PRIMARY KEY,
  name TEXT NOT NULL UNIQUE,
  descr TEXT NOT NULL UNIQUE,
  sourceentry_id INTEGER,
  FOREIGN KEY (sourceentry_id) REFERENCES sourceentry(sourceentry_id)
);
   """
    c = conn.cursor()
    c.execute(table)

    # print(data)
    for i in data['spellschool']:
        # print(i)
        srcentrydata = util_srcentrydata(i)
        # need to insert sourceentry data first but check and make sure the
        # length is only one
        if len(srcentrydata) != 1:
            raise AssertionError(
                'length of srcentrydata should only be 1, no more no less, on spellschool'
            )
        # print("length of srcentrydata:{}\tsrcentrydata:{}".format(len(srcentrydata),srcentrydata))
        util_insert_into_sourceentry(srcentrydata, conn)

        stmt = """
INSERT INTO spellschool(name, descr, sourceentry_id)
VALUES (?,?,
        (SELECT sourceentry_id FROM sourceentry
        WHERE source_id=(SELECT source_id FROM source WHERE abbr=?)
        AND page_start=?
        AND page_stop=?
        )
       );
        """
        # print('executing on name:{}'.format(i['name']))
        try:
            conn.execute(stmt, (i['name'], i['descr'], srcentrydata[0][0],
                                srcentrydata[0][1], srcentrydata[0][2]))
        except Exception as e:
            print("Error creating spellschool: {}".format(e))
        else:
            conn.commit()


def do_actions(data, conn):
    do_action_categories(data, conn)
    do_action_main(data, conn)
    do_action_traits(data, conn)


def do_action_traits(data, conn):
    table = """
CREATE TABLE trait_action (
  id INTEGER PRIMARY KEY,
  trait_id INTEGER NOT NULL,
  action_id INTEGER NOT NULL,
  FOREIGN KEY (trait_id) REFERENCES trait(trait_id),
  FOREIGN KEY (action_id) REFERENCES action(action_id)
);
   """
    c = conn.cursor()
    c.execute(table)

    # print(data)
    for i in data['action']:
        if i['trait'] != None:
            for j in i['trait']:

                stmt = """
    INSERT INTO trait_action(action_id, trait_id)
            VALUES (
            (SELECT action_id FROM action WHERE name=?),
            (SELECT trait_id FROM trait WHERE short_name=?)
            );
                """
                # print('executing on trait_action:{}'.format(i['name']))
                try:
                    conn.execute(stmt, (i['name'], j))
                except Exception as e:
                    print("Error creating trait_action: {}".format(e))
                else:
                    conn.commit()


def do_action_main(data, conn):
    table = """
CREATE TABLE action (
  action_id INTEGER PRIMARY KEY,
  sourceentry_id INTEGER,
  actioncategory_id INTEGER NOT NULL,
  actioncost_id INTEGER,
  name TEXT NOT NULL UNIQUE,
  req TEXT,
  trigger TEXT,
  descr TEXT NOT NULL,
  FOREIGN KEY (actioncategory_id) REFERENCES actioncategory(actioncategory_id),
  FOREIGN KEY (actioncost_id) REFERENCES actioncost(actioncost_id),
  FOREIGN KEY (sourceentry_id) REFERENCES sourceentry(sourceentry_id)
);
   """
    c = conn.cursor()
    c.execute(table)

    # print(data)
    for i in data['action']:
        # print(i)
        srcentrydata = util_srcentrydata(i)
        # need to insert sourceentry data first but check and make sure the
        # length is only one
        if len(srcentrydata) != 1:
            raise AssertionError(
                'length of srcentrydata should only be 1, no more no less, on action'
            )
        # print("length of srcentrydata:{}\tsrcentrydata:{}".format(len(srcentrydata),srcentrydata))
        util_insert_into_sourceentry(srcentrydata, conn)

        stmt = """
INSERT INTO action(name, descr, req, trigger, actioncategory_id, actioncost_id, sourceentry_id)
VALUES (?,?,?,?,
        (SELECT actioncategory_id FROM actioncategory WHERE name=?),
        (SELECT actioncost_id from actioncost WHERE name=?),
        (SELECT sourceentry_id FROM sourceentry
            WHERE source_id=(SELECT source_id FROM source WHERE abbr=?)
            AND page_start=?
            AND page_stop=?
            )
       );
        """
        # print('executing on name:{}'.format(i['name']))
        try:
            conn.execute(
                stmt,
                (i['name'], i['descr'], i['req'], i['trigger'],
                 i['actioncategory'], i['actioncost_name'], srcentrydata[0][0],
                 srcentrydata[0][1], srcentrydata[0][2]))
        except Exception as e:
            print("Error creating action: {}".format(e))
        else:
            conn.commit()


def do_action_categories(data, conn):
    table = """
CREATE TABLE actioncategory (
  actioncategory_id INTEGER PRIMARY KEY,
  sourceentry_id INTEGER,
  name TEXT NOT NULL UNIQUE,
  descr TEXT NOT NULL UNIQUE,
  FOREIGN KEY (sourceentry_id) REFERENCES sourceentry(sourceentry_id)
);
   """
    c = conn.cursor()
    c.execute(table)

    # print(data)
    for i in data['actioncategory']:
        # print(i)
        srcentrydata = util_srcentrydata(i)
        # need to insert sourceentry data first but check and make sure the
        # length is only one
        if len(srcentrydata) != 1:
            raise AssertionError(
                'length of srcentrydata should only be 1, no more no less, on actioncategory'
            )
        # print("length of srcentrydata:{}\tsrcentrydata:{}".format(len(srcentrydata),srcentrydata))
        util_insert_into_sourceentry(srcentrydata, conn)

        stmt = """
INSERT INTO actioncategory(name, descr, sourceentry_id)
VALUES (?,?,
        (SELECT sourceentry_id FROM sourceentry
        WHERE source_id=(SELECT source_id FROM source WHERE abbr=?)
        AND page_start=?
        AND page_stop=?
        )
       );
        """
        # print('executing on name:{}'.format(i['name']))
        try:
            conn.execute(stmt, (i['name'], i['descr'], srcentrydata[0][0],
                                srcentrydata[0][1], srcentrydata[0][2]))
        except Exception as e:
            print("Error creating actioncategory: {}".format(e))
        else:
            conn.commit()


def do_langs(data, conn):
    table = """
CREATE TABLE lang (
  lang_id INTEGER PRIMARY KEY,
  name TEXT NOT NULL UNIQUE,
  speakers TEXT NOT NULL,
  rarity_id INTEGER NOT NULL,
  sourceentry_id INTEGER,
  FOREIGN KEY (rarity_id) REFERENCES langrarity(rarity_id),
  FOREIGN KEY (sourceentry_id) REFERENCES sourceentry(sourceentry_id)
);
   """
    c = conn.cursor()
    c.execute(table)

    # print(data)
    for i in data['language']:
        # print(i)
        srcentrydata = util_srcentrydata(i)
        # need to insert sourceentry data first but check and make sure the
        # length is only one
        if len(srcentrydata) != 1:
            raise AssertionError(
                'length of srcentrydata should only be 1, no more no less, on langs'
            )
        # print("length of srcentrydata:{}\tsrcentrydata:{}".format(len(srcentrydata),srcentrydata))
        util_insert_into_sourceentry(srcentrydata, conn)

        stmt = """
INSERT INTO lang(name, speakers, rarity_id, sourceentry_id)
VALUES (?,?,
        (SELECT rarity_id FROM langrarity WHERE rarity_name=?),
        (SELECT sourceentry_id FROM sourceentry
        WHERE source_id=(SELECT source_id FROM source WHERE abbr=?)
        AND page_start=?
        AND page_stop=?
        )
       );
        """
        # print('executing on name:{}'.format(i['name']))
        try:
            conn.execute(
                stmt,
                (i['name'], i['speakers'], i['rarity'], srcentrydata[0][0],
                 srcentrydata[0][1], srcentrydata[0][2]))
        except Exception as e:
            print("Error creating lang: {}".format(e))
        else:
            conn.commit()


def do_bulks(data, conn):
    table = """
CREATE TABLE bulk (
	bulk_id INTEGER PRIMARY KEY,
    sourceentry_id INTEGER,
	short_name TEXT NOT NULL,
	long_name TEXT NOT NULL,
	numerical FLOAT NOT NULL,
  FOREIGN KEY (sourceentry_id) REFERENCES sourceentry(sourceentry_id)
);
   """
    c = conn.cursor()
    c.execute(table)

    # print(data)
    for i in data['bulk']:
        # print(i)
        srcentrydata = util_srcentrydata(i)
        # need to insert sourceentry data first but check and make sure the
        # length is only one on bulks
        if len(srcentrydata) != 1:
            raise AssertionError(
                'length of srcentrydata should only be 1, no more no less, on bulks'
            )
        # print("length of srcentrydata:{}\tsrcentrydata:{}".format(len(srcentrydata),srcentrydata))
        util_insert_into_sourceentry(srcentrydata, conn)

        stmt = """
INSERT INTO bulk(short_name, long_name, numerical, sourceentry_id)
VALUES (?,?,?,
        (SELECT sourceentry_id FROM sourceentry
        WHERE source_id=(SELECT source_id FROM source WHERE abbr=?)
        AND page_start=?
        AND page_stop=?
        )
       );
        """
        try:
            conn.execute(
                stmt,
                (i['abbr'], i['name'], i['numerical'], srcentrydata[0][0],
                 srcentrydata[0][1], srcentrydata[0][2]))
        except Exception as e:
            print("Error creating bulk: {}".format(e))
        else:
            conn.commit()


def do_backgrounds(data, conn):
    # MAKE THE 2 TABLES
    table = """
CREATE TABLE background (
  background_id INTEGER PRIMARY KEY,
  "name" TEXT NOT NULL UNIQUE,
  descr TEXT NOT NULL,
  is_comty_use BOOLEAN NOT NULL, -- false = no community use policy required
  is_specific_to_adv BOOLEAN NOT NULL -- means the background is specific to its adventure
);
   """
    c = conn.cursor()
    c.execute(table)
    table = """
CREATE TABLE sourceentry_background (
  id INTEGER PRIMARY KEY,
  sourceentry_id INTEGER NOT NULL,
  background_id INTEGER NOT NULL,
  UNIQUE (sourceentry_id, background_id), -- prevent duplicates
  FOREIGN KEY (sourceentry_id) REFERENCES sourceentry(sourceentry_id),
  FOREIGN KEY (background_id) REFERENCES background(background_id)
);
   """
    c.execute(table)

    # print(data)
    for i in data['background']:
        srcentrydata = util_srcentrydata(i)
        stmt = "INSERT INTO background(name, descr, is_comty_use, is_specific_to_adv) VALUES (?,?,?,?)"
        try:
            conn.execute(stmt, (i['name'], i['descr'], i['is_comty_use'],
                                i['is_specific_to_adv']))
        except:
            print("Error creating background")
        else:
            conn.commit()
        # print("backgrounds, about to call util insert se: {}".format(srcentrydata))
        util_insert_into_sourceentry(srcentrydata, conn)
        # now link the source entries to this table
        # TODO
        link_sourceentry_backgrounds(i['name'], srcentrydata, conn)


def link_sourceentry_backgrounds(name, srcentrydata, conn):
    stmt = """
INSERT INTO sourceentry_background (sourceentry_id, background_id)
    SELECT sourceentry_id, background_id
    FROM sourceentry, background
    WHERE sourceentry.source_id=(SELECT source_id FROM source WHERE abbr=?)
    AND sourceentry.page_start=?
    AND sourceentry.page_stop=?
    AND background.name=?;
    """
    # print(srcentrydata)
    for i in srcentrydata:
        # print("i is:{}".format(i))
        d = (i[0], i[1], i[2], name)
        # print(d)
        try:
            conn.execute(stmt, d)
        except Exception as e:
            print("Error linking sourceentry to backgrounds: {}".format(e))
        else:
            conn.commit()


def do_conditions(data, conn):
    # MAKE THE 2 TABLES
    table = """
CREATE TABLE condition (
	condition_id INTEGER PRIMARY KEY,
	name TEXT UNIQUE NOT NULL,
	short_descr TEXT NOT NULL,
	descr TEXT NOT NULL
);
   """
    c = conn.cursor()
    c.execute(table)
    table = """
CREATE TABLE sourceentry_condition (
  id INTEGER PRIMARY KEY,
  sourceentry_id INTEGER NOT NULL,
  condition_id INTEGER NOT NULL,
  UNIQUE (sourceentry_id, condition_id), -- prevent duplicates
  FOREIGN KEY (sourceentry_id) REFERENCES sourceentry(sourceentry_id),
  FOREIGN KEY (condition_id) REFERENCES condition(condition_id)
);
   """
    c.execute(table)

    for i in data['condition']:
        srcentrydata = util_srcentrydata(i)
        stmt = "INSERT INTO condition(name, short_descr, descr) VALUES (?,?,?)"
        try:
            conn.execute(stmt, (i['name'], i['short_descr'], i['descr']))
        except:
            print("Error creating condition")
        else:
            conn.commit()
        # print("conditions, about to call util insert se: {}".format(srcentrydata))
        util_insert_into_sourceentry(srcentrydata, conn)
        # now link the source entries to this table
        link_sourceentry_conditions(i['name'], srcentrydata, conn)


def link_sourceentry_conditions(name, srcentrydata, conn):
    stmt = """
INSERT INTO sourceentry_condition (sourceentry_id, condition_id)
    SELECT sourceentry_id, condition_id
    FROM sourceentry, condition
    WHERE sourceentry.source_id=(SELECT source_id FROM source WHERE abbr=?)
    AND sourceentry.page_start=?
    AND sourceentry.page_stop=?
    AND condition.name=?;
    """
    # print(srcentrydata)
    for i in srcentrydata:
        # print("i is:{}".format(i))
        d = (i[0], i[1], i[2], name)
        # print(d)
        try:
            conn.execute(stmt, d)
        except Exception as e:
            print("Error linking sourceentry to conditions: {}".format(e))
        else:
            conn.commit()


def do_damage(data, conn):
    # make the four tables
    do_damage_sub_tables(data, conn)

    # NOW DO THE DAMAGECATEGORY stuff

    for i in data['damagecategory']:
        srcentrydata = util_srcentrydata(i)
        stmt = "INSERT INTO damagecategory(name, descr) VALUES (?,?)"
        try:
            conn.execute(stmt, (i['name'], i['descr']))
        except:
            print("Error creating damagecategory")
        else:
            conn.commit()
        # now insert the specific damage category's source entries
        util_insert_into_sourceentry(srcentrydata, conn)
        # now link the source entries to the damage categories
        link_sourceentry_damagecategory(i['name'], srcentrydata, conn)

    # NOW DO THE DAMAGETYPE stuff

    for i in data['damagetype']:
        for j in i['source']:
            srcentrydata = util_srcentrydata(i)
        stmt = """
INSERT INTO damagetype(name, abbr, damagecategory_id)
        VALUES (?,?,(
        SELECT damagecategory_id FROM damagecategory WHERE name=?
        ))"""
        d = (i['name'], i['abbr'], i['damagecategory'])
        # print(d)
        try:
            conn.execute(stmt, d)
        except Exception as e:
            print("Error creating damagetype: {}".format(e))
        else:
            conn.commit()
        # now insert the specific damage category's source entries
        util_insert_into_sourceentry(srcentrydata, conn)
        # now link the source entries to the damage types
        link_sourceentry_damagetype(i['name'], srcentrydata, conn)


def link_sourceentry_damagecategory(name, srcentrydata, conn):
    stmt = """
INSERT INTO sourceentry_damagecategory (sourceentry_id, damagecategory_id)
    SELECT sourceentry_id, damagecategory_id
    FROM sourceentry, damagecategory
    WHERE sourceentry.source_id=(SELECT source_id FROM source WHERE abbr=?)
    AND sourceentry.page_start=?
    AND sourceentry.page_stop=?
    AND damagecategory.name=?;
    """
    # print(srcentrydata)
    for i in srcentrydata:
        # print("i is:{}".format(i))
        d = (i[0], i[1], i[2], name)
        # print(d)
        try:
            conn.execute(stmt, d)
        except Exception as e:
            print("Error linking sourceentry to damagecategory: {}".format(e))
        else:
            conn.commit()


def link_sourceentry_damagetype(name, srcentrydata, conn):
    stmt = """
INSERT INTO sourceentry_damagetype (sourceentry_id, damagetype_id)
    SELECT sourceentry_id, damagetype_id
    FROM sourceentry, damagetype
    WHERE sourceentry.source_id=(SELECT source_id FROM source WHERE abbr=?)
    AND sourceentry.page_start=?
    AND sourceentry.page_stop=?
    AND damagetype.name=?;
    """
    # print(srcentrydata)
    for i in srcentrydata:
        # print("i is:{}".format(i))
        d = (i[0], i[1], i[2], name)
        # print(d)
        try:
            conn.execute(stmt, d)
        except Exception as e:
            print("Error linking sourceentry to damagetype: {}".format(e))
        else:
            conn.commit()
    pass


def util_insert_into_sourceentry(data, conn):
    # print("srcentrydata: {}".format(data))
    stmt = "INSERT INTO sourceentry (source_id, page_start, page_stop) VALUES ((SELECT source_id FROM source WHERE abbr=?),?,?)"
    for i in data:
        try:
            conn.execute(stmt, i)
        except sqlite3.IntegrityError as e:
            if "UNIQUE" in str(e):
                # we fully expect UNIQUE constraint to fail on some of these so it's fine
                conn.commit()
                # print("committed linkstmt")
            else:
                print("sqlite3 error: {}".format(e))
        except sqlite3.Error as e:
            print("sqlite3 error: {}".format(e))
        except Error as e:
            print("Error inserting sourceentry: {}".format(e))
        else:
            conn.commit()


def do_damage_sub_tables(data, conn):
    table = """
CREATE TABLE damagecategory (
  damagecategory_id INTEGER PRIMARY KEY,
  "name" TEXT NOT NULL UNIQUE,
  descr TEXT
);
   """
    c = conn.cursor()
    c.execute(table)

    table = """
CREATE TABLE damagetype (
  damagetype_id INTEGER PRIMARY KEY,
  damagecategory_id INTEGER NOT NULL,
  "abbr" TEXT,
  "name" TEXT NOT NULL UNIQUE,
  FOREIGN KEY (damagecategory_id) REFERENCES damagecategory(damagecategory_id)
);
   """
    c.execute(table)

    table = """
CREATE TABLE sourceentry_damagetype (
  id INTEGER PRIMARY KEY,
  sourceentry_id INTEGER NOT NULL,
  damagetype_id INTEGER NOT NULL,
  UNIQUE (sourceentry_id, damagetype_id), -- prevent duplicates
  FOREIGN KEY (sourceentry_id) REFERENCES sourceentry(sourceentry_id),
  FOREIGN KEY (damagetype_id) REFERENCES damagetype(damagetype_id)
);
   """
    c.execute(table)

    table = """
CREATE TABLE sourceentry_damagecategory (
  id INTEGER PRIMARY KEY,
  sourceentry_id INTEGER NOT NULL,
  damagecategory_id INTEGER NOT NULL,
  UNIQUE (sourceentry_id, damagecategory_id), -- prevent duplicates
  FOREIGN KEY (sourceentry_id) REFERENCES sourceentry(sourceentry_id),
  FOREIGN KEY (damagecategory_id) REFERENCES damagecategory(damagecategory_id)
);
   """
    c.execute(table)


def do_senses(data, conn):

    table = """
    CREATE TABLE senses (
        senses_id INTEGER PRIMARY KEY,
        name TEXT NOT NULL UNIQUE,
        descr TEXT
    );
    """
    c = conn.cursor()
    c.execute(table)

    # make sourceentry many-to-many table
    table = """
CREATE TABLE sourceentry_senses (
  id INTEGER PRIMARY KEY,
  sourceentry_id INTEGER NOT NULL,
  senses_id INTEGER NOT NULL,
  UNIQUE (sourceentry_id, senses_id), -- prevent duplicates
  FOREIGN KEY (sourceentry_id) REFERENCES sourceentry(sourceentry_id),
  FOREIGN KEY (senses_id) REFERENCES senses(senses_id)
);
   """
    c = conn.cursor()
    c.execute(table)

    # insert basics into senses table
    inp_data = []
    for i in data['senses']:
        # print(i)
        inp_data.append((i['name'], i['descr']))

    stmt = "INSERT INTO senses(name, descr) VALUES (?,?)"
    try:
        conn.executemany(stmt, inp_data)
    except sqlite3.Error as e:
        print("Error creating senses: {}".format(e))
    except:
        print("Error creating senses something other than sqlite3 error")
    else:
        conn.commit()

    # go through and do source entry linking

    for i in data['senses']:
        # print("\n\nDoing the skill: {}".format(i['name']))
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
        # print("srcs: {}".format(srcs))
        do_sourceentry_to_senses(srcs, conn)


# TODO ugggh;;; this is soooo ugly and needs refactoring but it's working
def do_sourceentry_to_senses(srcs, conn):
    c = conn.cursor()

    stmt = "SELECT source.source_id, senses.senses_id FROM source, senses WHERE source.abbr=? AND senses.name=?"
    istmt = "INSERT INTO sourceentry (source_id, page_start, page_stop) VALUES (?,?,?)"
    for i in srcs:
        # print("i in srcs: {}".format(i))
        inp_data = (i[1], i[0])
        # print("inp data: {}".format(inp_data))
        for row in c.execute(stmt, inp_data):
            # print("source_id:{} skill_id:{}".format(row[0], row[1]))
            iinp_data = (row[0], i[2], i[3])
            # print("iinp data: {}".format(iinp_data))

            try:
                c.execute(istmt, iinp_data)
            except sqlite3.IntegrityError as e:
                if "UNIQUE" in str(e):
                    # we fully expect UNIQUE constraint to fail on some of these so it's fine
                    conn.commit()
                    # print("committed istmt")
                else:
                    # but we still want to know what's going on if there's some other error
                    print("Something went wrong with istmt: {}".format(e))
            except sqlite3.Error as e:
                print("Error inserting a sourceentry for senses: {}".format(e))
            else:
                conn.commit()
                # print("committed istmt")

            linkstmt = "INSERT INTO sourceentry_senses (sourceentry_id, senses_id) VALUES ((SELECT sourceentry_id from sourceentry WHERE source_id=? AND page_start=? AND page_stop=?), ?)"
            linkinp_data = (row[0], i[2], i[3], row[1])
            # print(linkinp_data)
            try:
                c.execute(linkstmt, linkinp_data)
            except sqlite3.IntegrityError as e:
                if "UNIQUE" in str(e):
                    # we fully expect UNIQUE constraint to fail on some of these so it's fine
                    conn.commit()
                    # print("committed linkstmt")
                    pass
                else:
                    # but we still want to know what's going on if there's some other error
                    print(e)
            except sqlite3.Error as e:
                print("Error inserting a sourceentry for senses: {}".format(e))
            else:
                # print("committed linkstmt")
                conn.commit()


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
        # print("\n\nDoing the skill: {}".format(i['name']))
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
        # print("srcs: {}".format(srcs))
        do_sourceentry_to_skill(srcs, conn)


# TODO ugggh;;; this is soooo ugly and needs refactoring but it's working
def do_sourceentry_to_skill(srcs, conn):
    c = conn.cursor()

    stmt = "SELECT source.source_id, skill.skill_id FROM source, skill WHERE source.abbr=? AND skill.name=?"
    istmt = "INSERT INTO sourceentry (source_id, page_start, page_stop) VALUES (?,?,?)"
    for i in srcs:
        # print("i in srcs: {}".format(i))
        inp_data = (i[1], i[0])
        # print("inp data: {}".format(inp_data))
        for row in c.execute(stmt, inp_data):
            # print("source_id:{} skill_id:{}".format(row[0], row[1]))
            iinp_data = (row[0], i[2], i[3])
            # print("iinp data: {}".format(iinp_data))

            try:
                c.execute(istmt, iinp_data)
            except sqlite3.IntegrityError as e:
                if "UNIQUE" in str(e):
                    # we fully expect UNIQUE constraint to fail on some of these so it's fine
                    conn.commit()
                    # print("committed istmt")
                else:
                    # but we still want to know what's going on if there's some other error
                    print("Something went wrong with istmt: {}".format(e))
            except sqlite3.Error as e:
                print("Error inserting a sourceentry for skill: {}".format(e))
            else:
                conn.commit()
                # print("committed istmt")

            linkstmt = "INSERT INTO sourceentry_skill (sourceentry_id, skill_id) VALUES ((SELECT sourceentry_id from sourceentry WHERE source_id=? AND page_start=? AND page_stop=?), ?)"
            linkinp_data = (row[0], i[2], i[3], row[1])
            # print(linkinp_data)
            try:
                c.execute(linkstmt, linkinp_data)
            except sqlite3.IntegrityError as e:
                if "UNIQUE" in str(e):
                    # we fully expect UNIQUE constraint to fail on some of these so it's fine
                    conn.commit()
                    # print("committed linkstmt")
                    pass
                else:
                    # but we still want to know what's going on if there's some other error
                    print(e)
            except sqlite3.Error as e:
                print("Error inserting a sourceentry for skill: {}".format(e))
            else:
                # print("committed linkstmt")
                conn.commit()


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


if __name__ == "__main__":
    main()
