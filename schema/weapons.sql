-- -*- mode:sql sql-product:sqlite -*-

PRAGMA foreign_keys = ON; -- database requires foreign key checking to be turned
                          -- on PER CONNECTION

CREATE TABLE weapongroups (
  weapongroups_id INTEGER PRIMARY KEY,
  sources_id INTEGER,
  sources_pages TEXT,
  "name" TEXT NOT NULL UNIQUE,
  descr TEXT,
  FOREIGN KEY (sources_id) REFERENCES sources(sources_id)
);

CREATE TABLE weaponcategories (
  weaponcategories_id INTEGER PRIMARY KEY,
  "name" TEXT NOT NULL UNIQUE
);

CREATE TABLE weapons (
  weapons_id INTEGER PRIMARY KEY,
  sources_id INTEGER,
  sources_pages TEXT,
  weaponcategories_id INTEGER,
  weapongroups_id INTEGER,
  price_gp TEXT, --Text to fix the floating point error
  dice_size INTEGER,
  damagetypes_id INTEGER,
  "bulk" TEXT, --Text to fix the floating point error
  hands TEXT, -- '1+' is different than '1' per the rules
  range INTEGER,
  reload TEXT, -- '-' is significant in the rules
  "name" TEXT NOT NULL UNIQUE,
  descr TEXT,
  FOREIGN KEY (weapongroups_id) REFERENCES weapongroups(weapongroups_id),
  FOREIGN KEY (weaponcategories_id) REFERENCES weaponcategories(weaponcategories_id),
  FOREIGN KEY (sources_id) REFERENCES sources(sources_id)
);

CREATE TABLE weapons_traits (
  id INTEGER PRIMARY KEY,
  weapons_id INTEGER NOT NULL,
  trait_id INTEGER NOT NULL,
  UNIQUE(weapons_id, trait_id)
  FOREIGN KEY (weapons_id) REFERENCES weapons(weapons_id),
  FOREIGN KEY (trait_id) REFERENCes traits(trait_id)
);
