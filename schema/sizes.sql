-- -*- mode:sql sql-product:sqlite -*-


CREATE TABLE sizes (
  size_id INTEGER PRIMARY KEY,
  short_name TEXT NOT NULL UNIQUE,
  space_in_ft INTEGER NOT NULL,
  reach_tall_ft INTEGER NOT NULL,
  reach_long_ft INTEGER NOT NULL
);
