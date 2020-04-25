-- -*- mode:sql sql-product:sqlite -*-

PRAGMA foreign_keys = ON; -- database requires foreign key checking to be turned
                          -- on PER CONNECTION

INSERT INTO frequency (
  freq_id,
  freq_descr
)
VALUES
  (1, 'once per round'),
  (2, 'once per turn'),
  (3, 'once per minute'),
  (4, 'once every 10 minutes'),
  (5, 'once per hour'),
  (6, 'once per day');
 -- (7, 'once per week'),
 -- (8, 'once per month'),
 -- (9, 'once per year');