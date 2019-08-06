-- -*- mode:sql sql-product:sqlite -*-

/* MUST BE CALLED AFTER TRAITS TABLE IS FORMED */

/* Need to rethink how to model the various prerequisites */

CREATE TABLE feats (
  feat_id INTEGER PRIMARY KEY,
  short_name TEXT NOT NULL UNIQUE,
  prereq_feats INTEGER,
  prereq_ability_scores INTEGER,
  prereq_proficiency_ranks INTEGER,
  frequency TEXT,
  triggers TEXT,
  reqs TEXT
);

CREATE TABLE feats_traits (
  id INTEGER PRIMARY KEY,
  feat_id INTEGER NOT NULL,
  trait_id INTEGER NOT NULL,
  FOREIGN KEY (feat_id) REFERENCES feats(feat_id),
  FOREIGN KEY (trait_id) REFERENCES traits(trait_id)
);
