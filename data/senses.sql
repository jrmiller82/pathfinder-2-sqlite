-- -*- mode:sql sql-product:sqlite -*-

PRAGMA foreign_keys = ON; -- database requires foreign key checking to be turned
                          -- on PER CONNECTION

/* TODO add in any different vision types from Bestiary / Monsters */

/* TODO smoke vision is from young-red dragon */

INSERT INTO senses (senses_id,
                    sources_id,
                    sources_pages,
                     short_name,
                     description)
VALUES
  (1, 1, '465', 'Darkvision', 'A creature with darkvision or greater darkvision can see perfectly well in areas of darkness and dim light, though such vision is in black and white only. Some forms of magical darkness, such as a 4th-level *darkness* spell, block normal darkvision. A creature with greater darkvision, however, can see through even these forms of magical darkness.'),
  (2, 1, '465', 'Low-Light Vision', 'You can see in dim light as though it were bright light, and you ignore the concealed condition due to dim light.'),
  (3, 1, '51', 'Keen Eyes', 'Your eyes are sharp, allowing you to make out small details about concealed or even invisible creatures that others might miss. You gain a +2 circumstance bonus when using the Seek action to find hidden or undetected creatures within 30 feet of you. When you target an opponent that is concealed from you or hidden from you, reduce the DC of the flat check to 3 for a concealed target or 9 for a hidden one.'),
  (4, 1, 'TODO', 'None', 'No special vision.'),
  (5, 1, 'TODO', 'Smoke Vision', 'You can see perfectly in smoky conditions'),
  (6, 2, '342', 'All-Around Vision','This monster can see in all directions simultaneously, and therefore can’t be flanked.'),
  (7, 1, 'TODO', 'Snow Vision','This creature can see perfectly well in snowy conditions. this creature does not suffer any penalties to Perception checks while in snow.'),
  (8, 1, 'TODO', 'Manifold Vision','TODO (can not find any definition ref:https://2e.aonprd.com/Monsters.aspx?ID=249)'),
  (9, 1, '465', 'Greater Darkvision','A creature with darkvision or greater darkvision can see perfectly well in areas of darkness and dim light, though such vision is in black and white only. Some forms of magical darkness, such as a 4th-level *darkness* spell, block normal darkvision. A creature with greater darkvision, however, can see through even these forms of magical darkness.'),
  (10, 1, '465', 'Scent','TODO Bestiary 1 pg 344'),
  (11, 1, 'TODO', 'Echolocation','You can perceive the world by creating high-pitched noises and listening to their echoes. This gives you blindsight to a range of 40 feet.'),
  (12, 1, '465', 'Tremorsense','TODO CRB 465 or Bestiary 344'),
  (13, 1, 'TODO', 'Lightblindness','Creatures with light blindness are blinded for 1 round if exposed to bright light, such as sunlight or the Daylight spell. Such creatures are dazzled as long as they remain in areas of bright light.'),
  (14, 1, 'TODO', 'Thoughtsense','You automatically detect and locate conscious creatures within 60 feet, as if you possessed the blindsight ability.'),
  (15, 1, 'TODO', 'Bloodscent','This creature has the scent universal monster ability, but only for purposes of detecting and pinpointing injured creatures (below full hit points). Creatures below half their full hit points or suffering bleed damage are considered strong scents for this ability.'),
  (16, 1, 'TODO', 'Lifesense','TODO Bestiary 343'),
  (17, 1, 'TODO', 'Plaguesense','TODO find definiton for plaguesense. Senses sickness??'),
  (18, 1, 'TODO', 'Crystalsense','This creature can sense the presence of any crystals or gems within 30 feet as if using the scent ability.'),
  (19, 1, 'TODO', 'Fogvision','This creature can see perfectly in foggy conditions'),
  (20, 1, 'TODO', 'Wavesense','This sense allows a monster to feel vibrations caused by movement through a liquid. It’s an imprecise sense with a limited range (listed in the ability). Wavesense functions only if monster and the subject are in the same body of liquid, and only if the subject is moving through the liquid.'), -- this looks correct per bestiary pg 344
  (21, 1, 'TODO', 'Sporesight','TODO'),
  (22, 1, 'TODO', 'Windsense','This creature senses vibrations in the air.'),
  (23, 1, 'TODO', 'Motionsense','TODO'),
  (24, 1, 'TODO', 'Metalscent','This creature has the scent universal monster ability but it can smell only metals using it.'),
  (25, 1, 'TODO', 'Hungersense','Hungersense allows the gimmerling to sense creatures that require food to live.'),
  (26, 1, 'TODO', 'Entropysense','A voidworm can anticipate the most likely presence of a creature through a supernatural insight into chaotic probabilities and chance. This grants it the ability to sense creatures within the listed range. A creature under the effects of nondetection or that is otherwise shielded from divinations and predictions cannot be noticed via entropy sense.'),
  (27, 1, 'TODO', 'Websense','TODO'),
  (28, 1, 'TODO', 'Heatsight','Heatsight is a precise sense that sees heat signatures.'),
  (29, 1, 'TODO', 'Sinscent','This creature has scent against creatures whose nature reflects it''s sin. For example, wrathful sinspawn can scent creatures using rage effects. The GM should adjudicate what creatures a particular sinspawn can scent.');


