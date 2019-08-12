
INSERT INTO spelltypes (
  spelltypes_id,
  name
)
VALUES
  (1, 'Spell'),
  (2, 'Cantrip'),
  (3, 'Focus'),
  (4, 'Ritual');

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
  (1, 1, '297','Abjuration', 'Abjurations protect and ward. They create barriers that keep out attacks, effects, or even certain types of creatures. They also create effects that harm trespassers or banish interlopers.'),
  (2, 1, '297','Conjuration', 'Conjuration spells transport creatures via teleportation, create an object, or bring a creature or object from somewhere else (typically from another plane) to follow your commands.\n\nConjuration spells often have the teleportation trait, and the creatures summoned by conjuration spells have the summoned trait.'),
  (3, 1, '297','Divination', 'Divinations allow you to learn the secrets of the present, past, and future. They bestow good fortune, grant you the ability to perceive remote locations, and reveal secret knowledge.\n\nDivinations often have the detection trait if they find something, the prediction trait if they grant you insight about what might happen in the future, the revelation trait if they show things as they truly are, or the scrying trait if they let you perceive another location.'),
  (4, 1, '297','Enchantment', 'Enchantments affect the minds and emotions of other creatures—sometimes to influence and control them, and other times to bolster them to greater heights of courage. Enchantment spells almost always have the mental trait, and many have the emotion trait or the fear trait.'),
  (5, 1, '298','Evocation', 'Evocations capture magical energy and then shape it to harm your foes or protect your allies. Evocation spells often have a trait that comes from the type of damage they deal, such as acid, cold, fire, force, or sonic.'),
  (6, 1, '298','Illusion', 'Illusions create the semblance of something real, fooling the eyes, ears, and other senses. They almost always have the mental trait, and depending on how the illusion is perceived, they might also have the auditory or visual trait.'),
  (7, 1, '298','Necromancy', 'Necromancy spells harness the power of life and death. They can sap life essence or sustain creatures with life-saving healing. Necromancy spells often have the curse, death, healing, negative, or positive traits.'),
  (8, 1, '298','Transmutation', 'Transmutation spells make alterations to or transform the physical form of a creature or object. The morph and polymorph traits appear primarily in transmutation spells.');
