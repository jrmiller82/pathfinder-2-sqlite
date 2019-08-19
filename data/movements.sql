-- -*- mode:sql sql-product:sqlite -*-

PRAGMA foreign_keys = ON;

BEGIN TRANSACTION;
INSERT INTO movements VALUES(1, 'Fly'); 
COMMIT;
