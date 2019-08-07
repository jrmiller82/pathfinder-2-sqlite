
-- TODO update sizes table with a FK to bulk to get the data from the table on
-- pg 272 CRB
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

INSERT INTO armorgroup (
  grp_id,
  sources_id,
  sources_pages,
  short_name,
  descr
)
VALUES
  -- TODO fill in the TODO parts with the description text from pg 275
  (1, 1, '275', 'Chain', 'TODO'),
  (2, 1, '275', 'Composite', 'TODO'),
  (3, 1, '275', 'Leather', 'TODO'),
  (4, 1, '275', 'Plate', 'TODO');

INSERT INTO armorcategory (armor_category_id, short_name)
VALUES
  (1,'Unarmored'),
  (2,'Light Armor'),
  (3,'Medium Armor'),
  (4,'Heavy Armor');


INSERT INTO armor (
  armor_id,
  sources_id,
  sources_pages,
  armor_category_id,
  short_name,
  price_text,
  price_gp,
  ac_bonus,
  dex_cap,
  check_penalty,
  speed_penalty,
  strength,
  bulk_id,
  grp_id,
  descr
)
VALUES
  -- unarmored
  (1, 1, '275', 1, 'No armor', '-', 0.0, 0, NULL, NULL, NULL, NULL, 1, NULL, 'TODO'),
  (2, 1, '275', 1, 'Explorer''s Clothing', '1 sp', 0.1, 0, 5, NULL, NULL, NULL, 2, NULL, 'TODO'),
  -- light armor
  (3, 1, '275', 2, 'Padded Armor', '2 sp', 0.2, 1, 3, NULL, NULL, 10, 2, NULL, 'TODO'),
  (4, 1, '275', 2, 'Leather', '2 gp', 2.0, 1, 4, -1, NULL, 10, 3, NULL, 'TODO'),
  (5, 1, '275', 2, 'Studded Leather', '3 gp', 3.0, 2, 3, -1, NULL, 12, 3, NULL, 'TODO'),
  (6, 1, '275', 2, 'Chain Shirt', '5 gp', 5.0, 2, 3, -1, NULL, 12, 3, NULL, 'TODO'),
  -- medium armor
  (7, 1, '275', 2, 'Hide', '2 gp', 2.0, 3, 2, -2, -5, 14, 4, 3, 'TODO');
/* TODO continue on the armor inputs */



-- TODO INSERT into armor_traits table
INSERT INTO armor_traits (armor_id, traits_id)
VALUES
  (2, 88), -- explorer's clothing and comfort
  (3, 88), -- padded and comfort
  (6, 89), -- chain shirt flexible
  (6, 90); -- chain shirt noisy
