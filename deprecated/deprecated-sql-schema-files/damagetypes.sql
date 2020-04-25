-- -*- mode:sql sql-product:sqlite -*-

-- CREATE TABLE abilityscores (
--   abilityscores_id INTEGER PRIMARY KEY,
--   flag_rep INTEGER NOT NULL,
--   short_name TEXT NOT NULL UNIQUE,
--   long_name TEXT NOT NULL UNIQUE
-- );


CREATE TABLE damagecategories (
  damagecategories_id INTEGER PRIMARY KEY,
  sources_id INTEGER,
  sources_pages TEXT,
  "name" TEXT NOT NULL UNIQUE,
  descr TEXT,
  FOREIGN KEY (sources_id) REFERENCES sources(sources_id)
);

CREATE TABLE damagetypes (
  damagetypes_id INTEGER PRIMARY KEY,
  sources_id INTEGER,
  sources_pages TEXT,
  damagecategories_id INTEGER NOT NULL,
  "abbr" TEXT,
  "name" TEXT NOT NULL UNIQUE,
  FOREIGN KEY (damagecategories_id) REFERENCES damagecategories(damagecategories_id),
  FOREIGN KEY (sources_id) REFERENCES sources(sources_id)
);
