-- -*- mode:sql sql-product:sqlite -*-

-- Parent table -- Table for Staves --
CREATE TABLE staff (
  staff_id INTEGER PRIMARY KEY,
  "name" TEXT NOT NULL UNIQUE, -- every staff should have a name --
  "level" INTEGER NOT NULL, -- every staff should have a level --
  price INTEGER, /* stored in GP
                 could add NOT NULL and store 0s */
  bulk INTEGER, -- could add NOT NULL and store 0s --
  usage TEXT, /* always "held in 1 hand"
              Consider storing in another table */
  item_bonus INTEGER, -- If the staff gives an item bonus --
  craft_requirements TEXT, -- "Supply one casting of all listed levels of all listed spells." -- 
                           -- Consider storing in another table --
  source_id INTEGER NOT NULL,
  source_pages INTEGER NOT NULL,
  "description" TEXT,
  FOREIGN KEY (source_id) REFERENCES sources(sources_id)
);

-- Child table -- many-to-many --
CREATE TABLE staffactivations (
  staffactivations_id INTEGER PRIMARY KEY,
  "activation" TEXT NOT NULL,
  effect TEXT NOT NULL,
  UNIQUE (staffactivations_id, "activation", effect)
);

-- Joining table -- 
CREATE TABLE staff_staffactivations (
  id INTEGER PRIMARY KEY,
  staff_id INTEGER NOT NULL,
  staffactivations_id INTEGER NOT NULL,
  UNIQUE (id, staff_id, staffactivations_id),
  FOREIGN KEY (staff_id) REFERENCES staff(staff_id),
  FOREIGN KEY (staffactivations_id) REFERENCES staffactivations(staffactivations_id)
);

-- Joining table --
CREATE TABLE staff_trait (
  id INTEGER PRIMARY KEY,
  staff_id INTEGER NOT NULL,
  trait_id INTEGER NOT NULL,
  UNIQUE (id, staff_id, trait_id),
  FOREIGN KEY (staff_id) REFERENCES staff(staff_id),
  FOREIGN KEY (trait_id) REFERENCES traits(trait_id)
);

-- Joining table --
CREATE TABLE staff_spell (
  id INTEGER PRIMARY KEY,
  staff_id INTEGER NOT NULL,
  "level" INTEGER NOT NULL, -- This represents the level of the spell in the staff where 0 = cantrip --
  spell_id INTEGER NOT NULL,
  UNIQUE (id, staff_id, "level", spell_id),
  FOREIGN KEY (staff_id) REFERENCES staff(staff_id),
  FOREIGN KEY (spell_id) REFERENCES spells(spells_id)
);