-- -*- mode:sql sql-product:sqlite -*-

/* TODO change visions to a senses table */

CREATE TABLE senses (
  senses_id INTEGER PRIMARY KEY,
  sources_id INTEGER,
  sources_pages TEXT,
  short_name TEXT NOT NULL UNIQUE,
  description TEXT,
  FOREIGN KEY (sources_id) REFERENCES sources(sources_id)
);
