

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
  item_level,
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
  (1, 1, '275', 1, 0, 'No armor', '-', 0.0, 0, NULL, NULL, NULL, NULL, 1, NULL, 'TODO'),
  (2, 1, '275', 1, 0, 'Explorer''s clothing', '1 sp', 0.1, 0, 5, NULL, NULL, NULL, 2, NULL, 'TODO'),
  -- light armor
  (3, 1, '275', 2, 0, 'Padded armor', '2 sp', 0.2, 1, 3, NULL, NULL, 10, 2, NULL, 'TODO'),
  (4, 1, '275', 2, 0, 'Leather', '2 gp', 2.0, 1, 4, -1, NULL, 10, 3, NULL, 'TODO'),
  (5, 1, '275', 2, 0, 'Studded leather', '3 gp', 3.0, 2, 3, -1, NULL, 12, 3, NULL, 'TODO'),
  (6, 1, '275', 2, 0, 'Chain shirt', '5 gp', 5.0, 2, 3, -1, NULL, 12, 3, NULL, 'TODO'),
  -- medium armor
  (7, 1, '275', 3, 0, 'Hide', '2 gp', 2.0, 3, 2, -2, -5, 14, 4, 3, 'TODO'),
  (8, 1, '275', 3, 0, 'Scale mail', '4 gp', 4.0, 3, 2, -2, -5, 14, 4, 2, 'TODO'),
  (9, 1, '275', 3, 0, 'Chain mail', '6 gp', 6.0, 4, 1, -2, -5, 16, 4, 1, 'TODO'),
  (10, 1, '275', 3, 0,  'Breastplate', '8 gp', 8.0, 4, 1, -2, -5, 16, 4, 4, 'TODO'),
  -- heavy armor
  (11, 1, '275', 4, 1, 'Splint mail', '13 gp', 13.0, 5, 1, -3, -10, 16, 5, 2, 'TODO'),
  (12, 1, '275', 4, 1, 'Half plate', '18 gp', 18.0, 5, 1, -3, -10, 16, 5, 4, 'TODO'),
  (13, 1, '275', 4, 2, 'Full plate', '30 gp', 30.0, 6, 0, -3, -10, 18, 6, 4, 'TODO');



-- TODO INSERT into armor_traits table
INSERT INTO armor_traits (armor_id, traits_id)
VALUES
  (2, 88), -- explorer's clothing and comfort
  (3, 88), -- padded and comfort
  (6, 89), -- chain shirt flexible
  (6, 90), -- chain shirt noisy
  (9, 89), -- chain mail flexible
  (9, 90), -- chain mail noisy
  (13, 87); -- full plate bulwark
