import yaml
import sqlite3
import os

DBFILE = 'tmp.db'

def main():
   # delete DBfile and run fresh
   os.remove(DBFILE)

   # Load in the yaml data
   with open('basics.yaml') as yl:
      data = yaml.full_load(yl)

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

   # call the functions to input to SQL
   do_abilityscore(data['abilityscore'], conn)

def do_abilityscore(data, conn):
   print(data)
   print(conn)

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
      conn.executemany(stmt,inp_data)
   except:
      print("Error creating abilityscore")
   else:
      conn.commit()


if __name__ == "__main__":
   main()
