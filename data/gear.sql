PRAGMA foreign_keys = ON;

BEGIN TRANSACTION;
INSERT INTO gear VALUES('1','Holly and Mistletoe','0','0','0','','1','1','290','Plants of supernatural significance provide a primal focus for primal spellcasters, such as druids, when using certain abilities and casting some spells. A bundle of holly and mistletoe must be held in one hand to use it. Other primal foci exist for druids focused on other aspects of nature.');
INSERT INTO gear VALUES('2','Bedroll','0','0.01','0.1','','','1','288','');
INSERT INTO gear VALUES('3','Candle','0','0.01','0','','1','1','289','A lit candle sheds dim light in a 10-foot radius.');
INSERT INTO gear VALUES('4','Chalk','0','0.01','0','','1','1','288','');
INSERT INTO gear VALUES('5','Mug','0','0.01','0','','1','1','288','');
INSERT INTO gear VALUES('6','Oil','0','0.01','0','','2','1','291','You can use oil to fuel lanterns, but you can also set a pint of oil aflame and throw it. You must first spend an Interact action preparing the oil, then throw it with another action as a ranged attack. If you hit, it splatters on the creature or in a single 5-foot square you target. You must succeed at a DC 10 flat check for the oil to ignite successfully when it hits. If the oil ignites, the target takes 1d6 fire damage.');
INSERT INTO gear VALUES('7','Piton','0','0.01','0','','1','1','291','These small spikes can be used as anchors to make climbing easier. To affix a piton, you must hold it in one hand and use a hammer to drive it in with your other hand. You can attach a rope to the hammered piton so that you don''t fall all the way to the ground on a critical failure while Climbing.');
INSERT INTO gear VALUES('8','Sack','0','0.01','0.1','','1','1','291','A sack can hold up to 8 Bulk worth of items. A sack containing 2 Bulk or less can be worn on the body, usually tucked into a belt. You can carry a sack with one hand, but must use two hands to transfer items in and out.');
INSERT INTO gear VALUES('9','Sheath','0','0.01','0','','','1','291','A sheath or scabbard lets you easily carry a weapon on your person.');
INSERT INTO gear VALUES('10','Ten-Foot Pole','0','0.01','1','','2','1','291','When wielding this long pole, you can use Seek to search a square up to 10 feet away. The pole is not sturdy enough to use as a weapon.');
INSERT INTO gear VALUES('11','Torch','0','0.01','0.1','','1','1','292','A torch sheds bright light in a 20-foot radius (and dim light to the next 20 feet). It can be used as an improvised weapon that deals 1d4 bludgeoning damage plus 1 fire damage.');
INSERT INTO gear VALUES('12','Soap','0','0.02','0','','1','1','288','');
INSERT INTO gear VALUES('13','Ladder','0','0.03','3','','2','1','288','');
INSERT INTO gear VALUES('14','Belt Pouch','0','0.04','0','','','1','289','A belt pouch holds up to four items of light Bulk.');
INSERT INTO gear VALUES('15','Flint and Steel','0','0.05','0','','2','1','290','Flint and steel are useful in creating a fire if you have the time to catch a spark, though using them is typically too time-consuming to be practical during an encounter. Even in ideal conditions, using flint and steel to light a flame requires using at least 3 actions, and often significantly longer.');
INSERT INTO gear VALUES('16','Vial','0','0.05','0','','1','1','292','A simple glass vial holds up to 1 ounce of liquid.');
INSERT INTO gear VALUES('17','Waterskin','0','0.05','0.1','','1','1','292','When it''s full, a waterskin has 1 Bulk and contains roughly 1 day''s worth of water for a Small or Medium creature.');
INSERT INTO gear VALUES('18','Signal Whistle','0','0.08','0','','1','1','291','When sounded, a signal whistle can be heard clearly up to half a mile away across open terrain.');
INSERT INTO gear VALUES('19','Backpack','0','0.1','0','','','1','289','A backpack holds up to 4 Bulk of items. If you''re carrying or stowing the pack rather than wearing it on your back, its bulk is light instead of negligible.');
INSERT INTO gear VALUES('20','Bandolier','0','0.1','0','','','1','289','A bandolier holds up to eight items of light Bulk within easy reach and is usually used for alchemical items or potions. If you are carrying or stowing a bandolier rather than wearing it around your chest, it has light Bulk instead of negligible. A bandolier can be dedicated to a full set of tools, such as healer''s tools, allowing you to draw the tools as part of the action that requires them.');
INSERT INTO gear VALUES('21','Basic Crafter''s Book','0','0.1','0.1','','2','1','289','This book contains the formulas (page 293) for Crafting the common items in this chapter.');
INSERT INTO gear VALUES('22','Clothing (Explorer''s)','0','0.1','0.1','','','1','287','Explorer''s clothing is sturdy enough that it can be reinforced to protect you, even though it isn''t a suit of armor. It comes in many forms, though the most common sorts look like clerical vestments, monk''s garments, or wizard''s robes, as members of all three classes are likely to avoid wearing armor. For more information on explorer''s clothing, see pages 275--76.');
INSERT INTO gear VALUES('23','Clothing (Oridinary)','0','0.1','0','','','1','287','Ordinary clothing is functional with basic tailoring, such as peasant garb, monk''s robes, or work clothes.');
INSERT INTO gear VALUES('24','Disguise Kit (Replacement Cosmetics)','0','0.1','0','','','1','290','This small wooden box contains cosmetics, false facial hair, spirit gum, and a few simple wigs. You usually need a disguise kit to set up a disguise in order to Impersonate someone using the Deception skill. An elite disguise kit adds a +1 item bonus to relevant checks. If you''ve crafted a large number of disguises, you can replenish your cosmetics supply with replacement cosmetics suitable for the type of your disguise kit.');
INSERT INTO gear VALUES('25','Grappling Hook','0','0.1','0.1','','1','1','290','You can throw a grappling hook with a rope tied to it to make a climb easier. To anchor a grappling hook, make an attack roll with the secret trait against a DC depending on the target, typically at least DC 20. On a success, your hook has a firm hold, but on a critical failure, the hook seems like it will hold but actually falls when you''re partway up.');
INSERT INTO gear VALUES('26','Hammer','0','0.1','0.1','','1','1','288','');
INSERT INTO gear VALUES('27','Religious Symbol (Wooden)','0','0.1','0.1','','1','1','291','This piece of wood or silver is emblazoned with an image representing a deity. Some divine spellcasters, such as clerics, can use a religious symbol of their deity as a divine focus to use certain abilities and cast some spells. A religious symbol must be held in one hand to use it.');
INSERT INTO gear VALUES('28','Satchel','0','0.1','0','','2','1','291','A satchel can hold up to 2 Bulk worth of items. If you are carrying or stowing a satchel rather than wearing it over your shoulder, it counts as light Bulk instead of negligible.');
INSERT INTO gear VALUES('29','Scroll Case','0','0.1','0','','2','1','291','Scrolls, maps, and other rolled documents are stored in scroll cases for safe transport.');
INSERT INTO gear VALUES('30','Writing Set (Extra Ink and Paper)','0','0.1','0','','','1','292','Using a writing set, you can draft correspondence and scribe scrolls. A set includes stationery, including a variety of paper and parchment, as well as ink, a quill or inkpen, sealing wax, and a simple seal. If you''ve written a large amount, you can refill your kit with extra ink and paper.');
INSERT INTO gear VALUES('31','Lock (Poor)','0','0.2','0','','2','1','290','Picking a poor lock requires two successful DC 15 Thievery checks.');
INSERT INTO gear VALUES('32','Merchant''s Scale','0','0.2','0.1','','2','1','288','');
INSERT INTO gear VALUES('33','Saddlebags','0','0.2','0.1','','2','1','291','Saddlebags come in a pair. Each can hold up to 3 Bulk of items. The Bulk value given is for saddlebags worn by a mount. If you are carrying or stowing saddlebags, they count as 1 Bulk instead of light Bulk.');
INSERT INTO gear VALUES('34','Caltrops','0','0.3','0.1','','1','1','289','These four-pronged metal spikes can cause damage to a creature''s feet. You can scatter caltrops in an empty square adjacent to you with an Interact action. The first creature that moves into that square must succeed at a DC 14 Acrobatics check or take 1d4 piercing damage and 1 persistent bleed damage. A creature taking persistent bleed damage from caltrops takes a 5-foot penalty to its Speed. Spending an Interact action to pluck the caltrops free reduces the DC to stop the bleeding. Once a creature takes damage from caltrops, enough caltrops are ruined that other creatures moving into the square are safe. Deployed caltrops can be salvaged and reused if no creatures took damage from them. Otherwise, enough caltrops are ruined that they can''t be salvaged.');
INSERT INTO gear VALUES('35','Manacles (Poor)','0','0.3','0','','2','1','290','You can manacle someone who is willing or otherwise at your mercy as an exploration activity taking 10--30 seconds depending on the creature''s size and how many manacles you apply. A two-legged creature with its legs bound takes a 15-foot circumstance penalty to its Speeds, and a two-handed creature with its wrists bound has to succeed at a DC 5 flat check any time it uses a manipulate action or else that action fails. This DC may be higher depending on how tightly the manacles constrain the hands. A creature bound to a stationary object is immobilized. For creatures with more or fewer limbs, the GM determines what effect manacles have, if any. Freeing a creature from poor manacles requires two successful DC 17 Thievery checks.');
INSERT INTO gear VALUES('36','Thieves'' Tools (Replacement Picks)','0','0.3','0','','','1','291','You need thieves'' tools to Pick Locks or Disable Devices (of some types) using the Thievery skill. If your thieves'' tools are broken, you can repair them by replacing the lock picks with replacement picks appropriate to your tools; this doesn''t require using the Repair action.');
INSERT INTO gear VALUES('37','Clothing (Winter)','0','0.4','0.1','','','1','287','Winter clothing allows you to negate the damage from severe environmental cold and reduce the damage from extreme cold to that of severe cold.');
INSERT INTO gear VALUES('38','Rations','0','0.4','0.1','','1','1','288','');
INSERT INTO gear VALUES('39','Tool (Short)','0','0.4','0.1','','1','1','292','This entry is a catchall for basic hand tools that don''t have a specific adventuring purpose. A hoe, shovel, or sledgehammer is a long tool, and a hand drill, ice hook, or trowel is a short tool. A tool can usually be used as an improvised weapon, dealing 1d4 damage for a short tool or 1d6 for a long tool. The GM determines the damage type that''s appropriate or adjusts the damage if needed.');
INSERT INTO gear VALUES('40','Climbing Kit','0','0.5','1','','2','1','287','This satchel includes 50 feet of rope, pulleys, a dozen pitons, a hammer, a grappling hook, and one set of crampons. Climbing kits allow you to attach yourself to the wall you''re Climbing, moving half as quickly as usual (minimum 5 feet) but letting you attempt a DC 5 flat check whenever you critically fail to prevent a fall. A single kit has only enough materials for one climber; each climber needs their own kit.');
INSERT INTO gear VALUES('41','Climbing Kit (Extreme)','3','40','1','','2','1','287','This satchel includes 50 feet of rope, pulleys, a dozen pitons, a hammer, a grappling hook, and one set of crampons. Climbing kits allow you to attach yourself to the wall you''re Climbing, moving half as quickly as usual (minimum 5 feet) but letting you attempt a DC 5 flat check whenever you critically fail to prevent a fall. You gain a +1 item bonus to Athletics checks to Climb while using an extreme climbing kit. A single kit has only enough materials for one climber; each climber needs their own kit.');
INSERT INTO gear VALUES('42','Crowbar','0','0.5','0.1','','2','1','290','When Forcing Open an object that doesn''t have an easy grip, a crowbar makes it easier to gain the necessary leverage. Without a crowbar, prying something open takes a -2 item penalty to the Athletics check to Force Open (similar to using a shoddy item).');
INSERT INTO gear VALUES('43','Material Component Pouch','0','0.5','0.1','','1','1','290','This pouch contains material components for those spells that require them. Though the components are used up over time, you can refill spent components during your daily preparations.');
INSERT INTO gear VALUES('44','Rope','0','0.5','0.1','','2','1','288','');
INSERT INTO gear VALUES('45','Chest','0','0.6','2','','2','1','289','A wooden chest can hold up to 8 Bulk of items.');
INSERT INTO gear VALUES('46','Adventurer''s Pack','0','0.7','2','','','1','289','This item is the starter kit for an adventurer, containing the essential items for exploration and survival. The Bulk value is for the entire pack together, but see the descriptions of individual items as necessary. \n\n The pack contains the following items: backpack (containing the other goods), bedroll, two belt pouches, 10 pieces of chalk, flint and steel, 50 feet of rope, 2 weeks'' rations, soap, 5 torches, and a waterskin.');
INSERT INTO gear VALUES('47','Lantern (Hooded)','0','0.7','0.1','','1','1','290','A lantern sheds bright light and requires 1 pint of oil to function for 6 hours. \n\n A hooded lantern sheds light in a 30-foot radius (and dim light in the next 30 feet) and is equipped with shutters, which you can close to block the light. Closing or opening the shutters takes an Interact action.');
INSERT INTO gear VALUES('48','Fishing Tackle','0','0.8','1','','2','1','290','This kit include a collapsible fishing pole, fishhooks, line, lures, and a fishing net.');
INSERT INTO gear VALUES('49','Musical Instrument (Handheld)','0','0.8','1','','2','1','290','Handheld instruments include bagpipes, a small set of chimes, small drums, fiddles and viols, flutes and recorders, small harps, lutes, trumpets, and similarly sized instruments. The GM might rule that an especially large handheld instrument (like a tuba) has greater Bulk.');
INSERT INTO gear VALUES('50','Tent (Pup)','0','0.8','0.1','','2','1','288','');
INSERT INTO gear VALUES('51','Compass','0','1','0.1','','1','1','290','A compass helps you Sense Direction or navigate, provided you''re in a location with uniform magnetic fields. Without a compass, you take a --2 item penalty to these checks (similar to using a shoddy item).');
INSERT INTO gear VALUES('52','Cookware','0','1','2','','2','1','288','');
INSERT INTO gear VALUES('53','Formula Book (Blank)','0','1','1','','1','1','290','A formula book holds the formulas necessary to make items other than the common equipment from this chapter; alchemists typically get one for free. Each formula book can hold the formulas for up to 100 different items. Formulas can also appear on parchment sheets, tablets, and almost any other medium; there''s no need for you to copy them into a specific book as long as you can keep them on hand to reference them.');
INSERT INTO gear VALUES('54','Lantern (Bull''s-Eye)','0','1','1','','1','1','290','A lantern sheds bright light and requires 1 pint of oil to function for 6 hours. \n\n A bull''s-eye lantern emits its light in a 60-foot cone (and dim light in the next 60 feet).');
INSERT INTO gear VALUES('55','Mirror','0','1','0','','1','1','288','');
INSERT INTO gear VALUES('56','Religious Text','0','1','0.1','','1','1','291','This manuscript contains scripture of a particular religion. Some divine spellcasters, such as clerics, can use a religious text as a divine focus to use certain abilities and cast some spells. A religious text must be held in one hand to use it.');
INSERT INTO gear VALUES('57','Spellbook (Blank)','0','1','1','','1','1','291','A spellbook holds the written knowledge necessary to learn and prepare various spells, a necessity for wizards (who typically get one for free) and a useful luxury for other spellcasters looking to learn additional spells. Each spellbook can hold up to 100 spells. The Price listed is for a blank spellbook.');
INSERT INTO gear VALUES('58','Tool (Long)','0','1','1','','2','1','292','This entry is a catchall for basic hand tools that don''t have a specific adventuring purpose. A hoe, shovel, or sledgehammer is a long tool, and a hand drill, ice hook, or trowel is a short tool. A tool can usually be used as an improvised weapon, dealing 1d4 damage for a short tool or 1d6 for a long tool. The GM determines the damage type that''s appropriate or adjusts the damage if needed.');
INSERT INTO gear VALUES('59','Writing Set','0','1','0.1','','2','1','292','Using a writing set, you can draft correspondence and scribe scrolls. A set includes stationery, including a variety of paper and parchment, as well as ink, a quill or inkpen, sealing wax, and a simple seal. If you''ve written a large amount, you can refill your kit with extra ink and paper.Writing SetItem 0Source Core Rulebook pg. 292Price 1 gpHands 2; Bulk LWriting Set (Extra Ink and Paper)Item 0Source Core Rulebook pg. 292Price 1 sp');
INSERT INTO gear VALUES('60','Clothing (Fine)','0','2','0.1','','','1','287','Fine clothing, suitable for a noble or royal, is made with expensive fabrics, precious metals, and intricate patterns.');
INSERT INTO gear VALUES('61','Disguise Kit','0','2','0.1','','2','1','290','This small wooden box contains cosmetics, false facial hair, spirit gum, and a few simple wigs. You usually need a disguise kit to set up a disguise in order to Impersonate someone using the Deception skill. An elite disguise kit adds a +1 item bonus to relevant checks. If you''ve crafted a large number of disguises, you can replenish your cosmetics supply with replacement cosmetics suitable for the type of your disguise kit.');
INSERT INTO gear VALUES('62','Musical Instrument (Heavy)','0','2','16','','2','1','290','Handheld instruments include bagpipes, a small set of chimes, small drums, fiddles and viols, flutes and recorders, small harps, lutes, trumpets, and similarly sized instruments. The GM might rule that an especially large handheld instrument (like a tuba) has greater Bulk. Heavy instruments such as large drums, a full set of chimes, and keyboard instruments are less portable and generally need to be stationary while played.');
INSERT INTO gear VALUES('63','Religious Symbol (Silver)','0','2','0.1','','1','1','291','This piece of wood or silver is emblazoned with an image representing a deity. Some divine spellcasters, such as clerics, can use a religious symbol of their deity as a divine focus to use certain abilities and cast some spells. A religious symbol must be held in one hand to use it.');
INSERT INTO gear VALUES('64','Repair Kit','0','2','1','','2','1','291','A repair kit allows you to perform simple repairs while traveling. It contains a portable anvil, tongs, woodworking tools, a whetstone, and oils for conditioning leather and wood. You can use a repair kit to Repair items using the Crafting skill.');
INSERT INTO gear VALUES('65','Hourglass','0','3','0.1','','1','1','288','');
INSERT INTO gear VALUES('66','Thieves'' Tools','0','3','0.1','','2','1','291','You need thieves'' tools to Pick Locks or Disable Devices (of some types) using the Thievery skill. If your thieves'' tools are broken, you can repair them by replacing the lock picks with replacement picks appropriate to your tools; this doesn''t require using the Repair action.');
INSERT INTO gear VALUES('67','Artisan''s Tools','0','4','2','','2','1','289','You need these tools to create items from raw materials with the Craft skill. Different sets are needed for different work, as determined by the GM; for example, blacksmith''s tools differ from woodworker''s tools.');
INSERT INTO gear VALUES('68','Chain','0','4','1','','2','1','288','');
INSERT INTO gear VALUES('69','Tack','0','4','1','','','1','291','Tack includes all the gear required to outfit a riding animal, including a saddle, bit and bridle, and stirrups if necessary. Especially large or oddly shaped animals might require specialty saddles. These can be more expensive or hard to find, as determined by the GM. The Bulk value given is for tack worn by a creature. If carried, the Bulk increases to 2.');
INSERT INTO gear VALUES('70','Alchemist''s Tools','0','5','2','','2','1','287','These beakers and chemicals can be used to set up a mobile alchemical laboratory. When you carry the tools from place to place, you keep many of the components handy on your person, in pockets or bandoliers.');
INSERT INTO gear VALUES('71','Healer''s Tools','0','5','1','','2','1','290','This kit of bandages, herbs, and suturing tools is necessary for Medicine checks to Administer First Aid, Treat Disease, Treat Poison, or Treat Wounds. When you carry the tools from place to place, you keep many of the components handy on your person, in pockets or bandoliers.');
INSERT INTO gear VALUES('72','Snare Kit','0','5','2','','2','1','291','This kit contains tools and materials for creating snares. A snare kit allows you to Craft snares using the Crafting skill.');
INSERT INTO gear VALUES('73','Tent (Four-Person)','0','5','1','','2','1','288','');
INSERT INTO gear VALUES('74','Spyglass','0','20','0.1','','2','1','291','A typical spyglass lets you see eight times farther than normal.');
INSERT INTO gear VALUES('75','Magnifying Glass','0','40','0','','1','1','290','This quality handheld lens gives you a +1 item bonus to Perception checks to notice minute details of documents, fabric, and the like.');
INSERT INTO gear VALUES('76','Lock (Simple)','1','2','0','','2','1','290','Picking a simple lock requires three successful DC 20 Thievery checks.');
INSERT INTO gear VALUES('77','Manacles (Simple)','1','3','0','','2','1','290','You can manacle someone who is willing or otherwise at your mercy as an exploration activity taking 10-30 seconds depending on the creature''s size and how many manacles you apply. A two-legged creature with its legs bound takes a 15-foot circumstance penalty to its Speeds, and a two-handed creature with its wrists bound has to succeed at a DC 5 flat check any time it uses a manipulate action or else that action fails. This DC may be higher depending on how tightly the manacles constrain the hands. A creature bound to a stationary object is immobilized. For creatures with more or fewer limbs, the GM determines what effect manacles have, if any. Freeing a creature from simple manacles requires three successes at DC 22.');
INSERT INTO gear VALUES('78','Tent (Pavilion)','2','40','12','','2','1','288','');
INSERT INTO gear VALUES('79','Disguise Kit (Elite Cosmetics)','3','0.5','0','','','1','290','This small wooden box contains cosmetics, false facial hair, spirit gum, and a few simple wigs. You usually need a disguise kit to set up a disguise in order to Impersonate someone using the Deception skill. An elite disguise kit adds a +1 item bonus to relevant checks. If you''ve crafted a large number of disguises, you can replenish your cosmetics supply with replacement cosmetics suitable for the type of your disguise kit.');
INSERT INTO gear VALUES('80','Thieve''s Tools (Infiltrator Picks)','3','3','0','','','1','291','You need thieves'' tools to Pick Locks or Disable Devices (of some types) using the Thievery skill. Infiltrator thieves'' tools add a +1 item bonus to checks to Pick Locks and Disable Devices. If your thieves'' tools are broken, you can repair them by replacing the lock picks with replacement picks appropriate to your tools; this doesn''t require using the Repair action.');
INSERT INTO gear VALUES('81','Scholarly Journal','3','6','0.1','Uncommon','1','1','291','Scholarly journals are uncommon. Each scholarly journal is a folio on a very specific topic, such as vampires or the history of a single town or neighborhood of a city. If you spend 1 minute referencing an academic journal before attempting a skill check to Recall Knowledge about the subject, you gain a +1 item bonus to the check.');
INSERT INTO gear VALUES('82','Survey Map','3','10','0.1','Uncommon','1','1','291','Maps are uncommon. Most maps you can find are simple and functional. A survey map details a single location in excellent detail. One of these maps gives you a +1 item bonus to Survival checks and any skill checks to Recall Knowledge, provided the checks are related to the location detailed on the map.');
INSERT INTO gear VALUES('83','Lock (Average)','3','15','0','','2','1','290','Picking an average lock requires four successes at DC 25.');
INSERT INTO gear VALUES('84','Compass (Lensatic)','3','20','0.1','','1','1','290','A compass helps you Sense Direction or navigate, provided you''re in a location with uniform magnetic fields. Without a compass, you take a --2 item penalty to these checks (similar to using a shoddy item). A lensatic compass gives you a +1 item bonus to these checks.');
INSERT INTO gear VALUES('85','Crowbar (Levered)','3','20','0.1','','2','1','290','When Forcing Open an object that doesn''t have an easy grip, a crowbar makes it easier to gain the necessary leverage. Without a crowbar, prying something open takes a -2 item penalty to the Athletics check to Force Open (similar to using a shoddy item). A levered crowbar grants you a +1 item bonus to Athletics checks to Force Open anything that can be pried open. ');
INSERT INTO gear VALUES('86','Fishing Tackle (Professional)','3','20','1','','2','1','290','This kit include a collapsible fishing pole, fishhooks, line, lures, and a fishing net. Professional fishing tackle grants a +1 item bonus to checks to fish.');
INSERT INTO gear VALUES('87','Manacles (Average)','3','20','0','','2','1','290','You can manacle someone who is willing or otherwise at your mercy as an exploration activity taking 10--30 seconds depending on the creature''s size and how many manacles you apply. A two-legged creature with its legs bound takes a -15-foot circumstance penalty to its Speeds, and a two-handed creature with its wrists bound has to succeed at a DC 5 flat check any time it uses a manipulate action or else that action fails. This DC may be higher depending on how tightly the manacles constrain the hands. A creature bound to a stationary object is immobilized. For creatures with more or fewer limbs, the GM determines what effect manacles have, if any. Freeing a creature from average manacles require four successes at DC 27.');
INSERT INTO gear VALUES('88','Repair Kit (Superb)','3','25','1','','2','1','291','A repair kit allows you to perform simple repairs while traveling. It contains a portable anvil, tongs, woodworking tools, a whetstone, and oils for conditioning leather and wood. You can use a repair kit to Repair items using the Crafting skill. A superb repair kit gives you a +1 item bonus to the check.');
INSERT INTO gear VALUES('89','Scholarly Journal (Compendium)','3','30','0.1','Uncommon','1','1','291','Scholarly journals are uncommon. Each scholarly journal is a folio on a very specific topic, such as vampires or the history of a single town or neighborhood of a city. If you spend 1 minute referencing an academic journal before attempting a skill check to Recall Knowledge about the subject, you gain a +1 item bonus to the check. A compendium of journals costs five times as much as a single journal and requires both hands to use; each compendium contains several journals and grants its bonus on a broader topic, such as all undead or a whole city. The GM determines what scholarly journals are available in any location.');
INSERT INTO gear VALUES('90','Disguise Kit (Elite)','3','40','0.1','','','1','290','This small wooden box contains cosmetics, false facial hair, spirit gum, and a few simple wigs. You usually need a disguise kit to set up a disguise in order to Impersonate someone using the Deception skill. An elite disguise kit adds a +1 item bonus to relevant checks. If you''ve crafted a large number of disguises, you can replenish your cosmetics supply with replacement cosmetics suitable for the type of your disguise kit.');
INSERT INTO gear VALUES('91','Artisan''s Tools (Sterling)','3','50','2','','2','1','287','You need these tools to create items from raw materials with the Craft skill. Sterling artisan''s tools give you a +1 item bonus to the check. Different sets are needed for different work, as determined by the GM; for example, blacksmith''s tools differ from woodworker''s tools.');
INSERT INTO gear VALUES('92','Healer''s Tools (Expanded)','3','50','1','','2','1','290','This kit of bandages, herbs, and suturing tools is necessary for Medicine checks to Administer First Aid, Treat Disease, Treat Poison, or Treat Wounds. Expanded healer''s tools provide a +1 item bonus to such checks. When you carry the tools from place to place, you keep many of the components handy on your person, in pockets or bandoliers.');
INSERT INTO gear VALUES('93','Musical Instrument (Virtuoso Handheld)','3','50','1','','2','1','290','Handheld instruments include bagpipes, a small set of chimes, small drums, fiddles and viols, flutes and recorders, small harps, lutes, trumpets, and similarly sized instruments. The GM might rule that an especially large handheld instrument (like a tuba) has greater Bulk. \n\n A virtuoso instrument gives a +1 item bonus to Performance checks using that instrument.');
INSERT INTO gear VALUES('94','Survey Map (Atlas)','3','50','0.1','Uncommon','2','1','291','Maps are uncommon. Most maps you can find are simple and functional. A survey map details a single location in excellent detail. One of these maps gives you a +1 item bonus to Survival checks and any skill checks to Recall Knowledge, provided the checks are related to the location detailed on the map. Maps sometimes come in atlases, containing a number of maps of the same quality, often on similar topics. An atlas costs five times as much as a single map and requires both hands to use. The GM determines what maps are available in any location.');
INSERT INTO gear VALUES('95','Thieve''s Tools (Infiltrator)','3','50','0.1','','2','1','291','You need thieves'' tools to Pick Locks or Disable Devices (of some types) using the Thievery skill. Infiltrator thieves'' tools add a +1 item bonus to checks to Pick Locks and Disable Devices. If your thieves'' tools are broken, you can repair them by replacing the lock picks with replacement picks appropriate to your tools; this doesn''t require using the Repair action.');
INSERT INTO gear VALUES('96','Alchemist''s Tools (Expanded)','3','55','2','','2','1','287','These beakers and chemicals can be used to set up a mobile alchemical laboratory. Expanded alchemist''s tools give a +1 item bonus to Crafting checks to create alchemical items. When you carry the tools from place to place, you keep many of the components handy on your person, in pockets or bandoliers.');
INSERT INTO gear VALUES('97','Clothing (High-Fashion Fine)','3','55','0.1','','','1','287','Fine clothing, suitable for a noble or royal, is made with expensive fabrics, precious metals, and intricate patterns. You gain a +1 item bonus to checks to Make an Impression on nobility or other upper-class folk while wearing high-fashion fine clothing.');
INSERT INTO gear VALUES('98','Snare Kit (Specialist)','3','55','2','','2','1','291','This kit contains tools and materials for creating snares. A snare kit allows you to Craft snares using the Crafting skill. A specialist snare kit gives you a +1 item bonus to the check.');
INSERT INTO gear VALUES('99','Musical Instrument (Virtuoso Heavy)','3','100','16','','2','1','290','Handheld instruments include bagpipes, a small set of chimes, small drums, fiddles and viols, flutes and recorders, small harps, lutes, trumpets, and similarly sized instruments. The GM might rule that an especially large handheld instrument (like a tuba) has greater Bulk. Heavy instruments such as large drums, a full set of chimes, and keyboard instruments are less portable and generally need to be stationary while played. \n\n A virtuoso instrument gives a +1 item bonus to Performance checks using that instrument. ');
INSERT INTO gear VALUES('100','Spyglass (Fine)','4','80','0.1','','2','1','291','A typical spyglass lets you see eight times farther than normal. A fine spyglass adds a +1 item bonus to Perception checks to notice details at a distance.');
INSERT INTO gear VALUES('101','Lock (Good)','9','200','0','','2','1','290','Picking a good lock requires five successes at DC 30.');
INSERT INTO gear VALUES('102','Manacles (Good)','9','250','0','','2','1','290','You can manacle someone who is willing or otherwise at your mercy as an exploration activity taking 10--30 seconds depending on the creature''s size and how many manacles you apply. A two-legged creature with its legs bound takes a -15-foot circumstance penalty to its Speeds, and a two-handed creature with its wrists bound has to succeed at a DC 5 flat check any time it uses a manipulate action or else that action fails. This DC may be higher depending on how tightly the manacles constrain the hands. A creature bound to a stationary object is immobilized. For creatures with more or fewer limbs, the GM determines what effect manacles have, if any. Freeing a creature from good manacles require five successes at DC 32.');
INSERT INTO gear VALUES('103','Lock (Superior)','17','4500','0','','2','1','290','Picking a superior lock six successes at DC 40.');
INSERT INTO gear VALUES('104','Manacles (Superior)','17','5000','0','','2','1','290','You can manacle someone who is willing or otherwise at your mercy as an exploration activity taking 10--30 seconds depending on the creature''s size and how many manacles you apply. A two-legged creature with its legs bound takes a -15-foot circumstance penalty to its Speeds, and a two-handed creature with its wrists bound has to succeed at a DC 5 flat check any time it uses a manipulate action or else that action fails. This DC may be higher depending on how tightly the manacles constrain the hands. A creature bound to a stationary object is immobilized. For creatures with more or fewer limbs, the GM determines what effect manacles have, if any. Freeing a creature from superior manacles require six successes at DC 42.');
COMMIT;

BEGIN TRANSACTION;
INSERT INTO gear_traits (gear_id, trait_id) VALUES (81,203); -- Scholarly Journal -> Uncommon
INSERT INTO gear_traits (gear_id, trait_id) VALUES (82,203); -- Survey Map -> Uncommon
INSERT INTO gear_traits (gear_id, trait_id) VALUES (89,203); -- Scholarly Journal (Compendium) -> Uncommon
INSERT INTO gear_traits (gear_id, trait_id) VALUES (94,203); -- Survey Map (Atlas) -> Uncommon
COMMIT;
