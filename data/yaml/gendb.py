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

    # move on to senses
    with open('senses.yaml') as yl:
        data = yaml.full_load(yl)
    do_senses(data, conn)

    # move on to skills
    with open('skills.yaml') as yl:
        data = yaml.full_load(yl)
    do_skills(data, conn)

    # move on to damagecategory and damagetype
    with open('damage.yaml') as yl:
        data = yaml.full_load(yl)
    do_damage(data, conn)

    # move on to conditions
    with open('conditions.yaml') as yl:
        data = yaml.full_load(yl)
    do_conditions(data, conn)

    # move on to backgrounds
    with open('backgrounds.yaml') as yl:
        data = yaml.full_load(yl)
    do_backgrounds(data, conn)

    # move on to bulks
    with open('bulks.yaml') as yl:
        data = yaml.full_load(yl)
    do_bulks(data, conn)

    # move on to langs
    with open('langs.yaml') as yl:
        data = yaml.full_load(yl)
    do_langs(data, conn)

    # move on to actions
    with open('actions.yaml') as yl:
        data = yaml.full_load(yl)
    do_actions(data, conn)

    # move on to spells
    # TODO do spells once data is proofread
    with open('spells.yaml') as yl:
        data = yaml.full_load(yl)
    do_spells(data, conn)

    # move on to requirements
    with open('requirements.yaml') as yl:
        data = yaml.full_load(yl)
    do_requirements(data, conn)

    # move on to triggers
    with open('triggers.yaml') as yl:
        data = yaml.full_load(yl)
    do_triggers(data, conn)

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
            srcentrydata = []
            abbr = j['abbr']
            page_start = j['page_start']
            # Not all YAML entries have page_stop data
            if 'page_stop' in j:
                page_stop = j['page_stop']
            else:
                page_stop = page_start
            srcentrydata.append((abbr, page_start, page_stop))
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
        print(i)
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
