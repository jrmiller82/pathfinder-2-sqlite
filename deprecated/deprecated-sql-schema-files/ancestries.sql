-- -*- mode:sql sql-product:sqlite -*-

/*
TODO Need to decide on whether to do a massive feats table, or to split feats
into separate tables for general feats, ancestry feats, background feats, etc...

I think one big feat table that has a feat type in it and then an ancestry_feat
table that matches feats to ancestries, etc..
*/

CREATE TABLE ancestries (
  ancestry_id INTEGER PRIMARY KEY,
  sources_id INTEGER NOT NULL,
  sources_pages TEXT,
  short_name TEXT NOT NULL UNIQUE,
  flavor_text TEXT NOT NULL,
  hp INTEGER NOT NULL,
  size_id INTEGER NOT NULL,
  speed INTEGER NOT NULL,
  vision_id INTEGER NOT NULL,
  FOREIGN KEY (vision_id) REFERENCES senses(senses_id),
  FOREIGN KEY (size_id) REFERENCES sizes(size_id)
);

CREATE TABLE ancestries_boosts (
  anc_boosts_id INTEGER PRIMARY KEY,
  ancestry_id INTEGER NOT NULL,
  abilityscores_id INTEGER NOT NULL,
  FOREIGN KEY (ancestry_id) REFERENCES ancestries(ancestry_id),
  FOREIGN KEY (abilityscores_id) REFERENCES abilityscores(abilityscores_id)
);

CREATE TABLE ancestries_flaws (
  anc_flaws_id INTEGER PRIMARY KEY,
  ancestry_id INTEGER NOT NULL,
  abilityscores_id INTEGER NOT NULL,
  FOREIGN KEY (ancestry_id) REFERENCES ancestries(ancestry_id),
  FOREIGN KEY (abilityscores_id) REFERENCES abilityscores(abilityscores_id)
);


/* Need to figure out how to model heritages that also have reactions / feats
etc.. */

/* has partial data */
CREATE TABLE heritages (
  heritage_id INTEGER PRIMARY KEY,
  short_name TEXT NOT NULL UNIQUE,
  description TEXT NOT NULL,
  bonus_type TEXT, -- TODO Should this be text, or should this have its own table and FK?
  bonus_id INTEGER -- TODO What is this referencing from data/heritages.sql ???
);

CREATE TABLE ancestries_heritages (
  id INTEGER PRIMARY KEY,
  ancestry_id INTEGER NOT NULL,
  heritage_id INTEGER NOT NULL,
  UNIQUE(ancestry_id, heritage_id),
  FOREIGN KEY (ancestry_id) REFERENCES ancestries(ancestry_id),
  FOREIGN KEY (heritage_id) REFERENCES heritages(heritage_id)
);


/* has partial data */
CREATE TABLE ancestries_traits (
  id INTEGER PRIMARY KEY,
  ancestry_id INTEGER NOT NULL,
  trait_id INTEGER NOT NULL,
  UNIQUE(ancestry_id, trait_id),
  FOREIGN KEY (ancestry_id) REFERENCES ancestries(ancestry_id),
  FOREIGN KEY (trait_id) REFERENCES traits(trait_id)
);

CREATE TABLE ancestries_langs (
  id INTEGER PRIMARY KEY,
  ancestry_id INTEGER NOT NULL,
  lang_id INTEGER NOT NULL,
  FOREIGN KEY (ancestry_id) REFERENCES ancestries(ancestry_id),
  FOREIGN KEY (lang_id) REFERENCES langs(lang_id));

CREATE TABLE ancestry_additionalangs (
  id INTEGER PRIMARY KEY,
  ancestry_id INTEGER NOT NULL,
  lang_id INTEGER NOT NULL,
  FOREIGN KEY (ancestry_id) REFERENCES ancestries(ancestry_id),
  FOREIGN KEY (lang_id) REFERENCES langs(lang_id)
);
