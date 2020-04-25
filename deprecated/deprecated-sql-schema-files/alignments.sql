-- -*- mode:sql sql-product:sqlite -*-

PRAGMA foreign_keys = ON;

CREATE TABLE alignments (
  alignments_id INTEGER PRIMARY KEY,
  "name" TEXT UNIQUE NOT NULL, -- 'Lawful Good'
  abbr TEXT UNIQUE NOT NULL -- 'LG'
);
