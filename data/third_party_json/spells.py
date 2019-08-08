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
        do_sql(i, id, conn)

# TODO write this function after sql schema drafted
def do_sql(i, id, conn):
    print("Doing spell id #{}: {}".format(id, i['name']))
    stmt = """INSERT INTO spells (
    spells_id,
    sources_id,
    sources_pages,
    nethysurl,
    name,
    source,
    level,
    descr,
    range_text)
    VALUES (?,?,?,?,?,?,?,?,?)"""

    rge = None
    if 'range' in i:
        rge = i['range']

    dscr = None
    if 'description' in i:
        dscr = i['description']

    inp = (id, 1, None, i['nethysUrl'], i['name'], i['source'], i['level'], dscr, rge)
    try:
        conn.execute(stmt, inp)
    except:
        print("Error")
    conn.commit()


if __name__ == "__main__":
    main()
