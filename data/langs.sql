-- -*- mode:sql sql-product:sqlite -*-

PRAGMA foreign_keys = ON; -- database requires foreign key checking to be turned
                          -- on PER CONNECTION

INSERT INTO langsrarity (rarity_id, rarity_name)
VALUES
  (1, 'Common'),
  (2, 'Uncommon'),
  (3, 'Secret');


-- These values are from Tables 2-1, 2-2, and 2-3 on page 65 CRB

INSERT INTO langs (lang_id, rarity_id, sources_id, sources_pages, lang, speakers)
VALUES
  -- Common languages
  (1, 1, 1, '65', 'Common', 'Humans, dwarves, elves, halflings, and other common ancestries'),
  (2, 1, 1, '65', 'Draconic', 'Dragons, reptilian humanoids'),
  (3, 1, 1, '65', 'Dwarven', 'Dwarves'),
  (4, 1, 1, '65', 'Elven', 'Elves, half-elves'),
  (5, 1, 1, '65', 'Gnomish', 'Gnomes'),
  (6, 1, 1, '65', 'Goblin', 'Goblins, hobgoblins, bugbears'),
  (7, 1, 1, '65', 'Halfling', 'Halflings'),
  (8, 1, 1, '65', 'Jotun', 'Giants, ogres, trolls, ettins, cyclopes'),
  (9, 1, 1, '65', 'Orcish', 'Orcs, half-orcs'),
  (10, 1,1, '65', 'Sylvan', 'Fey, centaurs, plant creatures'),
  (11, 1,1, '65', 'Undercommon', 'Drow, duergars, xulgaths'),
  -- Uncommon languages
  (100, 2, 1, '65', 'Abyssal', 'Demons'),
  (101, 2, 1, '65', 'Aklo', 'Deros, evil fey, otherworldly monsters'),
  (102, 2, 1, '65', 'Aquan', 'Aquatic creatures, water elemental creatures'),
  (103, 2, 1, '65', 'Auran', 'Air elemental creatures, flying creatures'),
  (104, 2, 1, '65', 'Celestial', 'Angels'),
  (105, 2, 1, '65', 'Gnoll', 'Gnolls'),
  (106, 2, 1, '65', 'Ignan', 'Fire elemental creatures'),
  (107, 2, 1, '65', 'Infernal', 'Devils'),
  (108, 2, 1, '65', 'Necril', 'Ghouls, intelligent undead'),
  (109, 2, 1, '65', 'Shadowtongue', 'Nidalese, Shadow Plane creatures'),
  (110, 2, 1, '65', 'Terran', 'Earth elemental creatures'),
  -- Secret languages
  (200, 3, 1, '65', 'Druidic', 'Druids'),

  -- Bestiary Languages not in CRB
  (300, 1, 2, '8', 'Utopian', 'Aeons');

