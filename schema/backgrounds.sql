-- -*- mode:sql sql-product:sqlite -*-

CREATE TABLE backgrounds (
  bg_id INTEGER PRIMARY KEY,
  bg_name TEXT NOT NULL UNIQUE,
  bg_descr TEXT NOT NULL,
  sources_id INTEGER NOT NULL,
  sources_pages TEXT NOT NULL,
  FOREIGN KEY (sources_id) REFERENCES sources(sources_id)
);
