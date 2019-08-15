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

CREATE TABLE spelltargets (
  spelltargets_id INTEGER PRIMARY KEY,
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
-- TODO Area eventually needs its own table 
CREATE TABLE spells (
  spells_id INTEGER PRIMARY KEY,
  sources_id INTEGER NOT NULL, -- generated in spells.py from scraped data
  sources_pages TEXT, -- generated in spells.py from scraped data
  name TEXT NOT NULL UNIQUE, -- scraped from github repo
  level INTEGER, -- scraped from github repo
  trigger TEXT, -- scraped from spells.py NOTE, there are no duplicate triggers
                -- as of CRB, so not bothering with a separate spell triggers
                -- table at this time
  descr TEXT, -- scraped from github repo
  spelltypes_id INTEGER, -- generated from spells.py
  range_text TEXT, -- scraped from github repo
  range_ft INTEGER, -- generated from text in spells.py
  area_text TEXT, -- TODO need to figure out some sort of programmatic representation for this too
  spelltargets_id INTEGER,
  nethysurl TEXT, -- scraped from github repo
  actioncosts_id INTEGER,
  FOREIGN KEY (actioncosts_id) REFERENCES actioncosts(actioncosts_id),
  FOREIGN KEY (sources_id) REFERENCES sources(sources_id),
  FOREIGN KEY (spelltypes_id) REFERENCES spelltypes(spelltypes_id),
  FOREIGN KEY (spelltargets_id) REFERENCES spelltargets(spelltargets_id)
);

CREATE TABLE spells_spellcomponents(
  id INTEGER PRIMARY KEY,
	spells_id INTEGER NOT NULL,
	spellcomponents_id INTEGER NOT NULL,
	FOREIGN KEY (spells_id) REFERENCES spells(spells_id),
	FOREIGN KEY (spellcomponents_id) REFERENCES spellcomponents(spellcomponents_id)
);


CREATE TABLE spells_traits (
	id INTEGER PRIMARY KEY,
	spells_id INTEGER NOT NULL,
	trait_id INTEGER NOT NULL,
  UNIQUE(spells_id, trait_id),
	FOREIGN KEY (spells_id) REFERENCES spells(spells_id),
	FOREIGN KEY (trait_id) REFERENCES traits(trait_id)
);

