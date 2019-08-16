-- -*- mode:sql sql-product:sqlite -*-

PRAGMA foreign_keys = ON; -- database requires foreign key checking to be turned
                          -- on PER CONNECTION

BEGIN TRANSACTION;
INSERT INTO ammunition VALUES(1,1,'282','Arrows',0.1,10,0.1,'These projectiles are the ammunition for bows. The shaft of an arrow is made of wood. It is stabilized in flight by fletching at one end and bears a metal head on the other.');
INSERT INTO ammunition VALUES(2,1,'281','Blowgun Darts',0.05,10,0.1,'These thin, light darts are typically made of hardwood and stabilized with fletching of down or fur. They are often hollow so they can be used to deliver poison.');
INSERT INTO ammunition VALUES(3,1,'281','Bolts',0.1,10,0.1,'Shorter than traditional arrows but similar in construction, bolts are the ammunition used by crossbows.');
INSERT INTO ammunition VALUES(4,1,'281','Sling Bullets',0.01,10,0.1,'These are small metal balls, typically either iron or lead, designed to be used as ammunition in slings.');
COMMIT;
