-- -*- mode:sql sql-product:sqlite -*-

PRAGMA foreign_keys = ON; -- database requires foreign key checking to be turned
                          -- on PER CONNECTION

INSERT INTO abilityscores (abilityscores_id, flag_rep, short_name, long_name)
VALUES
  (1, 1, 'STR', 'Strength'),
  (2, 2, 'DEX', 'Dexterity'),
  (3, 4, 'CON', 'Constitution'),
  (4, 8, 'INT', 'Intelligence'),
  (5, 16, 'WIS', 'Wisdom'),
  (6, 32, 'CHA', 'Charisma'),
  (7, 64, 'Free1', 'Free 1'),
  (8, 128, 'Free2', 'Free 2');
