-- -*- mode:sql sql-product:sqlite -*-

PRAGMA foreign_keys = ON; -- database requires foreign key checking to be turned
                          -- on PER CONNECTION

BEGIN TRANSACTION;
INSERT INTO weapongroups VALUES(1,1,'283','Axe','TODO descr from pg 283-84');
INSERT INTO weapongroups VALUES(2,1,'284','Bomb','TODO descr from pg 283-84');
INSERT INTO weapongroups VALUES(3,1,'284','Bow','TODO descr from pg 283-84');
INSERT INTO weapongroups VALUES(4,1,'284','Brawling','TODO descr from pg 283-84');
INSERT INTO weapongroups VALUES(5,1,'284','Club','TODO descr from pg 283-84');
INSERT INTO weapongroups VALUES(6,1,'284','Dart','TODO descr from pg 283-84');
INSERT INTO weapongroups VALUES(7,1,'284','Flail','TODO descr from pg 283-84');
INSERT INTO weapongroups VALUES(8,1,'284','Hammer','TODO descr from pg 283-84');
INSERT INTO weapongroups VALUES(9,1,'284','Knife','TODO descr from pg 283-84');
INSERT INTO weapongroups VALUES(10,1,'284','Pick','TODO descr from pg 283-84');
INSERT INTO weapongroups VALUES(11,1,'284','Polearm','TODO descr from pg 283-84');
INSERT INTO weapongroups VALUES(12,1,'284','Shield','TODO descr from pg 283-84');
INSERT INTO weapongroups VALUES(13,1,'284','Sling','TODO descr from pg 283-84');
INSERT INTO weapongroups VALUES(14,1,'284','Spear','TODO descr from pg 283-84');
INSERT INTO weapongroups VALUES(15,1,'284','Sword','TODO descr from pg 283-84');
COMMIT;

BEGIN TRANSACTION;
INSERT INTO weaponcategories VALUES(1, 'Unarmed');
INSERT INTO weaponcategories VALUES(2, 'Simple');
INSERT INTO weaponcategories VALUES(3, 'Martial');
INSERT INTO weaponcategories VALUES(4, 'Advanced');
COMMIT;
