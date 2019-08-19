-- -*- mode:sql sql-product:sqlite -*-

PRAGMA foreign_keys = ON;

-- TODO needs data

CREATE TABLE monstertypes(
  monstertypes_id INTEGER PRIMARY KEY,
  "name" TEXT NOT NULL UNIQUE
);

CREATE TABLE monsters (
  monsters_id INTEGER PRIMARY KEY,
  is_comty_use BOOLEAN NOT NULL, -- false = no community use policy req
  sources_id INTEGER,
  sources_pages TEXT,
  monstertypes_id INTEGER, -- Humanoid etc..
  "name" TEXT NOT NULL UNIQUE,
  "level" INTEGER,
  alignment_id INTEGER, -- i.e. NG, LE etc..
  perception INTEGER,
  sizes_id INTEGER, -- i.e. large medium small etc..
  ac INTEGER,
  fortitude INTEGER,
  reflex INTEGER,
  will INTEGER,
  hp INTEGER,
  land_speed INTEGER, -- will have separate many-to-many table for other movements
  str_mod INTEGER,
  dex_mod INTEGER,
  con_mod INTEGER,
  int_mod INTEGER,
  wis_mod INTEGER,
  cha_mod INTEGER,
  descr TEXT, -- The idea with this is for this to hold the entire stat block
              -- text in it for those that want to do a simple query. I DO
              -- intend to break out all the actions etc. into a separate table
              -- and do many-to-many joins. Yes, this duplicates some data but
              -- this is more for getting markdown formatting of the stat block
              -- in one nice column.
  FOREIGN KEY (alignments_id) REFERENCES alignments(alignments_id),
  FOREIGN KEY (sizes_id) REFERENCES sizes(sizes_id),
  FOREIGN KEY (sources_id) REFERENCES sources(sources_id)
);

CREATE TABLE monsterflavortexttypes (
  monsterflavortexttypes_id INTEGER PRIMARY KEY,
  "name" TEXT NOT NULL UNIQUE
  -- page 7 Bestiary
  -- 'Monster Category' -- i.e. "Bear"
  -- 'Specific Monster' -- i.e. "Grizzly Bear"
  -- 'Advice and Rules'
  -- 'Related Creatures'
  -- 'Additional Lore'
  -- 'Treasure and Rewards'
  -- 'Locations'
);

CREATE TABLE monsterflavortexts (
  monsterflavortexts_id INTEGER PRIMARY KEY,
  monsterflavortexttypes_id INTEGER,
  heading TEXT NOT NULL,
  mft_text TEXT NOT NULL,
  FOREIGN KEY (monsterflavortexttypes_id) REFERENCES monsterflavortexttypes(monsterflavortexttype_id)
);

CREATE TABLE monsters_senses (
  id INTEGER PRIMARY KEY,
  monsters_id INTEGER NOT NULL,
  immunities_id INTEGER NOT NULL,
  FOREIGN KEY (monsters_id) REFERENCES monsters(monsters_id),
  FOREIGN KEY (senses_id) REFERENCES senses(senses_id)
);

CREATE TABLE monsters_immunities (
  id INTEGER PRIMARY KEY,
  monsters_id INTEGER NOT NULL,
  immunities_id INTEGER NOT NULL,
  FOREIGN KEY (monsters_id) REFERENCES monsters(monsters_id),
  FOREIGN KEY (immunities_id) REFERENCES immunities(immunities_id)
);

CREATE TABLE monsters_skills (
  id INTEGER PRIMARY KEY,
  monsters_id INTEGER NOT NULL,
  skills_id INTEGER NOT NULL, -- will ID the specific skill
  skill_mod INTEGER NOT NULL, -- will hold the modifier value
  UNIQUE(monsters_id, skills_id), -- so we don't get duplicate rows for a specific monster
  FOREIGN KEY (monsters_id) REFERENCES monsters(monsters_id),
  FOREIGN KEY (skills_id) REFERENCES skills(skills_id)
);

CREATE TABLE monsters_traits (
  id INTEGER PRIMARY KEY,
  monsters_id INTEGER NOT NULL,
  trait_id INTEGER NOT NULL,
  FOREIGN KEY (monsters_id) REFERENCES monsters(monsters_id),
  FOREIGN KEY (traits_id) REFERENCES traits(trait_id)
);

CREATE TABLE monster_movements (
  id INTEGER PRIMARY KEY,
  monsters_id INTEGER NOT NULL,
  movements_id INTEGER NOT NULL,
  movement_speed INTEGER NOT NULL, -- this is the actual monster speed
  UNIQUE (monsters_id, movements_id), -- prevent duplicates
  FOREIGN KEY (monsters_id) REFERENCES monsters(monsters_id),
  FOREIGN KEY (movements_id) REFERENCES movements(movements_id)
);

-- TODO does this need to be separate table for monsters only or share the main
-- actions table
CREATE TABLE monsteractions (
  monsteractions_id INTEGER PRIMARY KEY,
  "name" TEXT,
  -- TODO
);

CREATE TABLE monsters_actions (
  id INTEGER PRIMARY KEY,
  monsters_id INTEGER NOT NULL,
  actions_id INTEGER NOT NULL, -- TODO actions table? or monsteractions table?
);
