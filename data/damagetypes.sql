-- -*- mode:sql sql-product:sqlite -*-

PRAGMA foreign_keys = ON; -- database requires foreign key checking to be turned
                          -- on PER CONNECTION

-- TODO insert the damage category descriptions in MARKDOWN format from page 452.

BEGIN TRANSACTION;
INSERT INTO damagecategories VALUES(1,1,'452','Physical','TODO FROM PAGE 452');
INSERT INTO damagecategories VALUES(2,1,'452','Energy','TODO FROM PAGE 452');
INSERT INTO damagecategories VALUES(3,1,'452','Alignment','TODO FROM PAGE 452');
INSERT INTO damagecategories VALUES(4,1,'452','Mental','TODO FROM PAGE 452');
INSERT INTO damagecategories VALUES(5,1,'452','Poison','TODO FROM PAGE 452');
INSERT INTO damagecategories VALUES(6,1,'452','Bleed','TODO FROM PAGE 452');
INSERT INTO damagecategories VALUES(7,1,'452','Precision','TODO FROM PAGE 452');
INSERT INTO damagecategories VALUES(8,1,'452','Precious Materials','TODO FROM PAGE 452');
COMMIT;

-- TODO insert damage descriptions (shortened from the damagecategories descriptions)

BEGIN TRANSACTION;
INSERT INTO damagetypes VALUES(1,1,'452',1,'B','Bludgeoning','Bludgeoning damage comes from weapons and hazards that deal blunt-force trauma, like a hit from a club or being dashed against the rocks.');
INSERT INTO damagetypes VALUES(2,1,'452',1,'P','Piercing','TODO Pg 452');
INSERT INTO damagetypes VALUES(3,1,'452',1,'S','Slashing','TODO Pg 452');
INSERT INTO damagetypes VALUES(4,1,'452',2,NULL,'Acid','TODO Pg 452');
INSERT INTO damagetypes VALUES(5,1,'452',2,NULL,'Cold','TODO Pg 452');
INSERT INTO damagetypes VALUES(6,1,'452',2,NULL,'Electricity','TODO Pg 452');
INSERT INTO damagetypes VALUES(7,1,'452',2,NULL,'Fire','TODO Pg 452');
INSERT INTO damagetypes VALUES(8,1,'452',2,NULL,'Sonic','TODO Pg 452');
INSERT INTO damagetypes VALUES(9,1,'452',2,NULL,'Positive','TODO Pg 452');
INSERT INTO damagetypes VALUES(10,1,'452',2,NULL,'Negative','TODO Pg 452');
INSERT INTO damagetypes VALUES(11,1,'452',3,NULL,'Chaotic','TODO Pg 452');
INSERT INTO damagetypes VALUES(12,1,'452',3,NULL,'Evil','TODO Pg 452');
INSERT INTO damagetypes VALUES(13,1,'452',3,NULL,'Good','TODO Pg 452');
INSERT INTO damagetypes VALUES(14,1,'452',3,NULL,'Lawful','TODO Pg 452');
INSERT INTO damagetypes VALUES(15,1,'452',4,NULL,'Mental','TODO Pg 452');
INSERT INTO damagetypes VALUES(16,1,'452',5,NULL,'Poison','TODO Pg 452');
INSERT INTO damagetypes VALUES(17,1,'452',6,NULL,'Bleed','TODO Pg 452');
INSERT INTO damagetypes VALUES(18,1,'452',7,NULL,'Precision','TODO Pg 452');
INSERT INTO damagetypes VALUES(19,1,'452',8,NULL,'Precious Materials','TODO Pg 452');
COMMIT;
