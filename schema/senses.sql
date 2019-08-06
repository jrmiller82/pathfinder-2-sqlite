-- -*- mode:sql sql-product:sqlite -*-

/* TODO change visions to a senses table */

CREATE TABLE visions (
  vision_id INTEGER PRIMARY KEY,
  short_name TEXT NOT NULL UNIQUE,
  description TEXT NOT NULL
);
