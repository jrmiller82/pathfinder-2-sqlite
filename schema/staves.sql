-- -*- mode:sql sql-product:sqlite -*-

-- Parent table -- Table for Staves --
CREATE TABLE staff (
  staff_id INTEGER PRIMARY KEY NOT NULL,
  "name" TEXT NOT NULL UNIQUE, -- every staff should have a name --
  "level" INTEGER NOT NULL, -- every staff should have a level --
  price INTEGER, -- stored in GP --
                 -- could add NOT NULL and store 0s --
  bulk INTEGER, -- could add NOT NULL and store 0s --
  usage TEXT, -- always "held in 1 hand" --
              -- Consider storing in another table --
  item_bonus INTEGER, -- If the staff gives an item bonus --
  craft_requirements TEXT, -- "Supply one casting of all listed levels of all listed spells." -- 
                           -- Consider storing in another table --
  source_id INTEGER NOT NULL,
  source_pages INTEGER NOT NULL,
  "description" TEXT,
  FOREIGN KEY (source_id) REFERENCES sources(sources_id)
);

-- Child table -- many-to-many -- staff-to-spells --
CREATE TABLE staff_spell (
  staff_id INTEGER NOT NULL,
  "level" INTEGER NOT NULL, -- This represents the level of the spell in the staff where 0 = cantrip --
                          -- Consider renaming this column --
  spell_id INTEGER NOT NULL,
  PRIMARY KEY (staff_id, "level", spell_id),
  FOREIGN KEY (staff_id) REFERENCES staff(staff_id),
  FOREIGN KEY spell_id REFERENCES spells(spells_id)
);

-- Child table -- one-to-many
CREATE TABLE staff_activations (
  staff_id INTEGER NOT NULL,
  "activation" TEXT NOT NULL,
  effect TEXT NOT NULL,
  PRIMARY KEY (staff_id, "activation", effect),
  FOREIGN KEY staff_id REFERENCES staff(staff_id)
);