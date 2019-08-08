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


CREATE TABLE spells (
  spells_id INTEGER PRIMARY KEY,
  sources_id INTEGER NOT NULL,
  sources_pages TEXT,
  nethysurl TEXT,
  name TEXT NOT NULL UNIQUE,
  source TEXT,
  level INTEGER NOT NULL,
  trigger TEXT,
  descr TEXT NOT NULL,
  spelltypes_id INTEGER NOT NULL,
  range_text TEXT,
  range_ft INTEGER,
  targets TEXT,
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

