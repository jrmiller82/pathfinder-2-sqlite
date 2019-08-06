-- -*- mode:sql sql-product:sqlite -*-

CREATE TABLE traittypes (
  traittype_id INTEGER PRIMARY KEY,
  name TEXT NOT NULL
);

/* TODO can the description var be UNIQUE? */
/* has partial data done */
CREATE TABLE traits (
  trait_id INTEGER PRIMARY KEY,
  traittype INTEGER,
  short_name TEXT NOT NULL,
  description TEXT NOT NULL,
  FOREIGN KEY (traittype) REFERENCES traittypes(traittypes_id)
);

