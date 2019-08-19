-- -*- mode:sql sql-product:sqlite -*-

PRAGMA foreign_keys = ON;

BEGIN TRANSACTION;
INSERT INTO alignments VALUES(1,'Lawful Good','LG');
INSERT INTO alignments VALUES(2,'Neutral Good','NG');
INSERT INTO alignments VALUES(3,'Chaotic Good','CG');
INSERT INTO alignments VALUES(4,'Lawful Neutral','LN');
INSERT INTO alignments VALUES(5,'True Neutral','N'); -- per CRB they use 'True
                                                     -- Neutral' and 'N' only
INSERT INTO alignments VALUES(6,'Chaotic Neutral','CN');
INSERT INTO alignments VALUES(7,'Lawful Evil','LE');
INSERT INTO alignments VALUES(8,'Neutral Evil','NE');
INSERT INTO alignments VALUES(9,'Chaotic Evil','CE');
COMMIT;
