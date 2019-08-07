-- -*- mode:sql sql-product:sqlite -*-

/* TODO add in any different vision types from Bestiary / Monsters */

/* TODO smoke vision is from young-red dragon */

INSERT INTO senses (senses_id,
                     short_name,
                     description)
VALUES
  (1, 'Darkvision', 'You can see in darkness and dim light just as well as you can see in bright light up to 60 ft, though your vision in darkness is in black and white.'),
  (2, 'Low-Light Vision', 'You can see in dim light as though it were bright light, and you ignore the concealed condition due to dim light.'),
  (3, 'Keen Eyes', 'Your eyes are sharp, allowing you to make out small details about concealed or even invisible creatures that others might miss. You gain a +2 circumstance bonus when using the Seek action to find hidden or undetected creatures within 30 feet of you. When you target an opponent that is concealed from you or hidden from you, reduce the DC of the flat check to 3 for a concealed target or 9 for a hidden one.'),
  (4, 'None', 'No special vision.'),
  (5, 'Smoke Vision', 'You can see perfectly in smoky conditions'),
  (6,'All-Around Vision','This monster can see in all directions simultaneously, and therefore can’t be flanked.'),
  (7,'Snow Vision','This creature can see perfectly well in snowy conditions. this creature does not suffer any penalties to Perception checks while in snow.'),
  (8,'Manifold Vision','TODO (can not find any definition ref:https://2e.aonprd.com/Monsters.aspx?ID=249)'),
  (9,'Greater Darkvision','Same as Darkvision, but the range is 120 ft'),
  (10,'Scent','This special quality allows a creature to detect approaching enemies, sniff out hidden foes, and track by sense of smell. Creatures with the scent ability can identify familiar odors just as humans do familiar sights.'),
  (11,'Echolocation','You can perceive the world by creating high-pitched noises and listening to their echoes. This gives you blindsight to a range of 40 feet.'),
  (12, 'Tremorsense','A Creature with tremorsense is sensitive to vibrations in the ground and can automatically pinpoint the location of anything that is in contact with the ground. Aquatic creatures with tremorsense can also sense the location of creatures moving through water.'),
  (13,'Lightblindness','Creatures with light blindness are blinded for 1 round if exposed to bright light, such as sunlight or the Daylight spell. Such creatures are dazzled as long as they remain in areas of bright light.'),
  (14,'Thoughtsense','You automatically detect and locate conscious creatures within 60 feet, as if you possessed the blindsight ability.'),
  (15,'Bloodscent','This creature has the scent universal monster ability, but only for purposes of detecting and pinpointing injured creatures (below full hit points). Creatures below half their full hit points or suffering bleed damage are considered strong scents for this ability.'),
  (16,'Lifesense','The Creature notices and locates living creatures within 60 feet, just as if it possessed the Blindsight ability.'),
  (17,'Plaguesense','TODO find definiton for plaguesense. Senses sickness??'),
  (18,'Crystalsense','This creature can sense the presence of any crystals or gems within 30 feet as if using the scent ability.'),
  (19,'Fogvision','This creature can see perfectly in foggy conditions'),
  (20,'Wavesense','This sense allows a monster to feel vibrations caused by movement through a liquid. It’s an imprecise sense with a limited range (listed in the ability). Wavesense functions only if monster and the subject are in the same body of liquid, and only if the subject is moving through the liquid.'),
  (21,'Sporesight','TODO'),
  (22,'Windsense','This creature senses vibrations in the air.'),
  (23,'Motionsense','TODO'),
  (24,'Metalscent','This creature has the scent universal monster ability but it can smell only metals using it.'),
  (25,'Hungersense','Hungersense allows the gimmerling to sense creatures that require food to live.'),
  (26,'Entropysense','A voidworm can anticipate the most likely presence of a creature through a supernatural insight into chaotic probabilities and chance. This grants it the ability to sense creatures within the listed range. A creature under the effects of nondetection or that is otherwise shielded from divinations and predictions cannot be noticed via entropy sense.'),
  (27,'Websense','TODO'),
  (28,'Heatsight','Heatsight is a precise sense that sees heat signatures.'),
  (29,'Sinscent',"This creature has scent against creatures whose nature reflects it's sin. For example, wrathful sinspawn can scent creatures using rage effects. The GM should adjudicate what creatures a particular sinspawn can scent.");


