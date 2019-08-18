-- -*- mode:sql sql-product:sqlite -*-

PRAGMA foreign_keys = ON;

CREATE TABLE skills (
  skills_id INTEGER PRIMARY KEY,
  sources_id INTEGER,
  sources_pages TEXT,
  "name" TEXT UNIQUE NOT NULL,
  descr TEXT,
  FOREIGN KEY (sources_id) REFERENCES sources(sources_id)
);
