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
  (2, 1, 'Draconic', 'Dragons, reptilian humanoids'),
  (3, 1, 'Dwarven', 'Dwarves'),
  (4, 1, 'Elven', 'Elves, half-elves'),
  (5, 1, 'Gnomish', 'Gnomes'),
  (6, 1, 'Goblin', 'Goblins, hobgoblins, bugbears'),
  (7, 1, 'Halfling', 'Halflings'),
  (8, 1, 'Jotun', 'Giants, ogres, trolls, ettins, cyclopes'),
  (9, 1, 'Orcish', 'Orcs, half-orcs'),
  (10, 1, 'Sylvan', 'Fey, centaurs, plant creatures'),
  (11, 1, 'Undercommon', 'Drow, duergars, xulgaths'),
  -- Uncommon languages
  (100, 2, 'Abyssal', 'Demons'),
  (101, 2, 'Aklo', 'Deros, evil fey, otherworldly monsters'),
  (102, 2, 'Aquan', 'Aquatic creatures, water elemental creatures'),
  (103, 2, 'Auran', 'Air elemental creatures, flying creatures'),
  (104, 2, 'Celestial', 'Angels'),
  (105, 2, 'Gnoll', 'Gnolls'),
  (106, 2, 'Ignan', 'Fire elemental creatures'),
  (107, 2, 'Infernal', 'Devils'),
  (108, 2, 'Necril', 'Ghouls, intelligent undead'),
  (109, 2, 'Shadowtongue', 'Nidalese, Shadow Plane creatures'),
  (110, 2, 'Terran', 'Earth elemental creatures'),
  -- Secret languages
  (200, 3, 'Druidic', 'Druids');

