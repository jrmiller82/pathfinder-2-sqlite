-- -*- mode:sql sql-product:sqlite -*-

CREATE TABLE requirements (
  requirements_id INTEGER PRIMARY KEY,
  requirements_descr TEXT NOT NULL UNIQUE
);
