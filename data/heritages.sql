-- -*- mode:sql sql-product:sqlite -*-

/* TODO figure out how to model the reaction with heritages */

/* TODO fill in the rest of the heritages */

/* TODO how to add in vision for Half-elf Heritage? */

/* TODO maybe make vision trigger off of heritages instead of ancestries? Trying
not to repeat the vision data, but might just have to. It's not like it's
massive. */

INSERT INTO heritages (heritage_id,
                       short_name,
                       description)
VALUES
  (1, 'Ancient-Blooded Dwarf', 'Dwarven heroes of old could shrug off their enemies'' magic, and some of the resistance manifests in you. You gain the Call on Ancient Blood reaction.'),
  (2, 'Death Warden Dwarf', 'TODO'),
  (3, 'Forge Dwarf', 'TODO'),
  (4, 'Rock Dwarf', 'TODO'),
  (5, 'Strong-Blooded Dwarf', 'TODO'),
  (6, 'Half-Elf', 'Either one of your parents was an elf, or one or both were half-elves. You have pointed ears and other telltale signs of elf heritage. You gain the elf trait and low-light vision. In addition, you can select elf, half-elf, and human feats whenever you gain an ancestry feat.'),


INSERT INTO ancestries_heritages (ancestry_id, heritage_id)
VALUES
  (1, 1),
  (1, 2),
  (1, 3),
  (1, 4),
  (1, 5);

INSERT INTO heritages_traits (heritage_id, trait_id)
VALUES
  (6, 7),
  (6, 2),
  (6, 6);
