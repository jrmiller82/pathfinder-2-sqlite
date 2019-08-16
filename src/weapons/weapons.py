import csv
import sqlite3

def main():
    # load json into python
    print("loading melee.csv")
    ## read file into memory
    rows = []
    with open('melee.csv') as f:
        reader = csv.DictReader(f)
        print(reader)
        for row in reader:
            rows.append(row)


    ## Get database connection
    conn = sqlite3.connect('../../pf2.db') 
    ## Set pragmas to make it go FAST
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

    # load in ids for traits from traits table so we only call this once
    # instead of every spell
    stmt = "SELECT trait_id, short_name FROM traits"
    c = conn.cursor()
    c.execute(stmt)
    traits = c.fetchall()
    # print("Printing traits")
    # print(traits)

    for row in rows:
        insert_melee_weapon(row, conn, traits)

def insert_melee_weapon(row, conn, traits):
    print("Inserting: {}".format(row['name']))
    # insert everything that's not a lookup
    stmt =  """
    INSERT INTO weapons (
        weapons_id,
        sources_id,
        sources_pages,
        price_gp,
        dice_size,
        bulk,
        hands,
        name,
        descr)
    VALUES (?,?,?,?,?,?,?,?,?);
    """
    r = row
    inp = (r['weapon_m_id'],r['sources_id'],r['sources_pg'],r['price_gp'],
           r['dice_size'],r['bulk'],r['hands'],r['name'],r['description'])

    try:
        conn.execute(stmt, inp)
    except:
        print("Error inserting basic row information")
    else:
        conn.commit()
        # print("Successfully inserted row")


if __name__ == "__main__":
    main()
