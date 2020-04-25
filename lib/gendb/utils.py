import sqlite3

def get_db_conn(DBFILE):
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