-- -*- mode:sql sql-product:sqlite -*-

CREATE TABLE conditions (
	conditions_id INTEGER PRIMARY KEY,
	name TEXT UNIQUE NOT NULL,
	short_descr TEXT NOT NULL,
	descr TEXT NOT NULL,
	sources_id INTEGER NOT NULL,
	sources_pages TEXT,
	FOREIGN KEY (sources_id) REFERENCES sources(sources_id)
);


