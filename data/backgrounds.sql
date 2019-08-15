-- -*- mode:sql sql-product:sqlite -*-

PRAGMA foreign_keys = ON; -- database requires foreign key checking to be turned
                          -- on PER CONNECTION

INSERT INTO backgrounds (
  bg_id,
  sources_id,
  sources_pages,
  bg_name,
  bg_descr)
VALUES
  -- CRB Backgrounds
  (1, 1, 60, 'Acolyte', 'TODO'),
  (2, 1, 60, 'Acrobat', 'TODO'),
  (3, 1, 60, 'Animal Whisperer', 'TODO'),
  (4, 1, 60, 'Artisan', 'TODO'),
  (5, 1, 60, 'Artist', 'TODO'),
  (6, 1, 60, 'Barkeep', 'TODO'),
  (7, 1, 60, 'Barrister', 'TODO'),
  (8, 1, 61, 'Bounty Hunter', 'TODO'),
  (9, 1, 61, 'Charlatan', 'TODO'),
  (10, 1, 61, 'Criminal', 'TODO'),
  (11, 1, 61, 'Detective', 'TODO'),
  (12, 1, 61, 'Emissary', 'TODO'),
  (13, 1, 61-62, 'Entertainer', 'TODO'),
  (14, 1, 62, 'Farmhand', 'TODO'),
  (15, 1, 62, 'Field Medic', 'TODO'),
  (16, 1, 62, 'Fortune Teller', 'TODO'),
  (17, 1, 62, 'Gambler', 'TODO'),
  (18, 1, 62, 'Gladiator', 'TODO'),
  (19, 1, 62, 'Guard', 'TODO'),
  (20, 1, 62, 'Herbalist', 'TODO'),
  (21, 1, 62, 'Hermit', 'TODO'),
  (22, 1, 62, 'Hunter', 'TODO'),
  (23, 1, 62-63, 'Laborer', 'TODO'),
  (24, 1, 63, 'Martial Disciple', 'TODO'),
  (25, 1, 63, 'Merchant', 'TODO'),
  (26, 1, 63, 'Miner', 'TODO'),
  (27, 1, 63, 'Noble', 'TODO'),
  (28, 1, 63, 'Nomad', 'TODO'),
  (29, 1, 63, 'Prisoner', 'TODO'),
  (30, 1, 63, 'Sailor', 'TODO'),
  (31, 1, 63-64, 'Scholar', 'TODO'),
  (32, 1, 64, 'Scout', 'TODO'),
  (33, 1, 64, 'Street Urchin', 'TODO'),
  (34, 1, 64, 'Tinker', 'TODO'),
  (35, 1, 64, 'Warrior', 'TODO');
