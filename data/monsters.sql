-- -*- mode:sql sql-product:sqlite -*-

PRAGMA foreign_keys = ON;

BEGIN TRANSACTION;
INSERT INTO monsterflavortexttypes VALUES(1, 'Monster Category');
INSERT INTO monsterflavortexttypes VALUES(2, 'Advice and Rules');
INSERT INTO monsterflavortexttypes VALUES(3, 'Related Creatures');
INSERT INTO monsterflavortexttypes VALUES(4, 'Additional Lore');
INSERT INTO monsterflavortexttypes VALUES(5, 'Treasure and Rewards');
INSERT INTO monsterflavortexttypes VALUES(6, 'Locations');
COMMIT;

BEGIN TRANSACTION;
INSERT INTO monsterflavortexts VALUES(1, 1, 'Aeon', 'Aeons have always been the caretakers of reality and defenders of the natural order of balance. Each type of aeon takes on some form of duality in its manifestation and works either to shape the multiverse within the aspects of this duality in some way, or to correct imbalances to the perfect order of existence. Aeons can bring weal or woe when they appear in a region, and their machinations can raise a nation, raze it, or restore it from ruin. Their reasons are their own, and they rarely share their motivations with others— they simply create the results they insist through their strange envisioning communication are necessary to maintain the balance of the multiverse.\n\nAs a result of recent shifts in reality, aeons have begun to reassert a presence in the perfect planar city of Axis. To the aeons, this is merely the latest in a recurring cycle, albeit one that mortals have not yet borne witness to. Once regarded as an independent faction, the living machines known as inevitables are now revealed as having been agents of the aeons all along, and while inevitables have their own shared themes and features, they are very much living but constructed manifestations of the aeons’ war against imbalance—particularly with regard to how this war is waged against the forces of chaos.\n\nAeons have a name for this cyclic return, in which they welcome the industrious axiomites back to their fold and bring the inevitables once again under their control: the “Convergence.” At the onset of the Convergence, a council of pleroma aeons appeared in the Eternal City of Axis, where they revealed that axiomites were wayward aeons, split off long ago to pursue the act of creation. With the latest cycle of change it was time for the axiomites and their creations, the inevitables, to rejoin the aeon cause. While most axiomites and inevitables fell in line, realizing perhaps on a fundamental level of reality that what the aeons said was the truth, some refused to heed the call and waited for the wrath of the aeons — but that wrath has yet to come. The dual-natured aeons have responded to those who have declined in confusing ways. With some they treat and even bargain, while a handful of others they have destroyed, and a few have been exterminated by the axiomites and allied inevitables. But most of these quiet insurgents they leave alone, allowing these axiomites to continue to create in peace and the inevitables to continue with their duties. How—or if—this Convergence will end is as little understood as the aeons themselves.');
INSERT INTO monsterflavortexts VALUES(2, 4, 'Aeon Divinities', 'Whether the aeons serve an actual divinity, a philosophical concept, or merely a "supreme oneness" is a topic hotly debated by planar scholars. The aeons themselves are silent, referring to the being or concept as the Monad, a "condition of all." Regardless of what the Monad actually is, there certainly exists another category of powerful aeons---the primal inevitables, each a unique demigod with its own powers and goals. Relatively few primal inevitables remain today, for nearly three-quarters of their irreplaceable kind have fallen in the endless battle with the inexorable forces of entropy.');
COMMIT;

BEGIN TRANSACTION;
-- ARBITER
-- TODO +1 status to all saves versus magic?
INSERT INTO monsters VALUES(1, 0, 1, 'Arbiter', 1, 4, 7, 1, 16, 5, 7, 7, 22, 20, NULL, NULL, 40, NULL, 1, 4, 2, 0, 2, 1, 'These spherical inevitables are scouts and diplomats. Found throughout the multiverse, they have traditionally kept watch over on chaos and its agents. With the announcement of the Convergence, many arbiters now serve as go-betweens among the aeon alliance and its mortal associates.');
INSERT INTO monsters_monsterflavortexts (monster_id, monsterflavortext_id) VALUES(1, 1);
INSERT INTO monsters_monsterflavortexts (monster_id, monsterflavortext_id) VALUES(1, 2);
INSERT INTO monsters_senses (monster_id, sense_id) VALUES(1, 1); -- dark vision
INSERT INTO monsters_senses (monster_id, sense_id) VALUES(1, 100); -- detect alignment chaotic
INSERT INTO monsters_senses (monster_id, sense_id) VALUES(1, 101); -- locate inevitable
INSERT INTO monsters_langs (monster_id, lang_id) VALUES(1, 1); -- Common
INSERT INTO monsters_langs (monster_id, lang_id) VALUES(1, 104); -- Celestial
INSERT INTO monsters_langs (monster_id, lang_id) VALUES(1, 107); -- Infernal
INSERT INTO monsters_langs (monster_id, lang_id) VALUES(1, 300); -- Utopian
-- TODO immunities
-- TODO weaknesses
-- TODO resistances
-- TODO skills
-- TODO actions
-- TODO items?
COMMIT;




