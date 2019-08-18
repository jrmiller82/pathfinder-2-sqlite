-- -*- mode:sql sql-product:sqlite -*-

PRAGMA foreign_keys = ON;

-- TODO Need to enter descriptions

BEGIN TRANSACTION;
INSERT INTO skills (1, 1, '240', 'Acrobatics', 'TODO');
INSERT INTO skills (2, 1, '241', 'Arcana', 'TODO');
INSERT INTO skills (3, 1, '241', 'Athletics', 'TODO');
INSERT INTO skills (4, 1, '243', 'Crafting', 'TODO');
INSERT INTO skills (5, 1, '245', 'Deception', 'TODO');
INSERT INTO skills (6, 1, '246', 'Diplomacy', 'TODO');
INSERT INTO skills (7, 1, '247', 'Intimidation', 'TODO');
INSERT INTO skills (8, 1, '247', 'Lore', 'TODO'); -- TODO special case
INSERT INTO skills (9, 1, '248', 'Medicine', 'TODO');
INSERT INTO skills (10, 1, '249', 'Nature', 'TODO');
INSERT INTO skills (11, 1, '249', 'Occultism', 'TODO');
INSERT INTO skills (12, 1, '250', 'Performance', 'TODO');
INSERT INTO skills (13, 1, '250', 'Religion', 'TODO');
INSERT INTO skills (14, 1, '250', 'Society', 'TODO');
INSERT INTO skills (15, 1, '251', 'Stealth', 'TODO');
INSERT INTO skills (16, 1, '252', 'Survival', 'TODO');
INSERT INTO skills (17, 1, '253', 'Thievery', 'TODO');
COMMIT;
