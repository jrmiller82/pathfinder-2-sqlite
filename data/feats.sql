-- -*- mode:sql sql-product:sqlite -*-

INSERT INTO featprereqs (featprereqs_id, feat_id, descr)
VALUES
  (1, NULL, 'Ancestry Level 1'),
  (2, NULL, 'Ancestry Level 5'),
  (3, NULL, 'Ancestry Level 9'),
  (4, NULL, 'Ancestry Level 13'),
  (5, 3, 'Feat: Rock Runner'),
  (6, 2, 'Feat: Dwarven Weapon Familiarity');

INSERT INTO feats (
  feat_id,
  sources_id,
  sources_pages,
  short_name,
  descr)
VALUES
  (1, 1, '36', 'Dwarven Lore', 'TODO'),
  (2, 1, '36', 'Dwarven Weapon Familiarity', 'TODO'),
  (3, 1, '36', 'Rock Runner', 'TODO'),
  (4, 1, '36', 'Stonecunning', 'TODO'),
  (5, 1, '36', 'Unburdened Iron', 'TODO'),
  (6, 1, '36', 'Vengeful Hatred', 'TODO'),
  (7, 1, '36-37', 'Boulder Roll', 'TODO'),
  (8, 1, '37', 'Dwarven Weapon Cunning', 'TODO'),
  (9, 1, '37', 'Mountain''s Stoutness', 'TODO'),
  (10, 1, '37', 'Stonewalker', 'TODO'),
  (11, 1, '37', 'Dwarven Weapon Expertise', 'TODO');
/* TODO continue all the ancestry, class, general and skill feats */

INSERT INTO feats_featprereqs (feat_id, featprereqs_id)
VALUES
  (1,1), -- Dwarven Lore
  (2,1), -- Dwarven Weapon Familiarity
  (3,1), -- Rock Runner
  (4,1), -- Stonecunning
  (5,1), -- Unburdened Iron
  (6,1), -- Vengeful Hatred
  (7,2), -- Boulder Roll
  (7,5), -- Boulder Roll
  (8,2), -- Dwarven Weapon Cunning
  (8,6), -- Dwarven Weapon Cunning
  (9,3), -- Mountain's Stoutness
  (10,3), -- Stonewalker
  (11,4), -- Dwarven Weapon Expertise
  (11,6); -- Dwarven Weapon Expertise

INSERT INTO feats_traits (feat_id, trait_id)
VALUES
  -- Dwarf Ancestry Trait
  (1, 79), -- Dwarven Lore
  (2, 79), -- Dwarven Weapon Familiarity
  (3, 79), -- Rock Runner
  (4, 79), -- Stonecunning
  (5, 79), -- Unburdened Iron
  (6, 79), -- Vengeful Hatred
  (7, 79), -- Boulder Roll
  (8, 79), -- Dwarven Weapon Cunning
  (9, 79), -- Mountain's Stoutness
  (10, 79), -- Stonewalker
  (11, 79); -- Dwarven Weapon Expertise

