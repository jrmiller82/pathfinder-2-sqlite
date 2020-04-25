CREATE TABLE bulks (
	bulk_id INTEGER PRIMARY KEY,
  sources_id INTEGER NOT NULL,
  sources_pages TEXT NOT NULL,
	short_name TEXT NOT NULL,
	long_name TEXT NOT NULL,
	numerical FLOAT NOT NULL,
  FOREIGN KEY (sources_id) REFERENCES sources(sources_id)
);

