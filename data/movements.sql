-- -*- mode:sql sql-product:sqlite -*-

PRAGMA foreign_keys = ON;

-- TODO any other movements?

BEGIN TRANSACTION;
INSERT INTO movements VALUES(0, 'Land'); -- This is already incorporated into
                                         -- monsters and ancestries but is
                                         -- included here so we have the type of
                                         -- speed
INSERT INTO movements VALUES(1, 'Burrow'); 
INSERT INTO movements VALUES(2, 'Climb'); 
INSERT INTO movements VALUES(3, 'Fly'); 
INSERT INTO movements VALUES(4, 'Swim'); 
COMMIT;
