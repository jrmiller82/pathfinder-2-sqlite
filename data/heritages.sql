-- -*- mode:sql sql-product:sqlite -*-

/* TODO figure out how to model the reaction with heritages */

/* TODO how to add in vision for Half-elf Heritage? */

/* TODO maybe make vision trigger off of heritages instead of ancestries? Trying
not to repeat the vision data, but might just have to. It's not like it's
massive. */

/* TODO decide on how to represent paragraph breaks. See Issue #18 */

INSERT INTO heritages
  (heritage_id,
  short_name,
  description,
  bonus_type,
  bonus_id)
VALUES

  -- Start of Dwarf Heritages
  (1, 'Ancient-Blooded Dwarf', 'Dwarven heroes of old could shrug off their enemies'' magic, and some of that resistance manifests in you. You gain the Call on Ancient Blood reaction.', 'Reaction', 1),
  (2, 'Death Warden Dwarf', 'Your ancestors have been tomb guardians for generations, and the power they cultivated to ward off necromancy has passed on to you. If you roll a success on a saving throw against a necromancy effect, you get a critical success instead.', 0, 0),
  (3, 'Forge Dwarf', 'You have a remarkable adaptation to hot environments from ancestors who inhabited blazing deserts or volcanic chambers beneath the earth. This grants you fire resistance equal to half your level (minimum 1), and you treat environmental heat effects as if they were one step less extreme (incredible heat becomes extreme, extreme heat becomes severe, and so on).', 0, 0),
  (4, 'Rock Dwarf', 'Your ancestors lived and worked among the great ancient stones of the mountains or the depths of the earth. This makes you solid as a rock when you plant your feet. You gain a +2 circumstance bonus to your Fortitude or Reflex DC against attempts to Shove or Trip you. This bonus also applies to saving throws against spells or effects that attempt to knock you prone.', 0, 0),
  (5, 'Strong-Blooded Dwarf', 'Your blood runs hearty and strong, and you can shake off toxins. You gain poison resistance equal to half your level (minimum 1), and each of your successful saving throws against a poison affliction reduces its stage by 2, or by 1 for a virulent poison. Each critical success against an ongoing poison reduces its stage by 3, or by 2 for a virulent poison.', 0, 0),

  -- Start of Elf Heritages
  (100, 'Arctic Elf', 'You dwell deep in the frozen north and have gained incredible resilience against cold environments, granting you cold resistance equal to half your level (minimum 1). You treat environmental cold effects as if they were one step less extreme (incredible cold becomes extreme, extreme cold becomes severe, and so on).', 0, 0),
  (101, 'Cavern Elf', 'You were born or spent many years in underground tunnels or caverns where light is scarce. You gain darkvision.', 0, 0),
  (102, 'Seer Elf', 'You have an inborn ability to detect and understand magical phenomena. You can cast the detect magic cantrip as an arcane innate spell at will. A cantrip is heightened to a spell level equal to half your level rounded up. In addition, you gain a +1 circumstance bonus to checks to Identify Magic and to Decipher Writing of a magical nature. These skill actions typically use the Arcana, Nature, Occultism, or Religion skill.', 0, 0),
  (103, 'Whisper Elf', 'Your ears are finely tuned, able to detect even the slightest whispers of sound. As long as you can hear normally, you can use the Seek action to sense undetected creatures in a 60-foot cone instead of a 30-foot cone. You also gain a +2 circumstance bonus to locate undetected creatures that you could hear within 30 feet with a Seek action.', 0, 0),
  (104, 'Woodland Elf', 'You’re adapted to life in the forest or the deep jungle, and you know how to climb trees and use foliage to your advantage. When Climbing trees, vines, and other foliage, you move at half your Speed on a success and at full Speed on a critical success (and you move at full Speed on a success if you have Quick Climb). This doesn’t affect you if you’re using a climb Speed.', 0, 0),

  -- Start of Gnome Heritages
  (200, 'Chameleon Gnome', 'The color of your hair and skin is mutable, possibly due to latent magic. You can slowly change the vibrancy and the exact color, and the coloration can be different across your body, allowing you to create patterns or other colorful designs. It takes a single action for minor localized shifts and up to an hour for dramatic shifts throughout your body. While you’re asleep, the colors shift on their own in tune with your dreams, giving you an unusual coloration each morning. When you’re in an area where your coloration is roughly similar to the environment (for instance, forest green in a forest), you can use the single action to make minor localized shifts designed to help you blend into your surroundings. This grants you a +2 circumstance bonus to Stealth checks until your surroundings shift in coloration or pattern.', 0, 0),
  (201, 'Fey-Touched Gnome', 'The blood of the fey is so strong within you that you’re truly one of them. You gain the fey trait, in addition to the gnome and humanoid traits. Choose one cantrip from the <%SPELL.LIST%Primal%%>primal spell list. You can cast this spell as a primal innate spell at will. A cantrip is heightened to a spell level equal to half your level rounded up. You can change this cantrip to a different one from the same list once per day by meditating to realign yourself with the First World; this is a 10-minute activity that has the concentrate trait.', 0, 0),
  (202, 'Sensate Gnome', 'You see all colors as brighter, hear all sounds as richer, and especially smell all scents with incredible detail. You gain a special sense: imprecise scent with a range of 30 feet. This means you can use your sense of smell to determine the exact location of a creature (as explained on page 465). The GM will usually double the range if you’re downwind from the creature or halve the range if you’re upwind.', 0, 0),
  (204, 'Umbral Gnome', 'Whether from a connection to dark or shadowy fey, from the underground deep gnomes also known as svirfneblin, or another source, you can see in complete darkness. You gain darkvision.', 0, 0),
  (205, 'Wellspring Gnome', 'Some other source of magic has a greater hold on you than the primal magic of your fey lineage does. This connection might come from an occult plane or an ancient occult song; a deity, celestial, or fiend; magical effluent left behind by a mage war; or ancient rune magic.', 0, 0), -- TODO there was an error with wellspring gnome being ID 204; need to double check other data to make sure it has been accounted for elsewhere

  -- Start of Goblin Heritages
  (300, 'Charhide Goblin', 'Your ancestors have always had a connection to fire and a thicker skin, which allows you to resist burning. You gain fire resistance equal to half your level (minimum 1). You can also recover from being on fire more easily. Your flat check to remove persistent fire damage is DC 10 instead of DC 15, which is reduced to DC 5 if another creature uses a particularly appropriate action to help.', 0, 0),
  (301, 'Irongut Goblin', 'You can subsist on food that most folks would consider spoiled. You can keep yourself fed with poor meals in a settlement as long as garbage is readily available, without using the Subsist downtime activity. You can eat and drink things when you are sickened.', 0, 0),
  (302, 'Razortooth Goblin', 'Your family’s teeth are formidable weapons. You gain a jaws unarmed attack that deals 1d6 piercing damage. Your jaws are in the brawling group and have the finesse and unarmed traits.', 0, 0),
  (303, 'Snow Goblin', 'You are acclimated to living in frigid lands and have skin ranging from sky blue to navy in color, as well as blue fur. You gain cold resistance equal to half your level (minimum 1). You treat environmental cold effects as if they were one step less extreme (incredible cold becomes extreme, extreme cold becomes severe, and so on).', 0, 0),
  (304, 'Unbreakable Goblin', 'You’re able to bounce back from injuries easily due to an exceptionally thick skull, cartilaginous bones, or some other mixed blessing. You gain 10 Hit Points from your ancestry instead of 6. When you fall, reduce the falling damage you take as though you had fallen half the distance.', 0, 0),

  -- Start of Halfling Heritages
  (400, 'Gutsy Halfling', 'Your family line is known for keeping a level head and staving off fear when the chips were down, making them wise leaders and sometimes even heroes. When you roll a success on a saving throw against an emotion effect, you get a critical success instead.', 0, 0),
  (401, 'Hillock Halfling', 'Accustomed to a calm life in the hills, your people find rest and relaxation especially replenishing, particularly when indulging in creature comforts. When you regain Hit Points overnight, add your level to the Hit Points regained. When anyone uses the Medicine skill to Treat your Wounds, you can eat a snack to add your level to the Hit Points you regain from their treatment.', 0, 0),
  (402, 'Nomadic Halfling', 'Your ancestors have traveled from place to place for generations, never content to settle down. You gain two additional languages of your choice, chosen from among the common and uncommon languages available to you, and every time you take the ', 0, 0),
  (403, 'Twilight Halfling', 'Your ancestors performed many secret acts under the concealing cover of dusk, whether for good or ill, and over time they developed the ability to see in twilight beyond even the usual keen sight of halflings. You gain low-light vision.', 0, 0),
  (404, 'Wildwood Halfling', 'You hail from deep in a jungle or forest, and you’ve learned how to use your small size to wriggle through undergrowth, vines, and other obstacles. You ignore difficult terrain from trees, foliage, and undergrowth.', 0, 0),

  -- Start of Human Heritages
  (500, 'Half-Elf', 'Either one of your parents was an elf, or one or both were half-elves. You have pointed ears and other telltale signs of elf heritage. You gain the elf trait and low-light vision. In addition, you can select elf, half-elf, and human feats whenever you gain an ancestry feat.', 0, 0),
  (501, 'Half-Orc', 'One of your parents was an orc, or one or both were half-orcs. You have a green tinge to your skin and other indicators of orc heritage. You gain the orc trait and low-light vision. In addition, you can select orc, half-orc, and human feats whenever you gain an ancestry feat.', 0, 0),
  (502, 'Skilled Heritage', 'Your ingenuity allows you to train in a wide variety of skills. You become trained in one skill of your choice. At 5th level, you become an expert in the chosen skill.', 0, 0),
  (503, 'Versatile Heritage', 'Humanity’s versatility and ambition have fueled its ascendance to be the most common ancestry in most nations throughout the world. Select a general feat of your choice for which you meet the prerequisites (as with your ancestry feat, you can select this general feat at any point during character creation).', 0, 0);


INSERT INTO ancestries_heritages (ancestry_id, heritage_id)
VALUES
  -- Dwarf
  (1, 1),
  (1, 2),
  (1, 3),
  (1, 4),
  (1, 5),
  -- Elf
  (2, 100),
  (2, 101),
  (2, 102),
  (2, 103),
  (2, 104),
  -- Gnome
  (3, 200),
  (3, 201),
  (3, 202),
  (3, 203),
  (3, 204),
  -- Goblin
  (4, 300),
  (4, 301),
  (4, 302),
  (4, 303),
  (4, 304),
  -- Halfling
  (5, 400),
  (5, 401),
  (5, 402),
  (5, 403),
  (5, 404),
  -- Human
  (6, 500),
  (6, 501),
  (6, 502),
  (6, 503),
  (6, 504),
  -- Half-elf and half orc (yes, we know they're technically only a heritage,
  -- but we link it up to ancestry ids too)
  (7, 500),
  (8, 501);



/* TODO this table is likely not needed anymore; AND TODO the trait_ids likely don't match anymore. */
INSERT INTO heritages_traits
  (heritage_id, trait_id)
VALUES
  (6, 7),
  (6, 2),
  (6, 6);
