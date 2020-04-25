-- -*- mode:sql sql-product:sqlite -*-

-- MUST BE CALLED EARLY IN SCRIPT

CREATE TABLE sources (
  sources_id INTEGER PRIMARY KEY,
  isbn TEXT,
  pzocode TEXT,
  sources_full_name TEXT NOT NULL UNIQUE,
  sources_short_name TEXT NOT NULL UNIQUE,
  sources_abbrev TEXT NOT NULL UNIQUE,
  sources_descr TEXT NOT NULL,
  release_date TEXT NOT NULL, -- in YYYY-MM-DD format
  first_party BOOLEAN NOT NULL,
  ogl_copyright_block TEXT NOT NULL
);

CREATE TABLE sourceentries (
  sourceentry_id INTEGER PRIMARY KEY,
  sources_id INTEGER NOT NULL,
  page_start INTEGER,
  page_stop INTEGER,
  UNIQUE (sources_id, page_start, page_stop), -- prevent duplicates
  FOREIGN KEY (sources_id) REFERENCES sources(sources_id)
);

CREATE TABLE monsters_sourceentries (
  id INTEGER PRIMARY KEY,
  monster_id INTEGER NOT NULL,
  sourceentry_id INTEGER NOT NULL,
  FOREIGN KEY (monster_id) REFERENCES monsters(monster_id),
  FOREIGN KEY (sourceentry_id) REFERENCES sourceentries(sourceentry_id)
);

-- TODO add in new many-to-many tables for the various things we want to have sources be listed this way
