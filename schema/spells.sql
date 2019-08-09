-- -*- mode:sql sql-product:sqlite -*-

CREATE TABLE spelltypes (
  spelltypes_id INTEGER PRIMARY KEY,
  name TEXT NOT NULL UNIQUE
);

CREATE TABLE spellcomponents (
  spellcomponents_id INTEGER PRIMARY KEY,
  name TEXT NOT NULL UNIQUE
);

CREATE TABLE spelltraditions (
  spelltraditions_id INTEGER PRIMARY KEY,
  name TEXT NOT NULL UNIQUE
);

CREATE TABLE spellschools (
  spellschools_id INTEGER PRIMARY KEY,
  sources_id INTEGER NOT NULL,
  sources_pages TEXT,
  name TEXT NOT NULL UNIQUE,
  descr TEXT NOT NULL,
  FOREIGN KEY (sources_id) REFERENCES sources(sources_id)
);

-- TODO eventually once data is finalized, lock down variables as NOT NULL /
-- UNIQUE as sanity requires :)
CREATE TABLE spells (
  spells_id INTEGER PRIMARY KEY,
  sources_id INTEGER NOT NULL, -- manually entered right now
  sources_pages TEXT, -- TODO convert to our format in spells.py
  name TEXT NOT NULL UNIQUE, -- scraped from github repo
  level INTEGER, -- scraped from github repo
  trigger TEXT, -- TODO in spells.py
  descr TEXT, -- scraped from github repo
  spelltypes_id INTEGER, -- TODO in spells.py
  range_text TEXT, -- scraped from github repo
  range_ft INTEGER, -- generated from text in spells.py
  targets TEXT,  -- TODO in spells.py
  nethysurl TEXT, -- scraped from github repo
  FOREIGN KEY (sources_id) REFERENCES sources(sources_id),
  FOREIGN KEY (spelltypes_id) REFERENCES spelltypes(spelltypes_id)
);

CREATE TABLE spells_spellcomponents(
	spells_id INTEGER NOT NULL,
	spellcomponents_id INTEGER NOT NULL,
	FOREIGN KEY (spells_id) REFERENCES spells(spells_id),
	FOREIGN KEY (spellcomponents_id) REFERENCES spellcomponents(spellcomponents_id)
);


CREATE TABLE spells_traits (
	id INTEGER PRIMARY KEY,
	spells_id INTEGER NOT NULL,
	traits_id INTEGER NOT NULL,
	FOREIGN KEY (spells_id) REFERENCES spells(spells_id),
	FOREIGN KEY (traits_id) REFERENCES traits(traits_id)
);

