-- -*- mode:sql sql-product:sqlite -*-

PRAGMA foreign_keys = ON;

-- TODO needs data

CREATE TABLE movements (
  movements_id INTEGER PRIMARY KEY,
  "name" TEXT UNIQUE NOT NULL
);


