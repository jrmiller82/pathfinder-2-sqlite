-- -*- mode:sql sql-product:sqlite -*-

/* TODO change visions to a senses table */

CREATE TABLE senses (
  senses_id INTEGER PRIMARY KEY,
  short_name TEXT NOT NULL UNIQUE,
  description TEXT NOT NULL
);
