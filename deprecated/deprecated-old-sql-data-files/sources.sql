-- -*- mode:sql sql-product:sqlite -*-

PRAGMA foreign_keys = ON; -- database requires foreign key checking to be turned
                          -- on PER CONNECTION

/* TODO Decide on how to format the copyright block text... perhaps with Markdown? */


INSERT INTO sources (sources_id,
                     isbn,
                     pzocode,
                     sources_full_name,
                     sources_short_name,
                     sources_abbrev,
                     sources_descr,
                     release_date,
                     first_party,
                     ogl_copyright_block)
VALUES
  -- Core Rulebook
  (1,
  '978-1-64078-168-9',
  'PZO2101',
  'Pathfinder Core Rulebook (Second Edition)',
  'Core Rulebook',
  'CRB',
  'Volume containing the rules core rules for players and Game Masters',
  '2019-08-01',
  1,
  'Open Game License v.1.0a (c) 2000, Wizards of the Coast, Inc.; System Reference Document (c) 2000, Wizards of the Coast, Inc.; Authors: Jonathan Tweet, Monte Cook, and Skip Williams, based on material by E. Gary Gygax and Dave Arneson. Pathfinder Core Rulebook (Second Edition) (c) 2019, Paizo, Inc.; Designers: Logan Bonner, Jason Bulmahn, Stephen Radney-MacFarland, and Mark Seifter.'),
  -- Bestiary 1
  (2,
  '978-1-64078-170-2',
  'PZO2102',
  'Pathfinder Bestiary (Second Edition)',
  'Bestiary',
  'BST1',
  'TODO',
  '2019-08-01',
  1,
  'Daemon, Guardian from the Tome of Horrors Complete © 2011, Necromancer Games, Inc., published and distributed by Frog God Games; Author: Scott Greene, based on original material by Ian McDowall. Dark Creeper from the Tome of Horrors Complete © 2011, Necromancer Games, Inc., published and distributed by Frog God Games; Author: Scott Greene, based on original material by Rik Shepard. Dark Stalker from the Tome of Horrors Complete © 2011, Necromancer Games, Inc., published and distributed by Frog God Games; Author: Scott Greene, based on original material by Simon Muth. Dragon, Faerie from the Tome of Horrors Complete © 2011, Necromancer Games, Inc., published and distributed by Frog God Games; Author: Scott Greene, based on original material by Brian Jaeger and Gary Gygax. Genie, Marid from the Tome of Horrors Complete © 2011, Necromancer Games, Inc., published and distributed by Frog God Games; Author: Scott Greene, based on original material by Gary Gygax. Mite from the Tome of Horrors Complete © 2011, Necromancer Games, Inc., published and distributed by Frog God Games; Author: Scott Greene, based on original material by Ian Livingstone and Mark Barnes. Pathfinder Bestiary (Second Edition) © 2019, Paizo Inc.; Authors: Alexander Augunas, Logan Bonner, Jason Bulmahn, John Compton, Paris Crenshaw, Adam Daigle, Eleanor Ferron, Leo Glass, Thurston Hillman, James Jacobs, Jason Keeley, Lyz Liddell, Ron Lundeen, Robert G. McCreary, Tim Nightengale, Stephen Radney-MacFarland, Alex Riggs, David N. Ross, Michael Sayre, Mark Seifter, Chris S. Sims, Jeffrey Swank, Jason Tondro, Tonya Woldridge, and Linda Zayas-Palmer.'),
  -- The Fall of Plaguestone
  (3,
  '978-1-64078-174-0',
  'PZO9555',
  'Pathfinder Adventure: The Fall of Plaguestone',
  'The Fall of Plaguestone',
  'TFoP',
  'TODO',
  '2019-08-01',
  1,
  'Pathfinder Adventure: The Fall of Plaguestone © 2019, Paizo Inc.; Author: Jason Bulmahn.'),
-- Core Rulebook
(4,
NULL,
'PZO9000-25E',
'Age of Ashes Player''s Guide',
'Age of Ashes Player''s Guide',
'AoAPG',
'Player''s Guide for the Age of Ashes Adventure Path',
'2019',
1,
'Age of Ashes Player''s Guide © 2019, Paizo Inc.; Authors: James Jacobs with Amanda Hamon.');


BEGIN TRANSACTION;
INSERT INTO sourceentries VALUES(1, 1, 8, 9);
COMMIT;
