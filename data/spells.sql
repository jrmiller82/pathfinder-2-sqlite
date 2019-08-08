INSERT INTO spelltypes (
  (1, 'Spell'),
  (2, 'Cantrip'),
  (3, 'Focus'),
  (3, 'Ritual')
);

INSERT INTO spellcomponents (
  spellcomponents_id,
  name)
VALUES
  (1, 'Material'),
  (2, 'Verbal'),
  (3, 'Somatic'),
  (4, 'Focus');

INSERT INTO spelltraditions (
  spelltraditions_id,
  name
)
VALUES
  (1, 'Arcane'),
  (2, 'Divine'),
  (3, 'Occult'),
  (4, 'Primal');

/* TODO fill in spellschool descriptions */

INSERT INTO spellschools (
  spellschools_id,
  sources_id,
  sources_pages,
  name,
  descr
)
VALUES
  (1, 1, '297','Abjuration', 'TODO'),
  (2, 1, '297','Conjuration', 'TODO'),
  (3, 1, '297','Divination', 'TODO'),
  (4, 1, '297','Enchantment', 'TODO'),
  (5, 1, '298','Evocation', 'TODO'),
  (6, 1, '298','Illusion', 'TODO'),
  (7, 1, '298','Necromancy', 'TODO'),
  (8, 1, '298','Transmutation', 'Transmutation spells make alterations to or transform the physical form of a creature or object. The morph and polymorph traits appear primarily in transmutation spells.'),
