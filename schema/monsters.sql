-- -*- mode:sql sql-product:sqlite -*-

PRAGMA foreign_keys = ON;

-- TODO needs data

-- Rarity will be by trait
-- Monster 'type' will be by trait
-- Monster category is also by trait

-- So the bestiary breaks down trait versus category or family, but then sticks
-- them all in the trait position on the stat block, so I think we just do it
-- all with traits. Thoughts?

CREATE TABLE monsters (
  monster_id INTEGER PRIMARY KEY,
  is_comty_use BOOLEAN NOT NULL, -- false = no community use policy req
  sourceentry_id INTEGER, -- new style source entries
  -- monstercategories_id INTEGER, -- Humanoid etc..
  "name" TEXT NOT NULL UNIQUE,
  "level" INTEGER,
  alignment_id INTEGER, -- i.e. NG, LE etc..
  perception INTEGER,
  size_id INTEGER, -- i.e. large medium small etc..
  ac INTEGER,
  fortitude INTEGER,
  reflex INTEGER,
  will INTEGER,
  hp INTEGER,
  land_speed INTEGER, -- we decided to make the speeds flattened as they don't
                      -- save much extra space
  burrow_speed INTEGER,
  climb_speed INTEGER,
  fly_speed INTEGER,
  swim_speed INTEGER,
  str_mod INTEGER,
  dex_mod INTEGER,
  con_mod INTEGER,
  int_mod INTEGER,
  wis_mod INTEGER,
  cha_mod INTEGER,
  specific_monster_flavortext TEXT,
  FOREIGN KEY (alignment_id) REFERENCES alignments(alignments_id),
  FOREIGN KEY (size_id) REFERENCES sizes(size_id),
  FOREIGN KEY (sourceentry_id) REFERENCES sourceentries(sourceentry_id)
);

CREATE TABLE monsterflavortexttypes (
  monsterflavortexttype_id INTEGER PRIMARY KEY,
  "name" TEXT NOT NULL UNIQUE
  -- page 7 Bestiary
  -- 'Monster Category' -- i.e. "Bear"
  -- THE FOLLOWING ARE THE SIDEBAR CONTENT FROM BESTIARY
  -- 'Advice and Rules'
  -- 'Related Creatures'
  -- 'Additional Lore'
  -- 'Treasure and Rewards'
  -- 'Locations'
);

CREATE TABLE monsterflavortexts (
  monsterflavortext_id INTEGER PRIMARY KEY,
  monsterflavortexttype_id INTEGER,
  heading TEXT NOT NULL,
  mft_text TEXT NOT NULL,
  FOREIGN KEY (monsterflavortexttype_id) REFERENCES monsterflavortexttypes(monsterflavortexttype_id)
);

CREATE TABLE monsters_monsterflavortexts (
  id INTEGER PRIMARY KEY,
  monster_id,
  monsterflavortext_id,
  FOREIGN KEY (monster_id) REFERENCES monsters(monster_id),
  FOREIGN KEY (monsterflavortext_id) REFERENCES monsterflavortexts(monsterflavortext_id)
);

CREATE TABLE monsters_senses (
  id INTEGER PRIMARY KEY,
  monster_id INTEGER NOT NULL,
  sense_id INTEGER NOT NULL,
  FOREIGN KEY (monster_id) REFERENCES monsters(monster_id),
  FOREIGN KEY (sense_id) REFERENCES senses(senses_id)
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
  monster_id INTEGER NOT NULL,
  skills_id INTEGER NOT NULL, -- will ID the specific skill
  skill_mod INTEGER NOT NULL, -- will hold the modifier value
  UNIQUE(monster_id, skills_id), -- so we don't get duplicate rows for a specific monster
  FOREIGN KEY (monster_id) REFERENCES monsters(monster_id),
  FOREIGN KEY (skills_id) REFERENCES skills(skills_id)
);

CREATE TABLE monsters_traits (
  id INTEGER PRIMARY KEY,
  monster_id INTEGER NOT NULL,
  trait_id INTEGER NOT NULL,
  FOREIGN KEY (monster_id) REFERENCES monsters(monster_id),
  FOREIGN KEY (trait_id) REFERENCES traits(trait_id)
);

CREATE TABLE monsters_langs (
  id INTEGER PRIMARY KEY,
  monster_id INTEGER NOT NULL,
  lang_id INTEGER NOT NULL,
  FOREIGN KEY (monster_id) REFERENCES monsters(monster_id),
  FOREIGN KEY (lang_id) REFERENCES langs(lang_id)
);

CREATE TABLE monsteractions (
  monsteraction_id INTEGER PRIMARY KEY,
  "name" TEXT
  -- TODO
);

CREATE TABLE monsters_actions (
  id INTEGER PRIMARY KEY,
  monster_id INTEGER NOT NULL,
  monsteraction_id INTEGER NOT NULL
);
