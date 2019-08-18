-- -*- mode:sql sql-product:sqlite -*-

PRAGMA foreign_keys = ON; -- database requires foreign key checking to be turned
                          -- on PER CONNECTION

-- TODO insert the damage category descriptions in MARKDOWN format from page 452.

BEGIN TRANSACTION;
INSERT INTO damagecategories VALUES(1,1,'452','Physical','Damage dealt by weapons, many physical hazards, and a handful of spells is collectively called physical damage. The main types of physical damage are bludgeoning, piercing, and slashing. **Bludgeoning damage** comes from weapons and hazards that deal blunt-force trauma, like a hit from a club or being dashed against rocks. **Piercing damage** is dealt from stabs and punctures, whether from a dragon’s fangs or the thrust of a spear. **Slashing damage** is delivered by a cut, be it the swing of the sword or the blow from a scythe blades trap.\n\nGhosts and other incorporeal creatures have a high resistance to physical attacks that aren’t magical (attacks that lack the magical trait). Furthermore, most incorporeal creatures have additional, though lower, resistance to magical physical damage (such as damage dealt from a mace with the magic trait) and most other damage types.');
INSERT INTO damagecategories VALUES(2,1,'452','Energy','Many spells and other magical effects deal energy damage. Energy damage is also dealt from effects in the world, such as the biting cold of a blizzard to a raging forest fire. The main types of energy damage are acid, cold, electricity, fire, and sonic. **Acid damage** can be delivered by gases, liquids, and certain solids that dissolve flesh, and sometimes by harder materials. **Cold damage** freezes material by way of contact with chilling gases and ice. **Electricity damage** comes from the discharge of powerful lightning and sparks. **Fire damage** burns through heat and combustion. **Sonic damage** assaults matter with high-frequency vibration and sound waves. Many times, you deal energy damage by casting magic spells, and doing so is often useful against creatures that have immunities or resistances to physical damage.\n\nTwo special types of energy damage specifically target the living and the undead. Positive energy often manifests as healing energy to living creatures but can create **positive damage** that withers undead bodies and disrupts and injures incorporeal undead. Negative energy often revivifies the unnatural, unliving power of undead, while manifesting as **negative damage** that gnaws at the living.\n\nPowerful and pure magical energy can manifest itself as **force damage**. Few things can resist this type of damage—not even incorporeal creatures such as ghosts and wraiths. ');
INSERT INTO damagecategories VALUES(3,1,'452','Alignment','Weapons and effects keyed to a particular alignment can deal **chaotic**, **evil**, **good**, or **lawful** damage. These damage types apply only to creatures that have the opposing alignment trait. Chaotic damage harms only lawful creatures, evil damage harms only good creatures, good damage harms only evil creatures, and lawful damage harms only chaotic creatures.');
INSERT INTO damagecategories VALUES(4,1,'452','Mental','Sometimes an effect can target the mind with enough psychic force to actually deal damage to the creature. When it does, it deals **mental damage**. Mindless creatures and those with only programmed or rudimentary intelligence are often immune to mental damage and effects.');
INSERT INTO damagecategories VALUES(5,1,'452','Poison','Venoms, toxins, and the like can deal **poison damage**, which affects creatures by way of contact, ingestion, innhalation, or injury, In addition to coming from monster attacks, alchemical items, and spells, poison damage is often caused by ongoing afflictions, which follow special rules described on page 457.');
INSERT INTO damagecategories VALUES(6,1,'452','Bleed',' Another special type of physical damage is **bleed damage**. This is persistent damage that represents loss of blood. As such, it has no effect on nonliving creatures or living creatures that don’t need blood to live. Weaknesses and resistances to physical damage apply.');
INSERT INTO damagecategories VALUES(7,1,'452','Precision','Sometimes you are able to make the most of your attack through sheer precision. When you hit with an ability that grants you **precision damage**, you increase the attack’s listed damage, using the same damage type, rather than tracking a separate pool of damage. For example, a non-magical dagger Strike that deals 1d6 precision damage from a rogue’s sneak attack increases the piercing damage by 1d6.\n\nSome creatures are immune to precision damage, regardless of the damage type; these are often amorphous creatures that lack vulnerable anatomy. A creature immune to precision damage would ignore the 1d6 precision damage in the example above, but it would still take the rest of the piercing damage from the Strike. Likewise, since precision damage is always the same type of damage as the attack it’s augmenting, a creature that is resistant to non-magical damage, like a ghost or other incorporeal creature, would resist not only the dagger’s damage but also the precision damage, even though it is not specifically resistant to precision damage.');
INSERT INTO damagecategories VALUES(8,1,'452','Precious Materials','While not their own damage category, precious materials can modify damage to penetrate a creature’s resistances or take advantage of its weaknesses. For instance, silver weapons are particularly effective against lycanthropes and bypass the resistances to physical damage that most devils have.');
COMMIT;

BEGIN TRANSACTION;
INSERT INTO damagetypes VALUES(1,1,'452',1,'B','Bludgeoning');
INSERT INTO damagetypes VALUES(2,1,'452',1,'P','Piercing');
INSERT INTO damagetypes VALUES(3,1,'452',1,'S','Slashing');
INSERT INTO damagetypes VALUES(4,1,'452',2,NULL,'Acid');
INSERT INTO damagetypes VALUES(5,1,'452',2,NULL,'Cold');
INSERT INTO damagetypes VALUES(6,1,'452',2,NULL,'Electricity');
INSERT INTO damagetypes VALUES(7,1,'452',2,NULL,'Fire');
INSERT INTO damagetypes VALUES(8,1,'452',2,NULL,'Sonic');
INSERT INTO damagetypes VALUES(9,1,'452',2,NULL,'Positive');
INSERT INTO damagetypes VALUES(10,1,'452',2,NULL,'Negative');
INSERT INTO damagetypes VALUES(11,1,'452',3,NULL,'Chaotic');
INSERT INTO damagetypes VALUES(12,1,'452',3,NULL,'Evil');
INSERT INTO damagetypes VALUES(13,1,'452',3,NULL,'Good');
INSERT INTO damagetypes VALUES(14,1,'452',3,NULL,'Lawful');
INSERT INTO damagetypes VALUES(15,1,'452',4,NULL,'Mental');
INSERT INTO damagetypes VALUES(16,1,'452',5,NULL,'Poison');
INSERT INTO damagetypes VALUES(17,1,'452',6,NULL,'Bleed');
INSERT INTO damagetypes VALUES(18,1,'452',7,NULL,'Precision');
INSERT INTO damagetypes VALUES(19,1,'452',8,NULL,'Precious Materials');
COMMIT;
