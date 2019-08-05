-- -*- mode:sql sql-product:sqlite -*-

/* Decide on format of flavor text; probably markdown? */

/* Decide on whether to break out the flavor text to another table? */

/* Probably need to model Half-Elf and Half-Orc as a whole separate
ancestry? NO. They are separate heritages, not separate ancestries. */

INSERT INTO ancestries (ancestry_id, short_name, flavor_text, hp, size_id, speed,
                        boosts, flaws, vision_id)
VALUES
  (1, 'Dwarf', 'TODO', 10, 3, 20, 84, 32, 1),
  (2, 'Elf', 'TODO', 6, 3, 30, 74, 4, 2),
  (3, 'Gnome', 'TODO', 8, 2, 25, 100, 1, 2),
  (4, 'Goblin', 'TODO', 6, 2, 25, 98, 16, 1),
  (5, 'Halfling', 'TODO', 6, 2, 25,  82, 1, 3),
  (6, 'Human', 'TODO', 8, 3, 25, 128, 0, 4);

/* TODO flesh out the ancestry-trait pairs */

/* ancestries 7 = half elf and 8 = half orc. 
(8,91),

(8,124),

(7,58),

(7,91),


 */
INSERT INTO ancestries_traits (ancestry_id, trait_id)
VALUES
(4,81),
(4,91),
(6,90),
(6,91),
(2,58),
(2,91),
(1,54),
(1,91),
(5,87),
(5,91),
(3,80),
(3,91);
