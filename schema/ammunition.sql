-- -*- mode:sql sql-product:sqlite -*-

PRAGMA foreign_keys = ON; -- database requires foreign key checking to be turned
                          -- on PER CONNECTION

CREATE TABLE ammunition (
  ammunition_id INTEGER PRIMARY KEY,
  sources_id INTEGER,
  sources_pages TEXT,
  "name" TEXT NOT NULL UNIQUE,
  price_gp REAL,
  amount INTEGER,
  bulk REAL,
  descr TEXT,
  FOREIGN KEY (sources_id) REFERENCES sources(sources_id)
)
