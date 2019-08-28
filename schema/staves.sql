-- -*- mode:sql sql-product:sqlite -*-

CREATE TABLE staff (
  staff_id INTEGER PRIMARY KEY NOT NULL,
  "name" TEXT NOT NULL UNIQUE, -- every staff should have a name --
  "level" INTEGER NOT NULL, -- every staff should have a level --
  price INTEGER, -- stored in GP --
                 -- could add NOT NULL and store 0s --
  bulk INTEGER, -- could add NOT NULL and store 0s --
  usage TEXT, -- always "held in 1 hand" --
              -- Consider storing in another table --
  activate TEXT, -- always "Cast a spell;" --
                 -- Should we store the ";"? --
                 -- Consider storing in another table --
  activate_effect TEXT, -- always "You expend a number of charges from the staff to cast a spell from its list." --
                        -- Consider storing in another table --
  craft_requirements TEXT, -- "Supply one casting of all listed levels of all listed spells." -- 
                           -- Consider storing in another table --
  source_id INTEGER NOT NULL,
  source_pages INTEGER NOT NULL,
  "description" TEXT,
  FOREIGN KEY (source_id) REFERENCES sources(sources_id)
);

CREATE TABLE staff_spell (
  staff_id INTEGER NOT NULL,
  "level" INTEGER NOT NULL, -- This represents the level of the spell in the staff where 0 = cantrip --
                          -- Consider renaming this column --
  spell_id INTEGER NOT NULL,
  FOREIGN KEY (staff_id) REFERENCES staff(staff_id),
  FOREIGN KEY spell_id REFERENCES spells(spells_id)
);