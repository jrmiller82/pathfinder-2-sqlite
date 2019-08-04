-- -*- mode:sql sql-product:sqlite -*-

/* TODO add in any different vision types from Bestiary / Monsters */

/* TODO smoke vision is from young-red dragon */

INSERT INTO visions (vision_id,
                     short_name,
                     description)
VALUES
  (1, 'Darkvision', 'You can see in darkness and dim light just as well as you can see in bright light, though your vision in darkness is in black and white.'),
  (2, 'Low-Light Vision', 'You can see in dim light as though it were bright light, and you ignore the concealed condition due to dim light.'),
  (3, 'Keen Eyes', 'Your eyes are sharp, allowing you to make out small details about concealed or even invisible creatures that others might miss. You gain a +2 circumstance bonus when using the Seek action to find hidden or undetected creatures within 30 feet of you. When you target an opponent that is concealed from you or hidden from you, reduce the DC of the flat check to 3 for a concealed target or 9 for a hidden one.'),
  (4, 'None', 'No special vision.'),
  (5, 'Smoke Vision', 'You can see perfectly in smoky conditions'),
  (6,'All-Around Vision','This monster can see in all directions simultaneously, and therefore can’t be flanked.');


