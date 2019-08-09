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

    id = 0
    for i in sorted_dicts:
        id += 1
        # insert basics of a spell
        do_basic_sql(i, id, conn)
        do_range_numbers(i,id,conn)
        do_sources_pages(i,id,conn)
        # TODO do all the traits, FK stuff etc...

def do_sources_pages(i, id, conn):
    if 'source' not in i:
        return
    print(i)

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
    range_text)
    VALUES (?,?,?,?,?,?,?,?)"""

    rge = None
    if 'range' in i:
        rge = i['range']

    dscr = None
    if 'description' in i:
        dscr = i['description']

    inp = (id, 1, i['source'], i['nethysUrl'], i['name'], i['level'], dscr, rge)
    try:
        conn.execute(stmt, inp)
    except:
        print("Error inserting row")
    else:
        conn.commit()
        # print("Successfully inserted row")


if __name__ == "__main__":
    main()
