-- -*- mode:sql sql-product:sqlite -*-

-- MUST BE CALLED EARLY IN SCRIPT

CREATE TABLE sources (
  sources_id INTEGER PRIMARY KEY,
  sources_full_name TEXT NOT NULL UNIQUE,
  sources_short_name TEXT NOT NULL UNIQUE,
  sources_abbrev TEXT NOT NULL UNIQUE,
  sources_descr TEXT NOT NULL,
  release_date TEXT NOT NULL, -- in YYYY-MM-DD format
  first_party BOOLEAN NOT NULL,
  ogl_copyright_block TEXT NOT NULL
);
