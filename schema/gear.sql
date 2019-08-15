CREATE TABLE gear(
  "gear_id" INTEGER PRIMARY KEY,
  "name" TEXT NOT NULL UNIQUE,
  "level" INTEGER,
  "price" REAL,
  "bulk" REAL,
  "hands" INTEGER,
  "sources_id" INTEGER,
  "sources_pages" TEXT,
  "descr" TEXT NOT NULL,
  FOREIGN KEY (sources_id) REFERENCES sources(sources_id)
);

CREATE TABLE gear_traits(
  id INTEGER PRIMARY KEY,
  gear_id INTEGER NOT NULL,
  trait_id INTEGER NOT NULL,
  FOREIGN KEY (gear_id) REFERENCES gear(gear_id),
  FOREIGN KEY (trait_id) REFERENCES traits(trait_id)
);

