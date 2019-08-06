-- -*- mode:sql sql-product:sqlite -*-

/* TODO decide on what goes in this flavor text. I'm thinking the small
one-paragraph at the top of the section, and we put in all the extra details as
a field with markdown formatted text. Need to think on it. */

INSERT INTO ancestries (ancestry_id, short_name, flavor_text, hp, size_id, speed, vision_id)
VALUES
  (1, 'Dwarf', 'TODO', 10, 3, 20, 1),
  (2, 'Elf', 'TODO', 6, 3, 30, 2),
  (3, 'Gnome', 'TODO', 8, 2, 25, 2),
  (4, 'Goblin', 'TODO', 6, 2, 25, 1),
  (5, 'Halfling', 'TODO', 6, 2, 25, 3),
  (6, 'Human', 'TODO', 8, 3, 25, 4),
  (7, 'Half-Elf', 'TODO', 8, 3, 25, 4),
  (8, 'Half-Orc', 'TODO', 8, 3, 25, 4);


/* TODO insert remaining data into ancestries_boosts and ancestries_flaws */

/* Example Query to get boosts in text representation:

sqlite> select ancestries.short_name, abilityscores.short_name FROM ancestries INNER JOIN ancestries_boosts on ancestries_boosts.ancestry_id = ancestries.ancestry_id INNER JOIN abilityscores on ancestries_boosts.abilityscores_id = abilityscores.abilityscores_id;
   short_name  short_name
   ----------  ----------
   Dwarf       CON
   Dwarf       WIS
   Dwarf       Free1
*/

INSERT INTO ancestries_boosts (ancestry_id, abilityscores_id)
VALUES
  (1, 3), -- dwarf CON
  (1, 5), -- dwarf WIS
  (1, 7), -- dwarf free 1
  (2, 2), -- elf DEX
  (2, 4), -- elf INT
  (2, 7), -- elf free 1
  (3, 3), -- gnome CON
  (3, 6), -- gnome CHA
  (3, 7), -- gnome free 1
  (4, 2), -- goblin DEX
  (4, 6), -- goblin CHA
  (4, 7), -- goblin free 1
  (5, 2), -- halfling DEX
  (5, 5), -- halfling WIS
  (5, 7), -- halfling free 1
  (6, 7), -- human free 1
  (6, 8); -- human free 2

INSERT INTO ancestries_flaws (ancestry_id, abilityscores_id)
VALUES
  (1, 6), -- dwarf CHA
  (2, 3), -- elf CON
  (3, 1), -- gnome STR
  (4, 5), -- goblin WIS
  (5, 1); -- halfling STR

INSERT INTO ancestries_traits (ancestry_id, trait_id)
VALUES
(1,79),	--Dwarf
(1,116), --Humanoid
(2,80), --Elf
(2,116),
(3,81), --Gnome
(3,116),
(4,82), --Goblin
(4,116),
(5,85), --Halfling
(5,116),
(6,86), --Human
(6,116),
(7,80), -- Half-Elf -> Elf
(7,86),
(7,116),
(7,83),
(8,116), --Half-Orc
(8,86),
(8,182),
(8,84);
