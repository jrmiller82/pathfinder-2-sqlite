-- -*- mode:sql sql-product:sqlite -*-

CREATE TABLE actioncosts (
  actioncosts_id INTEGER PRIMARY KEY,
  name TEXT NOT NULL UNIQUE
);


CREATE TABLE actioncategories (
  actioncategories_id INTEGER PRIMARY KEY,
  sources_id INTEGER NOT NULL,
  sources_pages TEXT NOT NULL,
  name TEXT NOT NULL UNIQUE,
  descr TEXT NOT NULL UNIQUE,
  FOREIGN KEY (sources_id) REFERENCES sources(sources_id)
);

CREATE TABLE actions (
  actions_id INTEGER PRIMARY KEY,
  sources_id INTEGER NOT NULL,
  sources_pages TEXT NOT NULL,
  actioncategories_id INTEGER NOT NULL,
  actioncosts_id INTEGER,
  name TEXT NOT NULL UNIQUE,
  req TEXT,
  trigger TEXT,
  descr TEXT NOT NULL,
  FOREIGN KEY (actioncategories_id) REFERENCES actioncategories(actioncategories_id),
  FOREIGN KEY (actioncosts_id) REFERENCES actioncosts(actioncosts_id),
  FOREIGN KEY (sources_id) REFERENCES sources(sources_id)
);

CREATE TABLE actions_traits (
  id INTEGER PRIMARY KEY,
  actions_id INTEGER NOT NULL,
  traits_id INTEGER NOT NULL
);
