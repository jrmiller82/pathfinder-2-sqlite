-- -*- mode:sql sql-product:sqlite -*-

/* TODO figure out how to model the reaction with heritages */

/* TODO fill in the rest of the heritages */

/* TODO how to add in vision for Half-elf Heritage? */

/* TODO maybe make vision trigger off of heritages instead of ancestries? Trying
not to repeat the vision data, but might just have to. It's not like it's
massive. */

/* TODO decide on how to represent paragraph breaks. */

INSERT INTO heritages (heritage_id,
                       short_name,
                       description)
VALUES
  (1, 'Ancient-Blooded Dwarf', 'Dwarven heroes of old could shrug off their enemies'' magic, and some of the resistance manifests in you. You gain the Call on Ancient Blood reaction.'),
  (2, 'Death Warden Dwarf', 'Your ancestors have been tomb guardians for generations, and the power they cultivated to ward off necromancy has passed on to you. If you roll a success on a saving throw against a necromancy effect, you get a critical success instead.'),
  (3, 'Forge Dwarf', 'You have a remarkable adaptation to hot environments from ancestors who inhabited blazing deserts or volcanic chambers beneath the earth. This grants you fire resistance equal to half your level (minimum 1), and you treat environmental heat effects as if they were one step less extreme (incredible heat becomes extreme, extreme heat becomes severe, and so on).'),
  (4, 'Rock Dwarf', 'Your ancestors lived and worked among the great ancient stones of the mountains or the depths of the earth. This makes you solid as a rock when you plant your feet. You gain a +2 circumstance bonus to your Fortitude or Reflex DC against attempts to Shove or Trip you. This bonus also applies to saving throws against spells or effects that attempt to knock you prone. TODO INSERT PARAGRAH BREAK HERE In addition, if any effect would force you to move 10 feet or more, you are moved only half the distance.'),
  (5, 'Strong-Blooded Dwarf', 'TODO'),
  (6, 'Half-Elf', 'Either one of your parents was an elf, or one or both were half-elves. You have pointed ears and other telltale signs of elf heritage. You gain the elf trait and low-light vision. In addition, you can select elf, half-elf, and human feats whenever you gain an ancestry feat.');


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
