-- -*- mode:sql sql-product:sqlite -*-

CREATE TABLE backgrounds (
  bg_id INTEGER PRIMARY KEY,
  "name" TEXT NOT NULL UNIQUE,
  descr TEXT NOT NULL,
  sources_id INTEGER NOT NULL,
  sources_pages TEXT NOT NULL,
  is_comty_use BOOLEAN NOT NULL, -- false = no community use policy required
  is_specific_to_adv BOOLEAN NOT NULL, -- means the background is specific to its adventure
  FOREIGN KEY (sources_id) REFERENCES sources(sources_id)
);
