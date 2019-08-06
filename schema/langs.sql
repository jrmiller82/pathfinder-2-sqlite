-- -*- mode:sql sql-product:sqlite -*-

CREATE TABLE langsrarity (
  rarity_id INTEGER PRIMARY KEY,
  rarity_name TEXT NOT NULL UNIQUE
);

CREATE TABLE langs (
  lang_id INTEGER PRIMARY KEY,
  lang TEXT NOT NULL UNIQUE,
  speakers TEXT NOT NULL UNIQUE,
  rarity_id INTEGER NOT NULL,
  sources_id INTEGER NOT NULL,
  sources_pages TEXT NOT NULL,
  FOREIGN KEY (rarity_id) REFERENCES langsrarity(rarity_id),
  FOREIGN KEY (sources_id) REFERENCES sources(sources_id)
);

