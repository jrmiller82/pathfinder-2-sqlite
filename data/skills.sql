-- -*- mode:sql sql-product:sqlite -*-

PRAGMA foreign_keys = ON;

-- TODO Need to enter descriptions

BEGIN TRANSACTION;
INSERT INTO skills VALUES(1, 1, '240', 'Acrobatics', 'TODO');
INSERT INTO skills VALUES(2, 1, '241', 'Arcana', 'TODO');
INSERT INTO skills VALUES(3, 1, '241', 'Athletics', 'TODO');
INSERT INTO skills VALUES(4, 1, '243', 'Crafting', 'TODO');
INSERT INTO skills VALUES(5, 1, '245', 'Deception', 'TODO');
INSERT INTO skills VALUES(6, 1, '246', 'Diplomacy', 'TODO');
INSERT INTO skills VALUES(7, 1, '247', 'Intimidation', 'TODO');
INSERT INTO skills VALUES(8, 1, '247', 'Lore', 'TODO'); -- TODO special case
INSERT INTO skills VALUES(9, 1, '248', 'Medicine', 'TODO');
INSERT INTO skills VALUES(10, 1, '249', 'Nature', 'TODO');
INSERT INTO skills VALUES(11, 1, '249', 'Occultism', 'TODO');
INSERT INTO skills VALUES(12, 1, '250', 'Performance', 'TODO');
INSERT INTO skills VALUES(13, 1, '250', 'Religion', 'TODO');
INSERT INTO skills VALUES(14, 1, '250', 'Society', 'TODO');
INSERT INTO skills VALUES(15, 1, '251', 'Stealth', 'TODO');
INSERT INTO skills VALUES(16, 1, '252', 'Survival', 'TODO');
INSERT INTO skills VALUES(17, 1, '253', 'Thievery', 'TODO');
COMMIT;
