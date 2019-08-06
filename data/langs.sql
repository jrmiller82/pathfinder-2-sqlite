-- -*- mode:sql sql-product:sqlite -*-

INSERT INTO langsrarity (rarirty_id, rarity_name)
VALUES
  (1, 'Common'),
  (2, 'Uncommon'),
  (3, 'Secret');


-- TODO These values are from Tables 2-1, 2-2, and 2-3 on page 65 CRB

INSERT INTO langs (lang_id, rarity_id, lang, speakers)
VALUES
  -- Common languages
  (1, 1, 'Common', 'Humans, dwarves, elves, halflings, and other common ancestries'),
  (2, 1, 'Draconic', 'TODO'),
  (3, 1, 'Dwarven', 'TODO'),
  (4, 1, 'Elven', 'TODO'),
  (5, 1, 'Gnomish', 'TODO'),
  (6, 1, 'Goblin', 'TODO'),
  (7, 1, 'Halfling', 'TODO'),
  (8, 1, 'Jotun', 'TODO'),
  (9, 1, 'Orcish', 'TODO'),
  (10, 1, 'Sylvan', 'TODO'),
  (11, 1, 'Undercommon', 'TODO'),
  -- Uncommon languages
  (100, 2, 'Abyssal', 'TODO'),
  (101, 2, 'Aklo', 'TODO'),
  (102, 2, 'Aquan', 'TODO'),
  (103, 2, 'Auran', 'TODO'),
  (104, 2, 'Celestial', 'TODO'),
  (105, 2, 'Gnoll', 'TODO'),
  (106, 2, 'Ignan', 'TODO'),
  (107, 2, 'Infernal', 'TODO'),
  (108, 2, 'Necril', 'TODO'),
  (109, 2, 'Shadowtongue', 'TODO'),
  (110, 2, 'Terran', 'TODO'),
  -- Secret languages
  (200, 3, 'Druidic', 'Druids');

