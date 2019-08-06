-- -*- mode:sql sql-product:sqlite -*-

CREATE TABLE langs (
  lang_id INTEGER PRIMARY KEY,
  short_name TEXT NOT NULL UNIQUE
);
