-- -*- mode:sql sql-product:sqlite -*-

PRAGMA foreign_keys = ON; -- database requires foreign key checking to be turned
                          -- on PER CONNECTION

INSERT INTO sizes (size_id, short_name, space_in_ft, reach_tall_ft, reach_long_ft) VALUES
  (1,'Tiny',4,0,0),
  (2,'Small',5,5,5),
  (3,'Medium',5,5,5),
  (4,'Large',10,10,5),
  (5,'Huge',15,15,10),
  (6,'Gargantuan',20,20,15);
