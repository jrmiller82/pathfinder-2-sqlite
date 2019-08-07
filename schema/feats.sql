-- -*- mode:sql sql-product:sqlite -*-

/* MUST BE CALLED AFTER TRAITS TABLE IS FORMED */

/* Need to rethink how to model the various prerequisites */


CREATE TABLE feats (
  feat_id INTEGER PRIMARY KEY,
  sources_id INTEGER NOT NULL,
  sources_pages TEXT NOT NULL,
  short_name TEXT NOT NULL UNIQUE,
  descr TEXT NOT NULL,
  frequency TEXT,
  triggers TEXT,
  reqs TEXT,
  FOREIGN KEY (sources_id) REFERENCES sources(sources_id)
);

CREATE TABLE featprereqs (
  featprereqs_id INTEGER PRIMARY KEY,
  descr TEXT NOT NULL UNIQUE,
  feat_id INTEGER, -- this can be NULL since not all prereqs are feats
  FOREIGN KEY (feat_id) REFERENCES feats(feat_id)
);

CREATE TABLE feats_featprereqs (
  id INTEGER PRIMARY KEY,
  feat_id INTEGER NOT NULL,
  featprereqs_id INTEGER NOT NULL,
  FOREIGN KEY (feat_id) REFERENCES feats(feat_id),
  FOREIGN KEY (featprereqs_id) REFERENCES featprereqs(featprereqs_id)
);


CREATE TABLE feats_traits (
  id INTEGER PRIMARY KEY,
  feat_id INTEGER NOT NULL,
  trait_id INTEGER NOT NULL,
  FOREIGN KEY (feat_id) REFERENCES feats(feat_id),
  FOREIGN KEY (trait_id) REFERENCES traits(trait_id)
);
