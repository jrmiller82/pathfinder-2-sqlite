import json
import sqlite3

def main():
    # load json into python
    print("loading json")
    ## read file into memory
    with open('spells.json') as f:
        # raw_data = f.read()
        data = json.load(f)
    print("Imported {} spells.".format(len(data)))
    # alphabetize spells into a list
    sorted_names = []
    for i in data:
        sorted_names.append(i['name'])
    sorted_names.sort()
    # print(sorted_names)

    # get list of dicts in order
    sorted_dicts = [] # sorted by ['name'] alphabetically
    for i in sorted_names:
        for x in data:
            # yes, I know this is double nested and not that efficient; don't
            # care yet, it's not that many items
            if x['name'] == i:
                sorted_dicts.append(x)

    # NOW we can go alphabetically spell by spell

    ## Get database connection
    conn = sqlite3.connect('../../pf2.db') 

    # load in ids for traits from traits table so we only call this once
    # instead of every spell
    stmt = "SELECT trait_id, short_name FROM traits"
    c = conn.cursor()
    c.execute(stmt)
    traits = c.fetchall()
    # print(traits)

    # load in ids for spelltypes from spelltypes table so we only call this once
    # instead of every spell
    stmt = "SELECT spelltypes_id, name FROM spelltypes"
    c = conn.cursor()
    c.execute(stmt)
    stypes = c.fetchall()

    # TODO FIX THIS FOR SPELL COMPONENTS
    # CREATE TABLE spellcomponents (
    #   spellcomponents_id INTEGER PRIMARY KEY,
    #   name TEXT NOT NULL UNIQUE
    # );

    # load in ids for spelltypes from spelltypes table so we only call this once
    # instead of every spell
    stmt = "SELECT spellcomponents_id, name FROM spellcomponents"
    c = conn.cursor()
    c.execute(stmt)
    ctypes = c.fetchall()

    # List the various triggers and see if there are any duplicates
    # THERE ARE NOT IN THE CRB SO NOT BOTHERING WITH SEPARATE TRIGGERS TABLE YET
    ### trigs = []
    ### for i in sorted_dicts:
    ###     if 'trigger' in i:
    ###         trigs.append(i['trigger'])
    ### print(sorted(trigs))
    ### print(len(trigs))
    ### print(len(set(trigs)))

    # List the various targets and see if there are any duplicates
    ## YES, there are MANY duplicates, so we need a separate targets table
    targs = []
    for i in sorted_dicts:
        if 'targets' in i:
            targs.append(i['targets'])
    dedup_targs = set(targs)
    sorted_targs = sorted(dedup_targs)
    inp_targs = []
    id = 0
    for i in sorted_targs:
        id += 1
        inp_targs.append((id,i))
    stmt = "INSERT INTO spelltargets (spelltargets_id, name) VALUES (?,?)"
    try:
        conn.executemany(stmt,inp_targs)
    except:
        print("Error creating targets")
    else:
        conn.commit()

    # load in ids for targets so just doing this once
    stmt = "SELECT spelltargets_id, name FROM spelltargets"
    c = conn.cursor()
    c.execute(stmt)
    ttypes = c.fetchall()



    # print(sorted(targs))
    # print(len(targs))
    # print(len(set(targs)))


    id = 0
    for i in sorted_dicts:
        id += 1
        do_basic_sql(i, id, conn)
        do_range_numbers(i,id,conn)
        do_sources_pages(i,id,conn)
        do_spell_traits(i,id,conn,traits)
        do_spell_types(i,id,conn,stypes)
        do_spell_components(i,id,conn,ctypes)
        do_spell_targets(i,id,conn,ttypes)
        # TODO spell targets

def do_spell_components(i,id,conn,ctypes):
    res = None
    for j in ctypes:
        for k in i['components']:
            if k.capitalize() == j[1]:
                res = j[0]

                inp = (res, id)

                stmt = "INSERT INTO spells_spellcomponents (spells_id, spellcomponents_id) VALUES (?,?)"

                try:
                    conn.execute(stmt, inp)
                except:
                    print("Error inserting spell components")
                else:
                    conn.commit()

def do_spell_targets(i,id,conn,ttypes):
    if 'targets' not in i:
        return
    res = 0
    for j in ttypes:
        if i['targets'] == j[1]:
            res = j[0]
    # print(id , res)

    inp = (res, id)

    stmt = "UPDATE spells SET spelltargets_id=? WHERE spells_id=?"

    try:
        conn.execute(stmt, inp)
    except:
        print("Error updating spelltargets_id")
    else:
        conn.commit()

def do_spell_types(i,id,conn,stypes):
    res = 0
    for j in stypes:
        if i['type'] == j[1]:
            res = j[0]
    # print(id , res)

    inp = (res, id)

    stmt = "UPDATE spells SET spelltypes_id=? WHERE spells_id=?"

    try:
        conn.execute(stmt, inp)
    except:
        print("Error updating spell types")
    else:
        conn.commit()

def do_spell_traits(i, id, conn, traits):

    # get list of traits from the json and capitalize first letter
    traits_json = []
    for item in i['traits']:
        traits_json.append(item.capitalize())

    trait_ids =[]
    for j in traits_json:
        for k in traits:
            if j == k[1]:
                trait_ids.append(k[0])
    # print(trait_ids)

    inp = []
    for j in trait_ids:
        inp.append((id,j))
    # print(inp)

    # insert into sql
    stmt = "INSERT OR REPLACE INTO spells_traits (spells_id, traits_id) VALUES (?,?)"
    try:
        conn.executemany(stmt, inp)
    except:
        print("Error updating traits")
    else:
        conn.commit()



def do_sources_pages(i, id, conn):
    if 'source' not in i:
        return

    res = ''
    source_id = 0
    # Do Core Rulebook branch
    if "Core Rulebook" in i['source']:
        res = i['source'].replace('Core Rulebook pg.','').strip()
        source_id = 1

    stmt = "UPDATE spells SET sources_id=?, sources_pages=? WHERE spells_id=?"
    inp = (source_id, res, id)

    try:
        conn.execute(stmt, inp)
    except:
        print("Error updating sources")
    else:
        conn.commit()




def do_range_numbers(i, id, conn):
    # no need to do range 
    if 'range' not in i:
        return
    rg = -1
    # convert range_text to an integer representation
    if i['range'] == 'touch':
        rg = 0
    elif i['range'] == 'planetary':
        rg = 999999999
    # is the only one in CRB with emanation 40' from current scraping
    elif i['name'] == 'Repulsion':
        rg = 40
    else:
        # DO SPLITS
        splits = i['range'].split(' ')
        # print(splits)
        rg = splits[0]
    inp = (rg, id)
    stmt = "UPDATE spells SET range_ft=? WHERE spells_id=?"
    try:
        conn.execute(stmt, inp)
    except:
        print("Error updating range_ft")
    else:
        conn.commit()
        # print("Successfully updated range_ft")


def do_basic_sql(i, id, conn):
    print("Doing spell id #{}: {}".format(id, i['name']))
    stmt = """INSERT INTO spells (
    spells_id,
    sources_id,
    sources_pages,
    nethysurl,
    name,
    level,
    descr,
    range_text,
    trigger,
    area_text)
    VALUES (?,?,?,?,?,?,?,?,?,?)"""

    rge = None
    if 'range' in i:
        rge = i['range']

    dscr = None
    if 'description' in i:
        dscr = i['description']

    trg = None
    if 'trigger' in i:
        trg = i['trigger']

    area = None
    if 'area' in i:
        area = i['area']

    inp = (id, 1, i['source'], i['nethysUrl'], i['name'], i['level'], dscr, rge, trg, area)
    try:
        conn.execute(stmt, inp)
    except:
        print("Error inserting row")
    else:
        conn.commit()
        # print("Successfully inserted row")


if __name__ == "__main__":
    main()
