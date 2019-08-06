-- -*- mode:sql sql-product:sqlite -*-

CREATE TABLE sources (
  sources_id INTEGER PRIMARY KEY,
  sources_full_name TEXT NOT NULL UNIQUE,
  sources_short_name TEXT NOT NULL UNIQUE,
  sources_abbrev TEXT NOT NULL UNIQUE,
  sources_descr TEXT NOT NULL UNIQUE,
  release_date TEXT NOT NULL,
  first_party BOOLEAN NOT NULL,
  ogl_copyright_block TEXT NOT NULL
);