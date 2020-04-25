
PRAGMA foreign_keys = ON; -- database requires foreign key checking to be turned
                          -- on PER CONNECTION

INSERT INTO armorgroup (
  grp_id,
  sources_id,
  sources_pages,
  short_name,
  descr
)
VALUES
  (1, 1, '275', 'Chain', 'The armor is so flexible it can bend with a critical hit and absorb some of the blow. Reduce the damage from critical hits by either 4 + the value of the armor’s potency rune for medium armor, or 6 + the value of the armor’s potency rune for heavy armor. This can’t reduce the damage to less than the damage rolled for the hit before doubling for a critical hit.'),
  (2, 1, '275', 'Composite', 'The numerous overlapping pieces of this armor protect you from piercing attacks. You gain resistance to piercing damage equal to 1 + the value of the armor’s potency rune for medium armor, or 2 + the value of the armor’s potency rune for heavy armor.'),
  (3, 1, '275', 'Leather', 'The thick second skin of the armor disperses blunt force to reduce bludgeoning damage. You gain resistance to bludgeoning damage equal to 1 + the value of the armor’s potency rune for medium armor, or 2 + the value of the armor’s potency rune for heavy armor.'),
  (4, 1, '275', 'Plate', 'The sturdy plate provides no purchase for a cutting edge. You gain resistance to slashing damage equal to 1 + the value of the armor’s potency rune for medium armor, or 2 + the value of the armor’s potency rune for heavy armor.');

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
  (1, 1, '275', 1, 0, 'No armor', '-', 0.0, 0, NULL, NULL, NULL, NULL, 1, NULL, 'Not wearing protective garments.'),
  (2, 1, '275', 1, 0, 'Explorer''s clothing', '1 sp', 0.1, 0, 5, NULL, NULL, NULL, 2, NULL, 'Adventurers who don’t wear armor travel in durable clothing. Though it’s not armor and uses your unarmored defense proficiency, it still has a Dex Cap and can grant an item bonus to AC if etched with potency runes.'),
  -- light armor
  (3, 1, '275', 2, 0, 'Padded armor', '2 sp', 0.2, 1, 3, NULL, NULL, 10, 2, NULL, 'This armor is simply a layer of heavy, quilted cloth, but it is sometimes used because it’s so inexpensive. Padded armor is easier to damage and destroy than other types of armor. Heavy armor comes with a padded armor undercoat included in its Price, though it loses the comfort trait when worn under heavy armor. You can wear just that padded armor undercoat to sleep in, if your heavy armor is destroyed, or when otherwise not wearing the full heavy armor. This allows you to keep the armor invested and benefit from the power of any runes on the associated heavy armor, but no one else can wear your heavy armor without the padded undercoat.'),
  (4, 1, '275', 2, 0, 'Leather', '2 gp', 2.0, 1, 4, -1, NULL, 10, 3, NULL, 'A mix of flexible and molded boiled leather, a suit of this type of armor provides some protection with maximum flexibility.'),
  (5, 1, '275', 2, 0, 'Studded leather', '3 gp', 3.0, 2, 3, -1, NULL, 12, 3, NULL, 'This leather armor is reinforced with metal studs and sometimes small metal plates, providing most of the flexibility of leather armor with more robust protection.'),
  (6, 1, '275', 2, 0, 'Chain shirt', '5 gp', 5.0, 2, 3, -1, NULL, 12, 3, NULL, 'Sometimes called a hauberk, this is a long shirt constructed of the same metal rings as chainmail. However, it is much lighter than chainmail and protects only the torso, upper arms, and upper legs of its wearer.
'),
  -- medium armor
  (7, 1, '275', 3, 0, 'Hide', '2 gp', 2.0, 3, 2, -2, -5, 14, 4, 3, 'A mix of furs, sturdy hide, and sometimes molded boiled leather, this armor provides protection due to its layers of leather, though its bulkiness slows the wearer down and decreases mobility.'),
  (8, 1, '275', 3, 0, 'Scale mail', '4 gp', 4.0, 3, 2, -2, -5, 14, 4, 2, 'Scale mail consists of many metal scales sewn onto a reinforced leather backing, often in the form of a long shirt that protects the torso, arms, and legs.'),
  (9, 1, '275', 3, 0, 'Chain mail', '6 gp', 6.0, 4, 1, -2, -5, 16, 4, 1, '
A suit of chain mail consists of several pieces of armor composed of small metal rings linked together in a protective mesh. It typically includes a chain shirt, leggings, a pair of arms, and a coif, collectively protecting most of the body.'),
  (10, 1, '275', 3, 0,  'Breastplate', '8 gp', 8.0, 4, 1, -2, -5, 16, 4, 4, 'Though referred to as a breastplate, this type of armor consists of several pieces of plate or half-plate armor that protect the torso, chest, neck, and sometimes the hips and lower legs. It strategically grants some of the protection of plate while allowing greater flexibility and speed.'),
  -- heavy armor
  (11, 1, '275', 4, 1, 'Splint mail', '13 gp', 13.0, 5, 1, -3, -10, 16, 5, 2, 'This type of armor is chain mail reinforced with flexible, interlocking metal plates, typically located on the wearer’s torso, upper arms, and legs. A suit of this armor comes with an undercoat of padded armor and a pair of gauntlets.'),
  (12, 1, '275', 4, 1, 'Half plate', '18 gp', 18.0, 5, 1, -3, -10, 16, 5, 4, 'Half plate consists of most of the upper body plates used in full plate, with lighter or sparser steel plate protection for the arms and legs. This provides some of the protection of full plate with greater flexibility and speed. A suit of this armor comes with an undercoat of padded armor and a pair of gauntlets.'),
  (13, 1, '275', 4, 2, 'Full plate', '30 gp', 30.0, 6, 0, -3, -10, 18, 6, 4, 'Plate mail consists of interlocking plates that encase nearly the entire body in a carapace of steel. It is costly and heavy, and the wearer often requires help to don it correctly, but it provides some of the best defense armor can supply. A suit of this armor comes with an undercoat of padded armor and a pair of gauntlets.');


-- TODO INSERT into armor_traits table
INSERT INTO armor_traits (armor_id, trait_id)
VALUES
  (2, 88), -- explorer's clothing and comfort
  (3, 88), -- padded and comfort
  (6, 89), -- chain shirt flexible
  (6, 90), -- chain shirt noisy
  (9, 89), -- chain mail flexible
  (9, 90), -- chain mail noisy
  (13, 87); -- full plate bulwark
