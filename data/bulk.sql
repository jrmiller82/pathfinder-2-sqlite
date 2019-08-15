
-- TODO update sizes table with a FK to bulk to get the data from the table on
-- pg 272 CRB

PRAGMA foreign_keys = ON; -- database requires foreign key checking to be turned
                          -- on PER CONNECTION
INSERT INTO bulk (
  bulk_id,
  sources_id,
  sources_pages,
  short_name,
  long_name,
  numerical)
VALUES
  (1, 1, '271-72', '-', 'Negligible', 0.0),
  (2, 1, '271-72', 'L', 'Light', 0.1),
  (3, 1, '271-72', '1', 'One', 1.0),
  (4, 1, '271-72', '2', 'Two', 2.0),
  (5, 1, '271-72', '3', 'Three', 3.0),
  (6, 1, '271-72', '4', 'Four', 4.0),
  (7, 1, '271-72', '5', 'Five', 5.0);

