-- -*- mode:sql sql-product:sqlite -*-

CREATE TABLE triggers (
  triggers_id INTEGER PRIMARY KEY,
  triggers_descr TEXT NOT NULL UNIQUE
);
