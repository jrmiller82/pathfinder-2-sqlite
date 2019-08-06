-- -*- mode:sql sql-product:sqlite -*-

CREATE TABLE abilityscores (
  abilityscores_id INTEGER PRIMARY KEY,
  flag_rep INTEGER NOT NULL,
  short_name TEXT NOT NULL UNIQUE,
  long_name TEXT NOT NULL UNIQUE
);
