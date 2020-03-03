
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