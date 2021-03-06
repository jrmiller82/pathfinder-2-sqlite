import csv
import sqlite3

def main():
    # load json into python
    print("loading melee.csv and ranged.csv")
    ## read file into memory
    rows = []
    with open('melee.csv') as f:
        reader = csv.DictReader(f)
        # print(reader)
        for row in reader:
            rows.append(row)

    ranged_rows = []
    with open('ranged.csv') as f:
        reader = csv.DictReader(f)
        # print(reader)
        for row in reader:
            ranged_rows.append(row)


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
        insert_melee_weapon_basics(row, conn)
        insert_traits(row, conn, traits)
        insert_fks(row, conn)

    for row in ranged_rows:
        insert_ranged_weapon_basics(row, conn)
        insert_traits(row, conn, traits)
        insert_fks(row, conn)

    print("finished weapons")

def insert_fks(row, conn):
    # get category id
    rcat = row['category']
    res_id = None
    if rcat == "Unarmed":
        res_id = 1
    elif rcat == "Simple":
        res_id = 2
    elif rcat == "Martial":
        res_id = 3
    elif rcat == "Advanced":
        res_id = 4
    else:
        print("Something went wrong here in weapon category land.")

    grp = row['group']
    grp_id = None
    if grp == 'Axe':
        grp_id = 1
    elif grp == 'Bomb':
        grp_id = 2
    elif grp == 'Bow':
        grp_id = 3
    elif grp == 'Brawling':
        grp_id = 4
    elif grp == 'Club':
        grp_id = 5
    elif grp == 'Dart':
        grp_id = 6
    elif grp == 'Flail':
        grp_id = 7
    elif grp == 'Hammer':
        grp_id = 8
    elif grp == 'Knife':
        grp_id = 9
    elif grp == 'Pick':
        grp_id = 10
    elif grp == 'Polearm':
        grp_id = 11
    elif grp == 'Shield':
        grp_id = 12
    elif grp == 'Sling':
        grp_id = 13
    elif grp == 'Spear':
        grp_id = 14
    elif grp == 'Sword':
        grp_id = 15
    else:
        print("Something went wrong here in weapon group land.")

    dmg = row['damage_type']
    dmg_id = None
    if dmg == 'B':
        dmg_id = 1
    elif dmg == 'P':
        dmg_id = 2
    elif dmg == 'S':
        dmg_id = 3
    elif row['name'] == "Alchemical Bomb":
        dmg_id = None
    else:
        print("Something went wrong here in weapon damage type land.{}".format(row))

    inp = (res_id, grp_id, dmg_id, row['weapon_id'])
    stmt = "UPDATE weapons SET weaponcategories_id=?, weapongroups_id=?, damagetypes_id=? WHERE weapons_id=?;"
    try:
        conn.execute(stmt, inp)
    except sqlite.Error as e:
        print("Error inserting weapon category information: {}".format(e))
    else:
        conn.commit()
        # print("Successfully inserted row")

def insert_traits (row, conn, traits):

    # get list of traits from row
    tmp = row['traits']
    # exit this if no traits
    if tmp == '':
        return
    splits = tmp.split(", ")
    # print(tmp)
    # print(tmp.split(", "))

    trait_ids = []
    # get trait IDs
    for i in traits:
        for j in splits:
            if i[1] == j:
                # print("Trait_id:{}\tname:{}".format(i[0],i[1]))
                trait_ids.append(i[0])
    # print(trait_ids)
    # all this mess removes non weapon traits that have duplicate names like
    # Monk Ancestry versus Monk Weapon trait
    if len(splits) != len(trait_ids):
        remove_me = []
        for i in trait_ids:
            if i >= 217 and i <= 251:
                continue
            elif i >= 255 and i <= 269:
                continue
            # 203 = uncommon trait
            elif i == 203:
                continue
            else:
                remove_me.append(i)
        for i in remove_me:
            trait_ids.remove(i)
    # print(trait_ids)

    stmt = "INSERT INTO weapons_traits (weapons_id, trait_id) VALUES (?,?);"

    for i in trait_ids:
        inp = (row['weapon_id'], i)
        try:
            conn.execute(stmt, inp)
        except sqlite.Error as e:
            print("Error inserting trait information: {}".format(e))
        else:
            conn.commit()
            # print("Successfully inserted row")



def insert_ranged_weapon_basics(row, conn):
    # print("Inserting: {}".format(row['name']))
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
        descr,
        range,
        reload
    )
    VALUES (?,?,?,?,?,?,?,?,?,?,?);
    """
    r = row
    inp = (r['weapon_id'],r['sources_id'],r['sources_pg'],r['price_gp'],
           r['dice_size'],r['bulk'],r['hands'],r['name'],r['description'],
           r['range'],r['reload'])

    try:
        conn.execute(stmt, inp)
    except sqlite.Error as e:
        print("Error inserting basic ranged row information: {}".format(e))
    else:
        conn.commit()
        # print("Successfully inserted row")

def insert_melee_weapon_basics(row, conn):
    # print("Inserting: {}".format(row['name']))
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
    inp = (r['weapon_id'],r['sources_id'],r['sources_pg'],r['price_gp'],
           r['dice_size'],r['bulk'],r['hands'],r['name'],r['description'])

    try:
        conn.execute(stmt, inp)
    except sqlite3.Error as e:
        print("Error inserting basic melee row information: {}".format(e))
    else:
        conn.commit()
        # print("Successfully inserted row")


if __name__ == "__main__":
    main()
