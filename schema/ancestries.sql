-- -*- mode:sql sql-product:sqlite -*-

/*

TODO Need to decide on whether to do a massive feats table, or to split feats
into separate tables for general feats, ancestry feats, background feats, etc...

I think one big feat table that has a feat type in it and then an ancestry_feat
table that matches feats to ancestries, etc..

*/


CREATE TABLE ancestries (
  ancestry_id INTEGER PRIMARY KEY,
  short_name TEXT NOT NULL UNIQUE,
  flavor_text TEXT NOT NULL,
  hp INTEGER NOT NULL,
  size_id INTEGER NOT NULL,
  boosts INTEGER NOT NULL,
  flaws INTEGER NOT NULL,
  vision_id INTEGER NOT NULL,
  FOREIGN KEY (vision_id) REFERENCES visions(vision_id),
  FOREIGN KEY (size_id) REFERENCES sizes(size_id)
);

/* has partial data */
CREATE TABLE visions (
  vision_id INTEGER PRIMARY KEY,
  short_name TEXT NOT NULL UNIQUE,
  description TEXT NOT NULL
);

/* Need to figure out how to model heritages that also have reactions / feats
etc.. */

/* has partial data */
CREATE TABLE heritages (
  heritage_id INTEGER PRIMARY KEY,
  short_name TEXT NOT NULL UNIQUE,
  description TEXT NOT NULL
);

CREATE TABLE ancestries_heritages (
  id INTEGER PRIMARY KEY,
  ancestry_id INTEGER NOT NULL,
  heritage_id INTEGER NOT NULL,
  UNIQUE(ancestry_id, heritage_id),
  FOREIGN KEY (ancestry_id) REFERENCES ancestries(ancestry_id),
  FOREIGN KEY (heritage_id) REFERENCES heritages(heritage_id)
);

/* TODO can the description var be UNIQUE? */
/* has partial data done */
CREATE TABLE traits (
  trait_id INTEGER PRIMARY KEY,
  short_name TEXT NOT NULL UNIQUE,
  description TEXT NOT NULL
);

CREATE TABLE ancestries_traits (
  id INTEGER PRIMARY KEY,
  ancestry_id INTEGER NOT NULL,
  trait_id INTEGER NOT NULL,
  UNIQUE(ancestry_id, trait_id),
  FOREIGN KEY (ancestry_id) REFERENCES ancestries(ancestry_id),
  FOREIGN KEY (trait_id) REFERENCES traits(trait_id)
);

CREATE TABLE sizes (
  size_id INTEGER PRIMARY KEY,
  short_name TEXT NOT NULL UNIQUE
);

CREATE TABLE langs (
  lang_id INTEGER PRIMARY KEY,
  short_name TEXT NOT NULL UNIQUE
);

CREATE TABLE ancestries_langs (
  id INTEGER PRIMARY KEY,
  ancestry_id INTEGER NOT NULL,
  lang_id INTEGER NOT NULL,
  FOREIGN KEY (ancestry_id) REFERENCES ancestries(ancestry_id),
  FOREIGN KEY (lang_id) REFERENCES langs(lang_id),
);


CREATE TABLE ancestry_additionalangs (
  id INTEGER PRIMARY KEY,
  ancestry_id INTEGER NOT NULL,
  lang_id INTEGER NOT NULL,
  FOREIGN KEY (ancestry_id) REFERENCES ancestries(ancestry_id),
  FOREIGN KEY (lang_id) REFERENCES langs(lang_id),
);

/* Need to rethink how to model the various prerequisites */

CREATE TABLE feats (
  feat_id INTEGER PRIMARY KEY,
  short_name TEXT NOT NULL UNIQUE,
  prereq_feats INTEGER,
  prereq_ability_scores INTEGER,
  prereq_proficiency_ranks INTEGER,
  frequency TEXT,
  triggers TEXT,
  reqs TEXT,
);

CREATE TABLE feats_traits (
  id INTEGER PRIMARY KEY,
  feat_id INTEGER NOT NULL,
  trait_id INTEGER NOT NULL,
  FOREIGN KEY (feat_id) REFERENCES feats(feat_id),
  FOREIGN KEY (trait_id) REFERENCES traits(trait_id)
);
