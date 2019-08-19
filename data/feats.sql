-- -*- mode:sql sql-product:sqlite -*-

PRAGMA foreign_keys = ON; -- database requires foreign key checking to be turned
                          -- on PER CONNECTION

INSERT INTO feats (
  feat_id,
  sources_id,
  sources_pages,
  short_name,
  descr,
  action_id,
  frequency_id,
  triggers_id,
  requirements_id)
VALUES
-- Dwarf Ancestry Feats
  (1,1,'36','Dwarven Lore','You eagerly absorbed the old stories and traditions of your ancestors, your gods, and your people, studying in subjects and techniques passed down for generation upon generation. You gain the trained proficiency rank in Crafting and Religion. If you would automatically become trained in one of those skills (from your background or class, for example), you instead become trained in a skill of your choice. You also become trained in Dwarven Lore.',NULL,NULL,NUll,NUll),
  (2,1,'36','Dwarven Weapon Familiarity','Your kin have instilled in you an affinity for hard-hitting weapons, and you prefer these to more elegant arms. You are trained with the battle axe, pick, and warhammer. You also gain access to all uncommon dwarf weapons. For the purpose of determining your proficiency, martial dwarf weapons are simple weapons and advanced dwarf weapons are martial weapons.',NULL,NULL,NULL,NULL),
  (3,1,'36','Rock Runner','Your innate connection to stone makes you adept at moving across uneven surfaces. You can ignore difficult terrain caused by rubble and uneven ground made of stone and earth. In addition, when you use the Acrobatics skill to Balance on narrow surfaces or uneven ground made of stone or earth, you aren’t flat-footed, and when you roll a success at one of these Acrobatics checks, you get a critical success instead.',NULL,NULL,NULL,NULL),
  (4,1,'36','Stonecunning','You have a knack for noticing even small inconsistencies and craftsmanship techniques in the stonework around you. You gain a +2 circumstance bonus to Perception checks to notice unusual stonework. This bonus applies to checks to discover mechanical traps made of stone or hidden within stone. If you aren’t using the Seek action or searching, the GM automatically rolls a secret check for you to notice unusual stonework anyway. This check doesn’t gain the circumstance bonus, and it takes a –2 circumstance penalty.',NULL,NULL,NULL,NULL),
  (5,1,'36','Unburdened Iron','You’ve learned techniques first devised by your ancestors during their ancient wars, allowing you to comfortably wear massive suits of armor. Ignore the reduction to your Speed from any armor you wear. In addition, any time you’re taking a penalty to your Speed from some other reason (such as from the encumbered condition or from a spell), deduct 5 feet from the penalty. For example, the encumbered condition normally gives a –10-foot penalty to Speed, but it gives you only a –5-foot penalty. If your Speed is taking multiple penalties, pick only one penalty to reduce.',NULL,NULL,NULL,NULL),
  (6,1,'36','Vengeful Hatred','You heart aches for vengeance against those who have wronged your people. Choose one of the following dwarven ancestral foes when you gain Vengeful Hatred: drow, duergar, giant, or orc. You gain a +1 circumstance bonus to damage with weapons and unarmed attacks against creatures with that trait. If your attack would deal more than one weapon die of damage (as is common at higher levels than 1st), the bonus is equal to the number of weapon dice or unarmed attack dice. In addition, if a creature critically succeeds at an attack against you and deals damage to you, you gain your bonus to damage against that creature for 1 minute regardless of whether it has the chosen trait. Special Your GM can add appropriate creature traits to the ancestral foes list if your character is from a community that commonly fights other types of enemies.',NULL,NULL,NULL,NULL),
  (7,1,'36','Boulder Roll','Your dwarven build allows you to push foes around, just like a mighty boulder tumbles through a subterranean cavern. Take a Step into the square of a foe that is your size or smaller, and the foe must move into the empty space directly behind it. The foe must move even if doing so places it in harm’s way. The foe can attempt a Fortitude saving throw against your Athletics DC to block your Step. If the foe attempts this saving throw, unless it critically succeeds, it takes bludgeoning damage equal to your level plus your Strength modifier. If the foe can’t move into an empty space (if it is surrounded by solid objects or other creatures, for example), your Boulder Roll has no effect.',2,NULL,NULL,NULL),
  (8,1,'37','Dwarven Weapon Cunning','You’ve learned cunning techniques to get the best effects out of your dwarven weapons. Whenever you critically hit using a battle axe, pick, warhammer, or a dwarf weapon, you apply the weapon’s critical specialization effect.',NULL,NULL,NULL,NULL),
  (9,1,'37','Mountain’s Stoutness','Your hardiness lets you withstand more punishment than most before going down. Increase your maximum Hit Points by your level. You also decrease the DC of recovery checks when you have the dying condition by 1. If you also have the Toughness feat, the Hit Points gained from it and this feat are cumulative, and you decrease the DC of recovery checks by 4.',NULL,NULL,NULL,NULL),
  (10,1,'37','Stonewalker','You have a deep reverence for and connection to stone. You gain meld into stone as a 3rd-level divine innate spell that you can cast once per day. If you have the Stonecunning dwarf ancestry feat, you can attempt to find unusual stonework and stonework traps that require legendary proficiency in Perception. If you have both Stonecunning and legendary proficiency in Perception, when you’re not Seeking and the GM rolls a secret check for you to notice unusual stonework,you keep the bonus from Stonecunning and don’t take the -2 circumstance penalty.',NULL,NULL,NULL,NULL),
  (11,1,'37','Dwarven Weapon Expertise','Your dwarven affinity blends with your training, granting you great skill with dwarven weapons. Whenever you gain a class feature that grants you expert or greater proficiency in certain weapons, you also gain that proficiency for battle axes, picks, warhammers, and all dwarven weapons in which you are trained.',NULL,NULL,NULL,NULL),
-- Elven Ancestry Feats
  (12,1,'40','Ancestral Longevity','You have accumulated a vast array of lived knowledge over the years. During your daily preparations, you can reflect upon your life experiences to gain the trained proficiency rank in one skill of your choice. This proficiency lasts until you prepare again. Since this proficiency is temporary, you can’t use it as a prerequisite for a skill increase or a permanent character option like a feat.',NULL,NULL,NULL,NULL),
  (13,1,'40','Elven Lore','You’ve studied in traditional elven arts, learning about arcane magic and the world around you. You gain the trained proficiency rank in Arcana and Nature. If you would automatically become trained in one of those skills (from your background or class, for example), you instead become trained in a skill of your choice. You also become trained in Elven Lore.',NULL,NULL,NULL,NULL),
  (14,1,'40','Elven Weapon Familiarity','You favor bows and other elegant weapons. You are trained with longbows, composite longbows, longswords, rapiers, shortbows, and composite shortbows. In addition, you gain access to all uncommon elf weapons. For the purpose of determining your proficiency, martial elf weapons are simple weapons and advanced elf weapons are martial weapons.',NULL,NULL,NULL,NULL),
  (15,1,'40','Forlorn','Watching your friends age and die fills you with moroseness that protects you against harmful emotions. You gain a +1 circumstance bonus to saving throws against emotion effects. If you roll a success on a saving throw against an emotion effect, you get a critical success instead.',NULL,NULL,NULL,NULL),
  (16,1,'40','Nimble Elf','Your muscles are tightly honed. Your Speed increases by 5 feet.',NULL,NULL,NULL,NULL),
  (17,1,'40','Otherworldly Magic','Your elven magic manifests as a simple arcane spell, even if you aren’t formally trained in magic. Choose one cantrip from the arcane spell list. You can cast this cantrip as an arcane innate spell at will. A cantrip is heightened to a spell level equal to half your level rounded up.',NULL,NULL,NULL,NULL),
  (18,1,'40','Unwavering Mien','Your mystic control and meditations allow you to resist external influences upon your consciousness. Whenever you are affected by a mental effect that lasts at least 2 rounds, you can reduce the duration by 1 round. You still require natural sleep, but you treat your saving throws against effects that would cause you to fall asleep as one degree of success better. This protects only against sleep effects, not against other forms of falling unconscious.',NULL,NULL,NULL,NULL),
  (19,1,'40','Ageless Patience','You work at a pace born from longevity that enhances your thoroughness. You can voluntarily spend twice as much time as normal on a Perception check or skill check to gain a +2 circumstance bonus to that check. You also don’t treat a natural 1 as worse than usual on these checks; you get a critical failure only if your result is 10 lower than the DC. For example, you could get these benefits if you spent 2 actions to Seek, which normally takes 1 action. You can get these benefits during exploration by taking twice as long exploring as normal, or in downtime by spending twice as much downtime. The GM might determine a situation doesn’t grant you a benefit if a delay would be directly counterproductive to your success, such as a tense negotiation with an impatient creature.',NULL,NULL,NULL,NULL),
  (20,1,'41','Elven Weapon Elegance','You are attuned to the weapons of your elven ancestors and are particularly deadly when using them. Whenever you critically hit using an elf weapon or one of the weapons listed in Elven Weapon Familiarity, you apply the weapon’s critical specialization effect.',NULL,NULL,NULL,NULL),
  (21,1,'41','Elf Step','You move in a graceful dance, and even your steps are broad. You Step 5 feet twice.',1,NULL,NULL,NULL),
  (22,1,'41','Expert Longevity','You’ve continued to refine the knowledge and skills you’ve gained through your life. When you choose a skill in which to become trained with Ancestral Longevity, you can also choose a skill in which you are already trained and become an expert in that skill. This lasts until your Ancestral Longevity expires. When the effects of Ancestral Longevity and Expert Longevity expire, you can retrain one of your skill increases. The skill increase you gain from this retraining must either make you trained in the skill you chose with Ancestral Longevity or make you an expert in the skill you chose with Expert Longevity.',NULL,NULL,NULL,NULL),
  (23,1,'41','Universal Longevity','You’ve perfected your ability to keep up with all the skills you’ve learned over your long life, so you’re almost never truly untrained at a skill. You reflect on your life experiences, changing the skills you selected with Elven Longevity and Expert Longevity.',1,6,NULL,NULL),
  (24,1,'41','Elven Weapon Expertise','Your elven affinity blends with your class training, granting you great skill with elven weapons. Whenever you gain a class feature that grants you expert or greater proficiency in certain weapons, you also gain that proficiency in longbows, composite longbows, longswords, rapiers, shortbows, composite shortbows, and all elf weapons in which you are trained.',NULL,NULL,NULL,NULL),
-- Gnome Ancestry Feats
  (25,1,'44','Animal Accomplice','You build a rapport with an animal, which becomes magically bonded to you. You gain a <%FAMILARS%%>familiar using the rules on page 217. The type of animal is up to you, but most gnomes choose animals with a burrow Speed.',NULL,NULL,NULL,NULL),
  (26,1,'44','Burrow Elocutionist','You recognize the chittering of ground creatures as its own peculiar language. You can ask questions of, receive answers from, and use the Diplomacy skill with animals that have a burrow Speed, such as badgers, ground squirrels, moles, and prairie dogs. The GM determines which animals count for this ability.',NULL,NULL,NULL,NULL),
  (27,1,'44','Fey Fellowship','Your enhanced fey connection affords you a warmer reception from creatures of the First World as well as tools to foil their tricks. You gain a +2 circumstance bonus to both Perception checks and saving throws against fey.',NULL,NULL,NULL,NULL),
  (28,1,'44','First World Magic','Your connection to the First World grants you a primal innate spell, much like those of the fey. Choose one cantrip from the primal spell list. You can cast this spell as a primal innate spell at will. A cantrip is heightened to a spell level equal to half your level rounded up.',NULL,NULL,NULL,NULL),
  (29,1,'44','Gnome Obsession','You might have a flighty nature, but when a topic captures your attention, you dive into it headfirst. Pick a Lore skill. You gain the trained proficiency rank in that skill. At 2nd level, you gain expert proficiency in the chosen Lore as well as the Lore granted by your background, if any. At 7th level you gain master proficiency in these Lore skills, and at 15th level you gain legendary proficiency in them.',NULL,NULL,NULL,NULL),
  (30,1,'44','Gnome Weapon Familiarity','You favor unusual weapons tied to your people, such as blades with curved and peculiar shapes. You are trained with the glaive and kukri. In addition, you gain access to all uncommon gnome weapons. For the purpose of determining your proficiency, martial gnome weapons are simple weapons and advanced gnome weapons are martial weapons.',NULL,NULL,NULL,NULL),
  (31,1,'44','Illusion Sense','Your ancestors spent their days cloaked and cradled in illusions, and as a result, sensing illusion magic is second nature to you. You gain a +1 circumstance bonus to both Perception checks and Will saves against illusions. When you come within 10 feet of an illusion that can be disbelieved, the GM rolls a secret check for you to disbelieve it, even if you didn’t spend an action to Interact with the illusion.',NULL,NULL,NULL,NULL),
  (32,1,'45','Animal Elocutionist','You hear animal sounds as conversations instead of unintelligent noise, and can respond in turn. You can speak to all animals, not just animals with a burrow Speed. You gain a +1 circumstance bonus to Make an Impression on animals (which usually uses the Diplomacy skill).',NULL,NULL,NULL,NULL),
  (33,1,'45','Energized Font','The magic within you provides increased energy you can use to focus. You regain 1 Focus Point, up to your usual maximum.',1,6,NULL,NULL),
  (34,1,'45','Gnome Weapon Innovator','You produce outstanding results when wielding unusual weapons. Whenever you critically hit using a glaive, kukri, or gnome weapon, you apply the weapon’s critical specialization effect.',NULL,NULL,NULL,NULL),
  (35,1,'45','First World Adept','Over time your fey magic has grown stronger. You gain faerie fire and invisibility as 2nd-level primal innate spells. You can cast each of these primal innate spells once per day.',NULL,NULL,NULL,NULL),
  (36,1,'45','Vivacious Conduit','Your connection to the First World has grown, and its positive energy flows into you rapidly. If you rest for 10 minutes, you gain Hit Points equal to your Constitution modifier × half your level. This is cumulative with any healing you receive from Treat Wounds.',NULL,NULL,NULL,NULL),
  (37,1,'45','Gnome Weapon Expertise','Your gnome affinity blends with your class training, granting you great skill with gnome weapons. Whenever you gain a class feature that grants you expert or greater proficiency in a given weapon or weapons, you also gain that proficiency in the glaive, kukri, and all gnome weapons in which you are trained.',NULL,NULL,NULL,NULL),
-- Goblin Ancestry Feats
  (38,1,'48','Burn It!','Fire fascinates you. Your spells and alchemical items that deal fire damage gain a status bonus to damage equal to half the spell’s level or one-quarter the item’s level (minimum 1). You also gain a +1 status bonus to any persistent fire damage you deal.',NULL,NULL,NULL,NULL),
  (39,1,'48','City Scavenger','You know that the greatest treasures often look like refuse, and you scoff at those who throw away perfectly good scraps. You gain a +1 circumstance bonus to checks to Subsist, and you can use Society or Survival when you Subsist in a settlement.',NULL,NULL,NULL,NULL),
  (40,1,'48','Goblin Lore','You’ve picked up skills and tales from your goblin community. You gain the trained proficiency rank in Nature and Stealth. If you would automatically become trained in one of those skills (from your background or class, for example), you instead become trained in a skill of your choice. You also become trained in Goblin Lore.',NULL,NULL,NULL,NULL),
  (41,1,'48','Goblin Scuttle','You take advantage of your ally’s movement to adjust your position. You Step.',5,NULL,1,NULL),
  (42,1,'48','Goblin Song','You sing annoying goblin songs, distracting your foes with silly and repetitive lyrics. Attempt a Performance check against the Will DC of a single enemy within 30 feet. This has all the usual traits and restrictions of a Performance check. You can affect up to two targets within range if you have expert proficiency in Performance, four if you have master proficiency, and eight if you have legendary proficiency.',1,NULL,NULL,NULL),
  (43,1,'48','Goblin Weapon Familiarity','Others might look upon them with disdain, but you know that the weapons of your people are as effective as they are sharp. You are trained with the dogslicer and horsechopper. In addition, you gain access to all uncommon goblin weapons. For the purpose of determining your proficiency, martial goblin weapons are simple weapons and advanced goblin weapons are martial weapons.',NULL,NULL,NULL,NULL),
  (44,1,'48','Junk Tinker','You can make useful tools out of even twisted or rusted scraps. When using the Crafting skill to Craft, you can make level 0 items, including weapons but not armor, out of junk. This reduces the Price to one-quarter the usual amount but always results in a shoddy item. Shoddy items normally give a penalty, but you don’t take this penalty when using shoddy items you made. You can also incorporate junk to save money while you Craft any item. This grants you a discount on the item as if you had spent 1 additional day working to reduce the cost, but the item is obviously made of junk. At the GM’s discretion, this might affect the item’s resale value depending on the buyer’s tastes.',NULL,NULL,NULL,NULL),
  (45,1,'48','Rough Rider','You are especially good at riding traditional goblin mounts. You gain the Ride feat, even if you don’t meet the prerequisites. You gain a +1 circumstance bonus to Nature checks to use Command an Animal on a goblin dog or wolf mount. You can always select a wolf as your animal companion, even if you would usually select an animal companion with the mount special ability, such as for a champion’s steed ally.',NULL,NULL,NULL,NULL),
  (46,1,'49','Very Sneaky','Taller folk rarely pay attention to the shadows at their feet, and you take full advantage of this. You can move 5 feet farther when you take the Sneak action, up to your Speed. In addition, as long as you continue to use Sneak actions and succeed at your Stealth check, you don’t become observed if you don’t have cover or greater cover and aren’t concealed at the end of the Sneak action, as long as you have cover or greater cover or are concealed at the end of your turn.',NULL,NULL,NULL,NULL),
  (47,1,'49','Goblin Weapon Frenzy','You know how to wield your people’s vicious weapons. Whenever you score a critical hit using a goblin weapon, you apply the weapon’s critical specialization effect.',NULL,NULL,NULL,NULL),
  (48,1,'49','Cave Climber','After years of crawling and climbing through caverns, you can climb easily anywhere you go. You gain a climb Speed of 10 feet.',NULL,NULL,NULL,NULL),
  (49,1,'49','Skittering Scuttle','You can scuttle farther and faster when maneuvering alongside allies. When you use <%FEATS%Goblin Scuttle%%>Goblin Scuttle, you can Stride up to half your Speed instead of Stepping.',NULL,NULL,NULL,NULL),
  (50,1,'49','Goblin Weapon Expertise','Your goblin affinity blends with your class training, granting you great skill with goblin weapons. Whenever you gain a class feature that grants you expert or greater proficiency in a given weapon or weapons, you also gain that proficiency in the dogslicer, horsechopper, and all goblin weapons in which you are trained.',NULL,NULL,NULL,NULL),
  (51,1,'49','Very, Very Sneaky','You can move up to your Speed when you use the Sneak action, and you no longer need to have cover or greater cover or be concealed to Hide or Sneak.',NULL,NULL,NULL,NULL),
-- Halfling Ancestry Feats
  (52,1,'52','Distracting Shadows','You have learned to remain hidden by using larger folk as a distraction to avoid drawing attention to yourself. You can use creatures that are at least one size larger than you (usually Medium or larger) as cover for the Hide and Sneak actions, though you still can’t use such creatures as cover for other uses, such as the Take Cover action.',NULL,NULL,NULL,NULL),
  (53,1,'52','Halfling Lore','You’ve dutifully learned how to keep your balance and how to stick to the shadows where it’s safe, important skills passed down through generations of halfling tradition. You gain the trained proficiency rank in Acrobatics and Stealth. If you would automatically become trained in one of those skills (from your background or class, for example), you instead become trained in a skill of your choice. You also become trained in Halfling Lore.',NULL,NULL,NULL,NULL),
  (54,1,'52','Halfling Luck','Your happy-go-lucky nature makes it seem like misfortune avoids you, and to an extent, that might even be true. You can reroll the triggering check, but you must use the new result, even if it’s worse than your first roll.',4,6,2,NULL),
  (55,1,'52','Halfling Weapon Familiarity','You favor traditional halfling weapons, so you’ve learned how to use them more effectively. You have the trained proficiency with the sling, halfling sling staff, and shortsword. In addition, you gain access to all uncommon halfling weapons. For you, martial halfling weapons are simple weapons, and advanced halfling weapons are martial weapons.',NULL,NULL,NULL,NULL),
  (56,1,'52','Sure Feet','Whether keeping your balance or scrambling up a tricky climb, your hairy, calloused feet easily find purchase. If you roll a success on an Acrobatics check to Balance or an Athletics check to Climb, you get a critical success instead. You’re not flat-footed when you attempt to Balance or Climb.',NULL,NULL,NULL,NULL),
  (57,1,'52','Titan Slinger','You have learned how to use your sling to fell enormous creatures. When you hit on an attack with a sling against a Large or larger creature, increase the size of the weapon damage die by one step (details on increasing weapon damage die sizes can be found on page 279).',NULL,NULL,NULL,NULL),
  (58,1,'52','Unfettered Halfling','You were forced into service as a laborer, either pressed into indentured servitude or shackled by the evils of slavery, but you’ve since escaped and have trained to ensure you’ll never be caught again. Whenever you roll a success on a check to Escape or a saving throw against an effect that would impose the grabbed or restrained condition on you, you get a critical success instead. Whenever a creature rolls a failure on a check to Grapple you, they get a critical failure instead. If a creature uses the Grab ability on you, it must succeed at an Athletics check to grab you instead of automatically grabbing you.',NULL,NULL,NULL,NULL),
  (59,1,'52','Watchful Halfling','Your communal lifestyle causes you to pay close attention to the people around you, allowing you to more easily notice when they act out of character. You gain a +2 circumstance bonus to Perception checks when using the Sense Motive basic action to notice enchanted or possessed characters. If you aren’t actively using Sense Motive on an enchanted or possessed character, the GM rolls a secret check, without the usual circumstance and with a –2 circumstance penalty, for you to potentially notice the enchantment or possession anyway. In addition to using it for skill checks, you can use the Aid basic action to grant a bonus to another creature’s saving throw or other check to overcome enchantment or possession. As usual for Aid, you need to prepare by using an action on your turn to encourage the creature to fight against the effect.',NULL,NULL,NULL,NULL),
  (60,1,'53','Cultural Adaptability','During your adventures, you’ve honed your ability to adapt to the culture of the predominant ancestry around you. You gain the Adopted Ancestry general feat, and you also gain one 1st-level ancestry feat from the ancestry you chose for the Adopted Ancestry feat.',NULL,NULL,NULL,NULL),
  (61,1,'53','Halfling Weapon Trickster','You are particularly adept at fighting with your people’s favored weapons. Whenever you critically succeed at an attack roll using a shortsword, a sling, or a halfling weapon, you apply the weapon’s critical specialization effect.',NULL,NULL,NULL,NULL),
  (62,1,'53','Guiding Luck','Your luck guides you to look the right way and aim your blows unerringly. You can use Halfling Luck twice per day: once in response to its normal trigger, and once when you fail a Perception check or attack roll instead of the normal trigger.',NULL,NULL,NULL,NULL),
  (63,1,'53','Irrepressible','You are easily able to ward off attempts to play on your fears and emotions. When you roll a success on a saving throw against an emotion effect, you get a critical success instead. If your heritage is gutsy halfling, when you roll a critical failure on a saving throw against an emotion effect, you get a failure instead.',NULL,NULL,NULL,NULL),
  (64,1,'53','Ceaseless Shadows','You excel at going unnoticed, especially among a crowd. You no longer need to have cover or be concealed to Hide or Sneak. If you would have lesser cover from creatures, you gain cover and can Take Cover, and if you would have cover from creatures, you gain greater cover.',NULL,NULL,NULL,NULL),
  (65,1,'53','Halfling Weapon Expertise','Your halfling affinity blends with your class training, granting you great skill with halfling weapons. Whenever you gain a class feature that grants you expert or greater proficiency in a given weapon or weapons, you also gain that proficiency in the sling, halfling sling staff, shortsword, and all halfling weapons in which you are trained.',NULL,NULL,NULL,NULL),
-- Human Ancestry Feats
  (66,1,'57','Adapted Cantrip','Through study of multiple magical traditions, you’ve altered a spell to suit your spellcasting style. Choose one cantrip from a magical tradition other than your own. If you have a spell repertoire or a spellbook, replace one of the cantrips you know or have in your spellbook with the chosen spell. If you prepare spells without a spellbook (if you’re a cleric or druid, for example), one of your cantrips must always be the chosen spell, and you prepare the rest normally. You can cast this cantrip as a spell of your class’s tradition. If you swap or retrain this cantrip later, you can choose its replacement from the same alternate tradition or a different one.',NULL,NULL,NULL,NULL),
  (67,1,'57','Cooperative Nature','The short human life span lends perspective and has taught you from a young age to set aside differences and work with others to achieve greatness. You gain a +4 circumstance bonus on checks to Aid.',NULL,NULL,NULL,NULL),
  (68,1,'57','General Training','Your adaptability manifests in your mastery of a range of useful abilities. You gain a 1st-level general feat. You must meet the feat’s prerequisites, but if you select this feat during character creation, you can select the feat later in the process in order to determine which prerequisites you meet.',NULL,NULL,NULL,NULL),
  (69,1,'57','Haughty Obstinacy','Your powerful ego makes it harder for others to order you around. If you roll a success on a saving throw against a mental effect that attempts to directly control your actions, you critically succeed instead. If a creature rolls a failure on a check to Coerce you using Intimidation, it gets a critical failure instead (so it can’t try to Coerce you again for 1 week).',NULL,NULL,NULL,NULL),
  (70,1,'57','Natural Ambition','You were raised to be ambitious and always reach for the stars, leading you to progress quickly in your chosen field. You gain a 1st-level class feat for your class. You must meet the prerequisites, but you can select the feat later in the character creation process in order to determine which prerequisites you meet.',NULL,NULL,NULL,NULL),
  (71,1,'57','Natural Skill','Your ingenuity allows you to learn a wide variety of skills. You gain the trained proficiency rank in two skills of your choice.',NULL,NULL,NULL,NULL),
  (72,1,'57','Unconventional Weaponry','You’ve familiarized yourself with a particular weapon, potentially from another ancestry or culture. Choose an uncommon simple or martial weapon with a trait corresponding to an ancestry (such as dwarf, goblin, or orc) or that is common in another culture. You gain access to that weapon, and for the purpose of determining your proficiency, that weapon is a simple weapon. If you are trained in all martial weapons, you can choose an uncommon advanced weapon with such a trait. You gain access to that weapon, and for the purpose of determining your proficiency, that weapon is a martial weapon.',NULL,NULL,NULL,NULL),
  (73,1,'57','Adaptive Adept','You’ve continued adapting your magic to blend your class’s tradition with your adapted tradition. Choose a cantrip or 1st-level spell from the same magical tradition as your cantrip from Adapted Cantrip. You gain that spell, adding it to your spell repertoire, spellbook, or prepared spells just like the cantrip from Adapted Spell. You can cast this spell as a spell of your class’s magical tradition. If you choose a 1st-level spell, you don’t gain access to the heightened versions of that spell, meaning you can’t prepare them if you prepare spells and you can’t learn them or select the spell as a signature spell if you have a spell repertoire.',NULL,NULL,NULL,NULL),
  (74,1,'57','Clever Improviser','You’ve learned how to handle situations when you’re out of your depth. You gain the Untrained Improvisation general feat. In addition, you can attempt skill actions that normally require you to be trained, even if you are untrained.',NULL,NULL,NULL,NULL),
  (75,1,'57','Cooperataive Soul','You have developed a soul-deep bond with your comrades and maintain an even greater degree of cooperation with them. If you are at least an expert in the skill you are Aiding, you get a success on any outcome rolled to Aid other than a critical success.',NULL,NULL,NULL,NULL),
  (76,1,'57','Incredible Improvisation','A stroke of brilliance gives you a major advantage with a skill despite your inexperience. Gain a +4 circumstance bonus to the triggering skill check.',4,6,3,NULL),
  (77,1,'58','Multitalented','You’ve learned to split your focus between multiple classes with ease. You gain a 2nd-level multiclass dedication feat (for more about multiclass archetypes, see page 219), even if you normally couldn’t take another dedication feat until you take more feats from your current archetype. If you’re a half-elf, you don’t need to meet the feat’s ability score prerequisites.',NULL,NULL,NULL,NULL),
  (78,1,'58','Unconventional Expertise','You’ve continued to advance your powers using your unconventional weapon. Whenever you gain a class feature that grants you expert or greater proficiency in certain weapons, you also gain that proficiency in the weapon you chose for Unconventional Weaponry.',NULL,NULL,NULL,NULL),
-- Half-Elf Ancestry Feats
  (79,1,'58','Elf Atavism','Your elven blood runs particularly strong, granting you features far more elven than those of a typical half-elf. You may also have been raised among elves, steeped in your elven ancestors’ heritage. You gain the benefits of the elf heritage of your elven parent or ancestors. You typically can’t select a heritage that depends on or improves an elven feature you don’t have. For example, you couldn’t gain the cavern elf’s darkvision ability if you didn’t have low-light vision. In these cases, at the GM’s discretion, you might gain a different benefit.',NULL,NULL,NULL,NULL),
  (80,1,'58','Inspire Imitation','Your own actions inspire your allies to great achievements. Whenever you critically succeed at a skill check, you automatically qualify to use the Aid reaction when attempting to help an ally using the same skill, even without spending an action to prepare to do so.',NULL,NULL,NULL,NULL),
  (81,1,'58','Supernatural Charm','The elven magic in your blood manifests as a force you can use to become more appealing or alluring. You can cast 1st-level charm as an arcane innate spell once per day.',NULL,NULL,NULL,NULL),
-- Half-Orc Ancestry Feats
  (82,1,'59','Monstrous Peacemaker','Your dual human and orc nature has given you a unique perspective, allowing you to bridge the gap between humans and the many intelligent creatures in the world that humans consider monsters. You gain a +1 circumstance bonus to Diplomacy checks against non-humanoid intelligent creatures and against humanoids that are marginalized in human society (at the GM’s discretion, but typically at least including giants, goblins, kobolds, and orcs). You also gain this bonus on Perception checks to Sense the Motives of such creatures.',NULL,NULL,NULL,NULL),
  (83,1,'59','Orc Ferocity','Fierceness in battle runs through your blood, and you refuse to fall from your injuries. You avoid being knocked out and remain at 1 Hit Point, and your wounded condition increases by 1.',5,6,4,NULL),
  (84,1,'59','Orc Sight','Your orc blood is strong enough to grant you the keen vision of your orc forebears. You gain darkvision, allowing you to see in darkness and dim light just as well as you can in bright light. However, in darkness, you see in black and white only.',NULL,NULL,NULL,NULL),
  (85,1,'59','Orc Superstition','You defend yourself against magic by relying on techniques derived from orc cultural superstitions. You gain a +1 circumstance bonus to your saving throw against the triggering spell or magical effect.',5,NULL,5,NULL),
  (86,1,'59','Orc Weapon Famailiarity','In combat, you favor the brutal weapons that are traditional for your orc ancestors. You are trained with the falchion and greataxe. In addition, you gain access to all uncommon orc weapons. For you, martial orc weapons are simple weapons, and advanced orc weapons are martial weapons.',NULL,NULL,NULL,NULL),
  (87,1,'59','Orc Weapon Carnage','You are brutally efficient with the weapons of your orc ancestors. Whenever you critically hit using a falchion, a greataxe, or an orc weapon, you apply the weapon’s critical specialization effect.',NULL,NULL,NULL,NULL),
  (88,1,'59','Victorious Vigor','Your victories in battle fill you with pride and imbue you with the energy to fight a bit longer despite your wounds. You gain temporary Hit Points equal to your Constitution modifier until the end of your next turn.',5,NULL,6,NULL),
  (89,1,'59','Pervasive Superstition','You steep yourself in superstition and practice ancient orc mental exercises for shrugging off the effects of magic. You gain a +1 circumstance bonus to saving throws against spells and magical effects at all times.',NULL,NULL,NULL,NULL),
  (90,1,'59','Incredible Ferocity','Given time to collect yourself after a near-death scrape, you can rebuild your ferocity and withstand additional finishing blows. You can use Orc Ferocity with a frequency of once per hour, rather than once per day.',NULL,NULL,NULL,NULL),
  (91,1,'59','Orc Weapon Expertise','Your orc affinity blends with your class training, granting you great skill with orc weapons. Whenever you gain a class feature that grants you expert or greater proficiency in a given weapon or weapons, you also gain that proficiency in the falchion, the greataxe, and all orc weapons in which you are trained.',NULL,NULL,NULL,NULL),
-- Alchemy Class Feats
  (92,1,'76','Alchemical Familiar','You have used alchemy to create life, a simple creature formed from alchemical materials, reagents, and a bit of your own blood. This alchemical familiar appears to be a small creature of flesh and blood, though it might have some unusual or distinguishing aspects depending on your creative process. Like other familiars, your alchemical familiar assists you in your laboratory and on adventures. The familiar uses your Intelligence modifier to determine its Perception, Acrobatics, and Stealth modifiers (see Familiars for more information).',NULL,NULL,NULL,NULL),
  (93,1,'76','Alchemical Savant','You can identify alchemical items quickly. When using the Crafting skill to Identify Alchemy on an alchemical item you hold, you can do so as a single action, which has the concentrate and manipulate traits, instead of spending 10 minutes. If you have the formula for the item you are attempting to identify, you gain a +2 circumstance bonus to your check, and if you roll a critical failure, you get a failure instead.',NULL,NULL,NULL,NULL),
  (94,1,'76','Far Lobber','You’ve learned how to throw a longer distance. When you throw an alchemical bomb, it has a range increment of 30 feet instead of the usual 20 feet.',NULL,NULL,NULL,NULL),
  (95,1,'76','Quick Bomber','You keep your bombs in easy-to-reach pouches from which you draw without thinking. You Interact to draw a bomb, then Strike with it.',1,NULL,NULL,NULL),
  (96,1,'77','Poison Resistance (Alchemist)','Repeated exposure to toxic reagents has fortified your body against poisons of all kinds. You gain poison resistance equal to half your level, and you gain a +1 status bonus to saving throws against poisons.',NULL,NULL,NULL,NULL),
  (97,1,'77','Revivifying Mutagen','While under the effect of a mutagen, you can metabolize that mutagen’s power to heal yourself. This uses a single action, which has the concentrate and manipulate traits. Once the action is complete, you regain 1d6 Hit Points for every 2 item levels of the mutagen (minimum 1d6), but the mutagen’s duration immediately ends, even if you are under the effect of Persistent Mutagen.',NULL,NULL,NULL,NULL),
  (98,1,'77','Smoke Bomb','You cause the bomb to create a cloud of thick smoke, in addition to its normal effects. When thrown, the bomb creates a cloud of smoke in a 10-foot-radius burst. You choose which corner of the target’s space (or the space in which the bomb lands) the cloud is centered on. Creatures within that area have the concealed condition, and all other creatures are concealed to them. The smoke lasts for 1 minute or until dissipated by a strong wind.',4,1,7,NULL),
  (99,1,'77','Calculated Splash','You have calculated all the angles to maximize a bomb’s splash. When you throw an alchemical bomb with the splash trait, you can cause the bomb to deal splash damage equal to your Intelligence modifier (minimum 0) instead of the normal amount.',NULL,NULL,NULL,NULL),
  (100,1,'77','Efficient Alchemy','Thanks to the time you’ve spent studying and experimenting, you know how to scale your formulas into larger batches that don’t require any additional attention. When spending downtime to Craft alchemical items, you can produce twice as many alchemical items in a single batch without spending additional preparatory time. For instance, if you are creating elixirs of life, you can craft up to eight elixirs in a single batch using downtime, rather than four. This does not reduce the amount of alchemical reagents required or other ingredients needed to craft each item, nor does it increase your rate of progress for days past the base downtime spent. This also does not change the number of items you can create in a batch using advanced alchemy.',NULL,NULL,NULL,NULL),
  (101,1,'78','Enduring Alchemy','You’ve learned how to make your personal energy last just a little bit longer when quickly brewing ad hoc concoctions. When using Quick Alchemy to create an alchemical tool or elixir, that tool or elixir remains potent until the end of your next turn, instead of losing its potency at the start of your next turn.',NULL,NULL,NULL,NULL),
  (102,1,'78','Combine Elixirs','You’ve discovered how to mix two elixirs into a single hybrid concoction. You can spend 2 additional batches of infused reagents to add a second elixir to the one you’re crafting. The second elixir must also be at least 2 levels lower than your advanced alchemy level, and the combination elixir is an alchemical item two levels higher than the higher of the two elixirs’ levels. When this combination elixir is consumed, both the constituent elixirs take effect. For example, you can combine two elixirs of life to create a combined elixir that heals twice the normal amount, or you can combine a lesser darkvision elixir with a lesser eagle-eye elixir to both gain darkvision and find secret doors.',4,1,8,NULL),
  (103,1,'78','Debilitating Bomb','Your bombs impose additional effects on your enemies. You mix a substance into the bomb that causes one of the following: dazzled, deafened, flat-footed, or a –5-foot status penalty to Speeds. If the attack with that bomb hits, the target must succeed at a Fortitude saving throw or suffer that effect until the start of your next turn. Use your class DC for this saving throw (even if someone else throws the bomb).',4,1,9,NULL),
  (104,1,'78','Directional Bombs','You can lob bombs with great force and a precise trajectory to angle the splash in a cone spraying in a single direction. When throwing an alchemical bomb with the splash trait, instead of splashing all squares adjacent to the target, you can treat the target’s space as the first affected square of a 15-foot cone directed away from you, potentially allowing you to avoid allies and splash deeper into enemy lines. If the target takes up more than a single square, the target’s square closest to you is the first affected square of the cone.',NULL,NULL,NULL,NULL),
  (105,1,'79','Feral Mutagen','Your bestial mutagen brings out the beast lurking within you, granting you especially sharp claws and teeth as well as a ferocious appearance. Whenever you’re affected by a bestial mutagen you created, you gain the mutagen’s item bonus to your Intimidation checks. In addition, your claws and jaws are increasingly vicious, and they gain the deadly d10 trait. Finally, you can increase the mutagen’s penalty to AC from –1 to –2 and, in exchange, increase the damage die size of your claws and jaws by one step.',NULL,NULL,NULL,NULL),
  (106,1,'79','Powerful Alchemy','Alchemical items you create on the fly are particularly potent. When you use Quick Alchemy to create an infused alchemical item that allows a saving throw, you can change its DC to your class DC.',NULL,NULL,NULL,NULL),
  (107,1,'79','Sticky Bomb','You mix in an additive to make your bomb’s contents adhere to the target and continue to deal damage. A creature that takes a direct hit from one of your sticky bombs also takes persistent damage equal to and of the same type as the bomb’s splash damage. If the bomb already deals persistent damage, combine the two amounts.',4,1,9,NULL),
  (108,1,'79','Elastic Mutagen','You can cause your body to twist and flow like the quicksilver within your mutagens. Whenever you are under the effects of a quicksilver mutagen you created, you can stretch your legs and Step up to 10 feet, and you can squish and compress your body, allowing you to make it through tight spaces as if you were one size smaller, in addition to any effect from Squeezing.',NULL,NULL,NULL,NULL),
  (109,1,'79','Expanded Splash','The particularly volatile compounds that you brew into your bombs result in them creating especially large and powerful explosions. When you throw an alchemical bomb you created and that bomb has the splash trait, you can add your Intelligence modifier to the bomb’s usual splash damage, and it deals splash damage to every creature within 10 feet of the target.',NULL,NULL,NULL,NULL),
  (110,1,'79','Greater Debilitating Bomb','You have learned enhanced techniques and alchemical secrets that allow you to expand the range of effects you can impose with your bombs. When you use Debilitating Bomb, add the following to the list you can choose from: clumsy 1, enfeebled 1, stupefied 1, or –10-foot status penalty to Speeds.',NULL,NULL,NULL,NULL),
  (111,1,'79','Merciful Elixir','You mix a special additive into your elixir that calms the drinker’s body and mind. The elixir of life attempts to counteract one fear effect or one effect imposing the paralyzed condition on the drinker.',4,1,10,NULL),
  (112,1,'79','Potent Poisoner','By concentrating your poisons’ toxic components, you make them harder for victims to resist. When you craft an alchemical item with the poison trait by any means, the DC is increased by up to 4, to a maximum of your class DC.',NULL,NULL,NULL,NULL),
  (113,1,'79','Extend Elixir','Integrating your own personal energy into the elixirs you create causes them to affect you for longer. When you consume one of your alchemical items that has the elixir and infused traits and a duration of 1 minute or longer, that elixir’s duration is doubled.',NULL,NULL,NULL,NULL),
  (114,1,'79','Invincible Mutagen','The fortifying additives you brew into your mutagens make your juggernaut form impervious. Whenever you’re affected by a juggernaut mutagen you created, you gain resistance to all physical damage equal to your Intelligence modifier (minimum 0).',NULL,NULL,NULL,NULL),
  (115,1,'79','Uncanny Bombs','You lob bombs unerringly, despite obstructions or distance. When you throw an alchemical item with the bomb trait, its range increment increases to 60 feet, you reduce any circumstance bonus to the target’s AC from cover by 1, and you automatically succeed at the flat check when targeting a concealed creature.',NULL,NULL,NULL,NULL),
  (116,1,'80','Glib Mutagen','Your silvertongue mutagen transcends languages and plausibility. When affected by a silvertongue mutagen you have created, you ignore circumstance penalties to Deception, Diplomacy, Intimidation, and Performance checks. In addition, your words transcend linguistic barriers; everyone listening to you speak hears your words as if you were speaking in their own language (though you do not actually speak that language, nor does this ability allow you to understand any additional languages).',NULL,NULL,NULL,NULL),
  (117,1,'80','Greater Merciful Elixir','Your additives contain panaceas that can remedy a plethora of maladies. When you use Merciful Elixir, your elixir can instead attempt to counteract the blinded, deafened, sickened, or slowed condition.',NULL,NULL,NULL,NULL),
  (118,1,'80','True Debilitating Bomb','Ever inventive, you have discovered increasingly devastating ways for your bombs to impede and hamper your foes. When you use Debilitating Bomb, add the following to the list of effects you can choose from: enfeebled 2, stupefied 2, or a –15-foot status penalty to Speeds. If you instead apply one of the effects listed in Debilitating Bomb, the target avoids the effect only if the result of its saving throw is a critical success.',NULL,NULL,NULL,NULL),
  (119,1,'80','Eternal Elixir','Your body readily accepts and retains minor changes. When you drink one of your alchemical items that has the elixir and infused traits and a duration of 1 minute or more, you can make the elixir’s duration indefinite. You can do so only if the elixir’s level is half your level or lower. If you later consume a different elixir and make it indefinite, the effect of the previous indefinite elixir ends.',NULL,NULL,NULL,NULL),
  (120,1,'80','Exploitive Bomb','You mix a substance into the bomb to foil resistances. The bomb reduces any resistance the enemy has to its damage type by an amount equal to your level, but only for that attack.',4,1,11,NULL),
  (121,1,'81','Genius Mutagen','Specialized tweaks to your formula that supplements your genius considerably broaden the benefits you gain from cognitive mutagens. When you’re affected by a cognitive mutagen you created, you also gain the mutagen’s item bonus to Deception, Diplomacy, Intimidation, Medicine, Nature, Performance, Religion, and Survival checks. In addition, you can communicate telepathically with creatures within 60 feet with whom you share a language. The communication is two-way once you establish it, so a creature you contact can also communicate with you.',NULL,NULL,NULL,NULL),
  (122,1,'81','Persistent Mutagen','You’ve trained your physical form to remain stable within the a given altered state. Once per day, when you consume an alchemical item with the infused and mutagen traits that you have crafted, you can retain its effects until the next time you make your daily preparations instead of its normal duration.',NULL,NULL,NULL,NULL),
  (123,1,'81','Improbable Elixirs','Your mastery of alchemical secrets enables you to replicate effects most believe can be achieved only via magic. Select a number of potions equal to your Intelligence modifier (minimum 1) of 9th level or lower. You gain formulas to Craft these potions as alchemical items with the elixir trait. When Crafting these alchemical elixirs, you can substitute alchemical reagents for an equal value of magical components, and you can use alchemist’s tools instead of any other required tool kits. Other than that, the formula does not change. Once you’ve chosen the potion formulas, they can’t be changed.',NULL,NULL,NULL,NULL),
  (124,1,'81','Mindblank Mutagen','With a minor adjustment of ratios in the formula for your serene mutagen, you gain mental protections. When you’re affected by a serene mutagen you created, detection, revelation, and scrying effects of 9th level or lower detect nothing from you or your possessions and auras. For instance, detect magic would still detect other magic in the area, but not any magic on you.',NULL,NULL,NULL,NULL),
  (125,1,'81','Miracle Worker','Your alchemical mastery can resuscitate the recently slain. You can administer a true elixir of life to a creature who has been dead for no more than 2 rounds. When you do, that creature is immediately returned to life with 1 Hit Point and becomes wounded 1.',NULL,4,NULL,NULL),
  (126,1,'81','Perfect Debilitation','You have perfected the formulas for bombs that impede your enemies. When you use Debilitating Bomb, your target avoids the condition the bomb imposes only if it critically succeeds at its saving throw.',NULL,NULL,NULL,NULL),
  (127,1,'81','Craft Philosopher’s Stone','Your research has paid off, culminating in the legendary philosopher’s stone. You learn the formula for the philosopher’s stone and can add it to your formula book.',NULL,NULL,NULL,NULL),
  (128,1,'81','Mega Bomb','You add an incredibly powerful additive to a held bomb to create a mega bomb, greatly increasing its area and power. You use an Interact action to throw the mega bomb, rather than Strike, and you don’t make an attack roll. The mega bomb affects creatures in a 30-foot-radius burst, centered within 60 feet of you. The bomb deals damage as if each creature were the primary target, with a basic Reflex save. On a failed save, a creature also takes any extra effects that affect a primary target (such as flat-footed from bottled lightning). While all targets in the area take splash damage as primary targets, there is no further splash beyond that area. If your next action after creating a mega bomb isn’t an Interact action to throw it, the mega bomb denatures and loses all effects.',1,NULL,NULL,1),
  (129,1,'81','Perfect Mutagen','You have enhanced the formulas for your mutagens, aligning them perfectly to your physiology. When under the effect of a mutagen you crafted, you do not suffer its drawback.',NULL,NULL,NULL,NULL),
-- Barbarian Class Feats
  (130,1,'88','Acute Vision','When you are raging, your visual senses improve, granting you darkvision.',NULL,NULL,NULL,NULL),
  (131,1,'88','Moment of Clarity','You push back your rage for a moment in order to think clearly. Until the end of this turn, you can use actions with the concentrate trait even if those actions don’t have the rage trait.',1,NULL,NULL,NULL),
  (132,1,'88','Raging Intimidation','Your fury fills your foes with fear. While you are raging, your Demoralize and Scare to Death actions (from the Intimidation skill and an Intimidation skill feat, respectively) gain the rage trait, allowing you to use them while raging. As soon as you meet the prerequisites for the skill feats Intimidating Glare and Scare to Death, you gain these feats.',NULL,NULL,NULL,NULL),
  (133,1,'88','Raging Thrower','Thrown weapons become especially deadly in your fury. You apply the additional damage from Rage to your thrown weapon attacks. If you have the Brutal Critical feat or the devastator class feature, apply their benefits to thrown weapon attacks.',NULL,NULL,NULL,NULL),
  (134,1,'88,145','Sudden Charge','With a quick sprint, you dash up to your foe and swing. Stride twice. If you end your movement within melee reach of at least one enemy, you can make a melee Strike against that enemy. You can use Sudden Charge while Burrowing, Climbing, Flying, or Swimming instead of Striding if you have the corresponding movement type.',2,NULL,NULL,NULL),
  (135,1,'88','Acute Scent','When you Rage, your sense of smell improves. You gain imprecise scent with a range of 30 feet.',NULL,NULL,NULL,NULL),
  (136,1,'89','Furious Finish','Desperate to finish the fight, you pour all your rage into one final blow. Make a Strike. If it hits, you gain a circumstance bonus to damage equal to the number of rounds remaining in your Rage (maximum 10). After this Strike, your Rage immediately ends, and you are fatigued until you rest for at least 10 minutes.',1,NULL,NULL,NULL),
  (137,1,'89','No Escape','You keep pace with a retreating foe. Stride up to your Speed, following the foe and keeping it in reach throughout its movement until it stops moving or you’ve moved your full Speed. You can use No Escape to Burrow, Climb, Fly, or Swim instead of Stride if you have the corresponding movement type.',5,NULL,12,NULL),
  (138,1,'89','Second Wind','You can enter a second rage, but afterward you need to catch your breath. You can Rage without waiting for 1 minute after the previous Rage (or 1 round, with quick rage), but when you end this second Rage, you’re fatigued until you rest for 10 minutes.',NULL,NULL,NULL,NULL),
  (139,1,'89','Shake it Off','You concentrate on your rage, overcoming fear and fighting back sickness. Reduce your frightened condition value by 1, and attempt a Fortitude save to recover from the sickened condition as if you had spent an action retching; you reduce your sickened condition value by 1 on a failure (but not on a critical failure), by 2 on a success, or by 3 on a critical success.',1,NULL,NULL,NULL),
  (140,1,'89','Fast Movement','Your rage is a frenzy of rapid movements. While you are raging, you gain a +10-foot status bonus to your Speed.',NULL,NULL,NULL,NULL),
  (141,1,'89','Raging Athlete','Physical obstacles can’t hold back your fury. While you are raging, you gain a climb Speed and swim Speed equal to your land Speed, the DC of High Jumps and Long Jumps decreases by 10, and your Leap distance increases by 5 feet when you jump horizontally and by 2 feet when you jump vertically.',NULL,NULL,NULL,NULL),
  (142,1,'89','Swipe','You make a wide, arcing swing. Make a single melee Strike and compare the attack roll result to the ACs of up to two foes, each of whom must be within your melee reach and adjacent to the other. Roll damage only once and apply it to each creature you hit. A Swipe counts as two attacks for your multiple attack penalty. If you’re using a weapon with the sweep trait, its modifier applies to all your Swipe attacks.',2,NULL,NULL,NULL),
  (143,1,'90','Wounded Rage','You roar in pain, awakening the rage within you. You Rage.',5,NULL,13,NULL),
  (144,1,'90','Animal Skin','Your proficiency in unarmored defense increases to expert. While you are raging and unarmored, your skin transforms into a thick hide resembling your animal’s skin. You gain a +1 status bonus to AC instead of taking a –1 penalty to AC; if you have the greater juggernaut class feature, this status bonus increases to +2. The thickness of your hide gives you a Dexterity modifier cap to your AC of +3.',NULL,NULL,NULL,NULL),
  (145,1,'90','Attack of Opportunity (Barbarian)','You swat a foe that leaves an opening. Make a melee Strike against the triggering creature. If your attack is a critical hit and the trigger was a manipulate action, you disrupt that action. This Strike doesn’t count toward your multiple attack penalty, and your multiple attack penalty doesn’t apply to this Strike.',5,NULL,14,NULL),
  (146,1,'90','Brutal Bully','You push your foes around and leave bruises. While raging, when you successfully Disarm, Grapple, Shove, or Trip a foe, you deal that foe bludgeoning damage equal to your Strength modifier; add this to the damage from a critical success to Trip.',NULL,NULL,NULL,NULL),
  (147,1,'90','Cleave','You swing clear through one foe and into another. Make a melee Strike against the second foe.',5,NULL,15,NULL),
  (148,1,'90','Dragon’s Rage Breath','You breathe deeply and exhale powerful energy in a 30-foot cone or 60-foot line, dealing 1d6 damage per level. The area and damage type match those of your dragon (see Table 3–4. If you used this ability in the last hour, the area and the damage are halved (15-foot cone or 30-foot line; 1d6 damage for every 2 levels). Each creature in the area must attempt a basic Reflex save.',2,NULL,NULL,2),
  (149,1,'91','Giant’s Stature','You grow to incredible size. You become Large, increasing your reach by 5 feet and gaining the clumsy 1 condition (page 618) until you stop raging. Your equipment grows with you.',1,NULL,NULL,3),
  (150,1,'91','Spirits’ Interference','You call forth protective spirits to ward off ranged attacks. Until your rage ends, anyone making a ranged attack against you must succeed at a DC 5 flat check or the attack misses with no effect.',1,NULL,NULL,NULL),
  (151,1,'91','Animal Rage','You transform into your animal. You gain the effects of the 3rd-level animal form spell except you use your own statistics, temporary Hit Points, and unarmed attacks instead of those granted by animal form. You also retain the constant abilities of your gear. If your animal is a frog, your tongue’s reach increases to 15 feet. Dismissing the transformation gains the rage trait.',1,NULL,NULL,NULL),
  (152,1,'91','Furious Bully','You bully foes across the battlefield. While raging, you gain a +2 circumstance bonus to Athletics checks for attack actions.',NULL,NULL,NULL,NULL),
  (153,1,'91','Renewed Vigor','You pause to recover your raging vigor. You gain temporary Hit Points equal to half your level plus your Constitution modifier.',1,NULL,NULL,NULL),
  (154,1,'91','Share Rage','You stoke an ally’s fury. While you are raging, one willing creature within 30 feet gains the effects of the Rage action, except it can still use concentrate actions.',1,NULL,NULL,NULL),
  (155,1,'91','Sudden Leap (Barbarian)','You swing at a foe while mid-leap. Make a Leap, High Jump, or Long Jump and attempt one melee Strike at any point during your jump. Immediately after the Strike, you fall to the ground if you’re in the air, even if you haven’t reached the maximum distance of your jump. If the distance you fall is no more than the height of your jump, you take no damage and land upright. When attempting a High Jump or Long Jump during a Sudden Leap, determine the DC using the Long Jump DCs, and increase your maximum distance to double your Speed.',2,NULL,NULL,NULL),
  (156,1,'91','Thrash','You thrash the grabbed foe around. It takes bludgeoning damage equal to your Strength modifier plus your ferocious specialization damage plus your Rage damage. The foe must attempt a basic Fortitude save against your class DC.',1,NULL,NULL,4),
  (157,1,'91','Come and Get Me','You open yourself to attacks so you can respond in turn. Until your rage ends, you are flat-footed, and damage rolls against you gain a +2 circumstance bonus. If a creature hits you, that creature is flat-footed to you until the end of your next turn. If you hit it before the end of your next turn, you gain temporary Hit Points equal to your Constitution modifier, or double that on a critical hit. These temporary Hit Points last until the end of your rage.',1,NULL,NULL,NULL),
  (158,1,'91','Furious Sprint','You rush forward. Stride up to five times your Speed in a straight line. You can increase the number of actions this activity takes to 3 to Stride up to eight times your Speed in a straight line instead.',2,NULL,NULL,NULL),
  (159,1,'91','Great Cleave','Your fury carries your weapon through multiple foes. When you Cleave, if your Strike also kills or knocks the target unconscious, you can continue to make melee Strikes until you make a Strike that doesn’t kill or knock a creature unconscious, or until there are no creatures adjacent to the most recent creature you attacked while Cleaving, whichever comes first.',NULL,NULL,NULL,NULL),
  (160,1,'91','Knockback','The weight of your swing drives your enemy back. You push the foe back 5 feet, with the effects of a successful Shove. You can follow the foe as normal for a successful Shove.',1,NULL,NULL,5),
  (161,1,'91','Terrifying Howl','You unleash a terrifying howl. Attempt Intimidate checks to Demoralize each creature within 30 feet. Regardless of the results of your checks, each creature is then temporarily immune to Terrifying Howl for 1 minute.',1,NULL,NULL,NULL),
  (162,1,'92','Dragon’s Rage Wings','You sprout dragon wings from your back of the same color as your chosen dragon. While you are raging, you gain a fly Speed equal to your land Speed. If you are flying when your rage ends, you start to fall but the transformation only completes at the last moment, so you take no damage from the fall and land standing up.',1,NULL,NULL,NULL),
  (163,1,'92','Furious Grab','You grab your foe while it’s distracted by your attack. The foe you hit becomes grabbed, as if you had succeeded at an Athletics check to Grapple the foe.',1,NULL,NULL,6),
  (164,1,'92','Predator’s Pounce','You close the distance to your prey in a blur, pouncing on the creature before it can react. You Stride up to your Speed and make a Strike at the end of your movement.',1,NULL,NULL,7),
  (165,1,'92','Spirit’s Wrath','You call forth an ephemeral apparition, typically the ghost of an ancestor or a nature spirit, which takes the form of a wisp. The spirit wisp makes a melee wisp rush unarmed attack against an enemy within 120 feet of you. The wisp’s attack modifier is equal to your proficiency bonus for martial weapons plus your Strength modifier plus a +2 item bonus, and it applies the same circumstance and status bonuses and penalties that you have. On a hit, the wisp deals damage equal to 4d8 plus your Constitution modifier. The damage is your choice of negative or positive damage; don’t apply your Rage damage or your weapon specialization damage, but circumstance and status bonuses and penalties that would also affect the wisp’s damage apply. If your wisp’s Strike is a critical hit, the target becomes frightened 1. This attack uses and counts toward your multiple attack penalty as if you were the one attacking.',1,NULL,NULL,NULL),
  (166,1,'92','Titan’s Stature','You grow to even greater size. When using Giant’s Stature, you can instead become Huge (increasing your reach by 10 feet if you were Medium or smaller) while you are raging. You have the clumsy 1 condition (page 618) as long as you are Huge.',NULL,NULL,NULL,NULL),
  (167,1,'93','Awesome Blow','Your attacks are so powerful, they can flatten your opponents. When you use Knockback, you can attempt an Athletics check against your target’s Fortitude DC.',NULL,NULL,NULL,NULL),
  (168,1,'93','Giant’s Lunge','You extend your body and prepare to attack foes outside your normal reach. Until your rage ends, all your melee weapons and unarmed attacks gain reach 10. This doesn’t increase the reach of any weapon or unarmed attack that already has the reach trait, but it does combine with abilities that increase your reach due to increased size, such as Giant’s Stature.',1,NULL,NULL,NULL),
  (169,1,'93','Vengeful Strike','When struck by an enemy, you respond in turn. Make a melee Strike against the triggering creature. This Strike doesn’t count toward your multiple attack penalty, and your multiple attack penalty doesn’t apply to this Strike.',5,NULL,16,8),
  (170,1,'93','Whirlwind Strike','You attack all nearby adversaries. Make a melee Strike against each enemy within your melee reach. Each attack counts toward your multiple attack penalty, but do not increase your penalty until you have made all your attacks.',3,NULL,NULL,NULL),
  (171,1,'93','Collateral Thrash','When you Thrash a grabbed foe, you smack that foe into another nearby. Another foe adjacent to the grabbed foe also takes your Thrash damage, with a basic Reflex save against your class DC.',NULL,NULL,NULL,NULL),
  (172,1,'93','Dragon Transformation','You transform into a ferocious Large dragon, gaining the effects of 6th-level dragon form except that you use your own AC and attack modifier; you also apply your extra damage from Rage. The action to Dismiss the transformation gains the rage trait. At 18th level, you gain a +20-foot status bonus to your fly Speed, your damage bonus with dragon Strikes increases to +12, your breath weapon DC increases to 30, and you gain a +14 status bonus to your breath weapon damage.',1,NULL,NULL,NULL),
  (173,1,'93','Reckless Abandon','Your blood boils when you take a beating, and you throw caution to the wind to finish the fight. You gain a +2 circumstance bonus to attack rolls, a –2 penalty to AC, and a –1 penalty to saves. These bonuses and penalties last until your Rage ends or until you are above half Hit Points, whichever comes first.',4,NULL,17,NULL),
  (174,1,'93','Brutal Critical','Your critical hits are particularly devastating. On a critical hit, add one extra damage die. This is in addition to any extra dice you gain if the weapon is deadly or fatal. The target also takes persistent bleed damage equal to two damage dice.',NULL,NULL,NULL,NULL),
  (175,1,'93','Perfect Clarity','You burn out all of your rage to ensure that your attack lands and your mind remains free. Reroll the triggering attack roll or Will save with a +2 circumstance bonus, use the better result, and resolve the effect. You then immediately stop raging.',5,NULL,18,NULL),
  (176,1,'93','Vicious Evisceration','You make a vicious attack that maims your enemy. Make a melee Strike. If the Strike hits and deals damage, the target is drained 1, or drained 2 on a critical success.',2,NULL,NULL,NULL),
  (177,1,'93','Contagious Rage','You can drive your allies into a frenzy, granting them incredible benefits. You can ignore the requirements on Share Rage, using it multiple times in a Rage. Allies affected by Share Rage who accept your anathema for the duration of the Rage gain your instinct ability and the specialization ability it gains from weapon specialization, but not greater weapon specialization.',NULL,NULL,NULL,NULL),
  (178,1,'93','Quaking Stomp','You stomp the ground with such force that it creates a minor earthquake, with the effects of the earthquake spell.',1,4,NULL,NULL),
-- Bard Class Feats
  (179,1,'99','Bardic Lore','Your studies make you informed on every subject. You are trained in Bardic Lore, a special Lore skill that can be used only to Recall Knowledge, but on any topic. If you have legendary proficiency in Occultism, you gain expert proficiency in Bardic Lore, but you can’t increase your proficiency rank in Bardic Lore by any other means.',NULL,NULL,NULL,NULL),
  (180,1,'99','Lingering Composition','By adding a flourish, you make your compositions last longer. You learn the lingering composition focus spell. Increase the number of Focus Points in your focus pool by 1.',NULL,NULL,NULL,NULL),
  (181,1,'99,122,134,198,210','Reach Spell','You can extend the range of your spells. If the next action you use is to Cast a Spell that has a range, increase that spell’s range by 30 feet. As is standard for increasing spell ranges, if the spell normally has a range of touch, you extend its range to 30 feet.',1,NULL,NULL,NULL),
  (182,1,'100','Versatile Performance','You can rely on the grandeur of your performances rather than ordinary social skills. You can use Performance instead of Diplomacy to Make an Impression and instead of Intimidation to Demoralize. You can also use an acting Performance instead of Deception to Impersonate. You can use your proficiency rank in Performance to meet the requirements of skill feats that require a particular rank in Deception, Diplomacy, or Intimidation.',NULL,NULL,NULL,NULL),
  (183,1,'100','Cantrip Expansion (Bard)','Study broadens your range of simple spells. Add two additional cantrips from your spell list to your repetoire.',NULL,NULL,NULL,NULL),
  (184,1,'100','Esoteric Polymath','You keep a book of occult spells, similar to a wizard’s spellbook, and can use its spells to supplement your spell repertoire. Add all the spells in your repertoire to this book for free. You can use the Occultism skill to Learn Spells (page 238) and add them to your spellbook by paying the appropriate cost, similar to a wizard. During your daily preparations, choose any one spell from your book of occult spells. If that spell is already in your spell repertoire, you can treat it as an additional signature spell that day. If it isn’t in your repertoire, treat it as though it were until your next daily preparations.',NULL,NULL,NULL,NULL),
  (185,1,'100','Inspire Competence','You learn the inspire competence composition cantrip, which aids your allies’ skills.',NULL,NULL,NULL,NULL),
  (186,1,'100','Loremaster’s Etude','You magically unlock memories, making them easier to recall. You learn the loremaster’s etude composition spell. Increase the number of Focus Points in your focus pool by 1.',NULL,NULL,NULL,NULL),
  (187,1,'100','Multifarious Muse','Your muse doesn’t fall into a single label. Choose a type of muse other than that of your own. You gain a 1st-level feat that requires that muse, and your muse is now also a muse of that type, allowing you to take feats with the other muse as a prerequisite. You don’t gain any of the other effects of the muse you chose.',NULL,NULL,NULL,NULL),
  (188,1,'100','Inspire Defense','You learn the inspure defense composition cantrip (page 386), which protects you and allies.',NULL,NULL,NULL,NULL),
  (189,1,'101','Melodious Spell','You subtly weave your spellcasting into your performance. If the next action you take is to Cast a Spell, attempt a Performance check against all observers’ Perception DCs. If your Performance check is successful against an observer’s Perception DC, that observer doesn’t notice that you are Casting a Spell, even though normally spells have sensory manifestations that would make spellcasting obvious to those around you, and verbal, somatic, and material components are extremely overt. You hide all of these as part of an ordinary performance. This hides only the spell’s spellcasting actions and manifestations, not its effects, so an observer might still see a ray streak out from you or see you vanish.',1,NULL,NULL,NULL),
  (190,1,'101','Triple Time','You learn the triple time composition cantrip, which speeds up you and your allies for a round.',NULL,NULL,NULL,NULL),
  (191,1,'101','Versatile Signature','While most bards are known for certain signature performances and spells, you’re always tweaking your available repertoire. When you make your daily preparations, you can change one of your signature spells to a different spell of that level from your repertoire.',NULL,NULL,NULL,NULL),
  (192,1,'101','Dirge of Doom','You learn the dirge of doom composition cantrip, which frightens your enemies.',NULL,NULL,NULL,NULL),
  (193,1,'101','Harmonize','You can perform multiple compositions simultaneously. If your next action is to cast a composition, it becomes a harmonized composition. Unlike a normal composition, a harmonized composition doesn’t end if you cast another composition, and you can cast another composition on the same turn as a harmonized one. Casting another harmonized composition ends any harmonized composition you have in effect.',1,NULL,NULL,NULL),
  (194,1,'101','Steady Spellcasting (Bard)','You don’t lose spells easily. If a reaction would disrupt your spellcasting action, attempt a DC 15 fiat check. If you succeed, your action isn’t disrupted.',NULL,NULL,NULL,NULL),
  (195,1,'101','Eclectic Skill','Your broad experiences translate to a range of skills. You add your level to all skill checks in which you are untrained. You can attempt any skill check that normally requires you to be trained, even if you are untrained. If you have legendary proficiency in Occultism, you can attempt any skill check that normally requires you to have expert proficiency, even if untrained or trained.',NULL,NULL,NULL,NULL),
  (196,1,'102','Inspire Heroics','Your performances inspire even greater deeds in your allies. You learn the inspire heroics metamagic focus spell. Increase the number of Focus Points in your focus pool by 1.',NULL,NULL,NULL,NULL),
  (197,1,'102','Know-It-All','When you succeed at a Knowledge check, you gain additional information or context. When you critically succeed at a Knowledge check, at the GM’s discretion you might gain even more additional information or context than normal.',NULL,NULL,NULL,NULL),
  (198,1,'102','House of Imaginary Walls','You erect an imaginary barrier others believe to be real. You learn the house of imaginary walls composition cantrip.',NULL,NULL,NULL,NULL),
  (199,1,'102','Quickened Casting (Bard)','If your next action is to cast a bard cantrip or a bard spell that is at least 2 levels lower than the highest level bard spell you can cast, reduce the number of actions to cast it by 1 (minimum 1 action).',4,6,NULL,NULL),
  (200,1,'102','Unusual Composition','You can translate the emotion and power of a composition to other mediums. If your next action is to cast a composition spell, you can use a different kind of performance than usual for the composition to change any of its somatic components to verbal components or vice versa. As usual for composition spells, this changes whether the composition is auditory or visual.',1,NULL,NULL,NULL),
  (201,1,'102','Eclectic Polymath','Your flexible mind can quickly shift spells. If you add a spell to your repertoire during your daily preparations using Esoteric Polymath, when you prepare again, you can choose to keep the new spell from Esoteric Polymath in your repertoire and instead lose access to another spell of the same level in your repertoire.',NULL,NULL,NULL,NULL),
  (202,1,'103','Inspirational Focus','Your connection to your muse has granted you unusual focus. If you have spent at least 2 Focus Points since the last time you Refocused, you recover 2 Focus Points when you Refocus instead of 1.',NULL,NULL,NULL,NULL),
  (203,1,'103','Allegro','You can quicken your allies with a fast-paced performance. You learn the allegro composition cantrip.',NULL,NULL,NULL,NULL),
  (204,1,'103','Soothing Ballad','You soothe your allies’ wounds with the power of your performance. You learn the soothing ballad composition spell. Increase the number of Focus Points in your focus pool by 1.',NULL,NULL,NULL,NULL),
  (205,1,'103','True Hypercognition','Your mind works at an incredible pace. You instantly use up to five Recall Knowledge actions. If you have any special abilities or free actions that would normally be triggered when you Recall Knowledge, you can’t use them for these actions.',1,NULL,NULL,NULL),
  (206,1,'103,139,201,213','Effortless Concentration','You maintain a spell with hardly a thought. You immediately gain the effects of the Sustain a Spell action, allowing you to extend the duration of one of your active class spells.',4,NULL,NULL,9),
  (207,1,'103','Studious Capacity','Your continued study of occult magic has increased your magical capacity, allowing you to cast spells even when it seems impossible. You can cast one spell each day even after you’ve run out of spell slots of the appropriate spell level, but you can’t use this ability to cast a spell of your highest spell level.',NULL,NULL,NULL,NULL),
  (208,1,'103','Deep Lore','Your repertoire is vast, containing far more spells than usual. Add one spell to your repertoire of each level you can cast.',NULL,NULL,NULL,NULL),
  (209,1,'103','Eternal Composition','The world is a stage upon which you are always playing. You are permanently quickened; you can use your extra action only to cast a composition cantrip that requires 1 action to cast. While in exploration mode, you can declare that you are performing an eligible composition cantrip while using any exploration tactic. Even before your first turn in a combat encounter, that cantrip is active as if you had cast it on your previous turn.',NULL,NULL,NULL,NULL),
  (210,1,'103','Impossible Polymath','Your esoteric formulas are so unusual that they allow you to dabble in magic from diverse traditions that other bards don’t understand. As long as you’re trained in Arcana, you can add arcane spells to your book from Esoteric Polymath; as long as you’re trained in Nature, you can add primal spells to your book; and as long as you are trained in Religion, you can add divine spells to your book. Like your other spells in your book, you can add one of these spells from another tradition to your repertoire as an occult spell each day using Esoteric Polymath, but you can’t retain any spells from another tradition when you prepare again, even if you have Eclectic Polymath.',NULL,NULL,NULL,NULL),
  (211,1,'103','Fatal Aria','Your songs overwhelm the target with unbearable emotion, potentially striking them dead on the spot. You learn the fatal aria composition spell. Increase the number of Focus Points in your focus pool by 1.',NULL,NULL,NULL,NULL),
  (212,1,'103','Perfect Encore','You develop another incredible creation. You gain an additional 10th-level spell slot.',NULL,NULL,NULL,NULL),
  (213,1,'103','Symphony of the Muse','You are able to weave countless performances together into a solo symphony. You are no longer limited to a single composition each turn or a single composition at a time; when you use a new composition, all previous compositions’ effects continue for their remaining duration.',NULL,NULL,NULL,NULL),
-- Champion Class Feats
  (214,1,'109','Deity’s Domain','You embody an aspect of your deity. Choose one of your deity’s domains from those listed on page 441. You gain the domain’s initial domain spell as a devotion spell.',NULL,NULL,NULL,NULL),
  (215,1,'109','Ranged Reprisal','You can use Retributive Strike with a ranged weapon. In addition, if the foe that triggered your reaction is within 5 feet of your reach but not in your reach, as part of your reaction you can Step to put the foe in your reach before making a melee Retributive Strike.',NULL,NULL,NULL,NULL),
  (216,1,'109','Unimpeded Step','With a burst of divine liberation, your ally’s movement from your Liberating Step is unaffected by difficult terrain, greater difficult terrain, narrow surfaces, and uneven ground.',NULL,NULL,NULL,NULL),
  (217,1,'110','Weight of Guilt','Guilt clouds the minds of those who ignore your Glimpse of Redemption. Instead of making the triggering creature enfeebled 2, you can make it stupefied 2 for the same duration.',NULL,NULL,NULL,NULL),
  (218,1,'110','Divine Grace','You call upon your deity’s grace, gaining a +2 circumstance bonus to the save.',5,NULL,19,NULL),
  (219,1,'110','Dragonslayer Oath','You’ve sworn to slay evil dragons. Add the following tenet to your code after the others: “You must slay evil dragons you encounter as long as you have a reasonable chance of success. Your Retributive Strike gains a +4 circumstance bonus to damage against an evil dragon, or +6 if you have master proficiency with the weapon you used. Your Glimpse of Redemption’s resistance against damage from an evil dragon is 7 + your level. If you use Liberating Step triggered by an evil dragon, your ally gains a +4 circumstance bonus to checks granted by your Liberating Step, and the ally can Step twice afterward. You don’t consider evil dragons to be legitimate authorities, even in nations they rule.',NULL,NULL,NULL,NULL),
  (220,1,'110','Fiendsbane Oath','You’ve sworn an oath to banish the corruption of fiends to the dark planes they call home. Add the following tenet to your champion’s code after the other tenets: “You must banish or slay fiends you come across as long as you have a reasonable chance of success; in the incredibly unlikely event you find a good fiend, you don’t have to banish or kill it.” Your Retributive Strike gains a +4 circumstance bonus to damage against a fiend, or a +6 circumstance bonus if you have master proficiency with the weapon you used. Your Glimpse of Redemption’s resistance against damage from a fiend is 7 + your level. If you use Liberating Step triggered by a fiend, your ally gains a +4 circumstance bonus to checks granted by your Liberating Step, and the ally can Step twice afterward. You don’t consider fiends to be legitimate authorities, even in nations ruled by fiends.',NULL,NULL,NULL,NULL),
  (221,1,'110','Shining Oath','You’ve sworn an oath to put the undead to rest. Add the following tenet to your champion’s code after the other tenets: “You must end the existence of undead you encounter as long as you have a reasonable chance of success; in the unlikely event you find a good undead, you can try to work out a more peaceful way to help it recover from its undead state rather than destroying it in combat, such as helping it complete its unfinished business and find peace.” Your Retributive Strike gains a +4 circumstance bonus to damage against an undead, or +6 if you have master proficiency with the weapon you used. Your Glimpse of Redemption’s resistance against damage from an undead is 7 + your level. If you use Liberating Step triggered by an undead, your ally gains a +4 circumstance bonus to checks granted by your Liberating Step, and the ally can Step twice afterward. You don’t consider undead to be legitimate authorities, even in nations ruled by undead.',NULL,NULL,NULL,NULL),
  (222,1,'111','Vengeful Oath','You’ve sworn an oath to hunt down wicked evildoers and bring them to judgment. Add the following tenet to your code after the others: “You must hunt down and exterminate evil creatures that have committed heinous atrocities as long as you have a reasonable chance of success and aren’t engaged in a mission that would prevent your doing so.”',NULL,NULL,NULL,NULL),
  (223,1,'111','Aura of Courage','You stand strong in the face of danger and inspire your allies to do the same. Whenever you become frightened, reduce the condition value by 1 (to a minimum of 0). At the end of your turn when you would reduce your frightened condition value by 1, you also reduce the value by 1 for all allies within 15 feet.',NULL,NULL,NULL,NULL),
  (224,1,'111','Divine Health','Your faith makes you resistant to disease, protecting you as you offer succor to the ill. You gain a +1 status bonus to saves against diseases. In addition, if you roll a success on a save against a disease, you get a critical success instead.',NULL,NULL,NULL,NULL),
  (225,1,'111','Mercy','Your touch relieves fear and restores movement. If the next action you use is to cast lay on hands, you can attempt to counteract a fear effect or an effect imposing the paralyzed condition on the target, in addition to the other benefits of lay on hands.',1,NULL,NULL,NULL),
  (226,1,'111,142','Attack of Opportunity','You lash out at a foe that leaves an opening. Make a melee Strike against the triggering creature. If your attack is a critical hit and the trigger was a manipulate action, you disrupt that action. This Strike doesn’t count toward your multiple attack penalty, and your multiple attack penalty doesn’t apply to this Strike.',NULL,NULL,NULL,NULL),
  (227,1,'112','Litany Against Wrath','You excoriate a foe for its wrath against goodly creatures. You can cast the litany against wrath devotion spell. Increase the number of Focus Points in your focus pool by 1.',NULL,NULL,NULL,NULL),
  (228,1,'112','Loyal Warhouse','You and your mount have grown closer, and your loyalty to each other is unbreakable. The mount you gained through the divine ally class feature is now a mature animal companion (page 214). In addition, your mount never attacks you, even if it is magically compelled to do so.',NULL,NULL,NULL,NULL),
  (229,1,'112','Shield Warden (Champion)','You use your shield to protect your allies as well as yourself. When you have a shield raised, you can use your Shield Block reaction when an attack is made against an ally adjacent to you. If you do, the shield prevents that ally from taking damage instead of preventing you from taking damage, following the normal rules for Shield Block.',NULL,NULL,NULL,NULL),
  (230,1,'112','Smite Evil','Your blade ally becomes an even more powerful tool against evildoers. Select one foe you can see. Until the start of your next turn, your Strikes with the weapon your blade ally inhabits against that foe deal an extra 4 good damage, increasing to 6 if you have master proficiency with this weapon. If the foe attacks one of your allies, the duration extends to the end of that foe’s next turn. If the foe continues to attack your allies each turn, the duration continues to extend.',1,NULL,NULL,NULL),
  (231,1,'112','Advanced Deity’s Domain','Through your conviction, you have glimpsed the deeper secrets of your deity’s domain. You gain an advanced domain spell from the domain you chose with Deity’s Domain. You can cast that spell as a devotion spell. Increase the number of Focus Points in your focus pool by 1.',NULL,NULL,NULL,NULL),
  (232,1,'112','Greater Mercy','Your faith enhances your ability to remove conditions. When you use Mercy, you can instead attempt to counteract the blinded, deafened, sickened, or slowed conditions.',NULL,NULL,NULL,NULL),
  (233,1,'113','Heal Mount','Your devotion to your mount manifests as a surge of positive energy. When you cast lay on hands on your mount, you can restore 10 Hit Points, plus 10 for each heightened level.',NULL,NULL,NULL,NULL),
  (234,1,'113','Quick Block','You can block with your shield instinctively. At the start of each of your turns, you gain an additional reaction that you can use only to perform a Shield Block.',NULL,NULL,NULL,NULL),
  (235,1,'113','Second Ally','Your inner grace attracts the attention of a second protective spirit. Choose a second type of divine ally and gain its benefits.',NULL,NULL,NULL,NULL),
  (236,1,'113','Sense Evil','You sense evil as a queasy or foreboding feeling. When in the presence of an aura of evil that is powerful or overwhelming (page 328), you eventually detect the aura, though you might not do so instantly, and you can’t pinpoint the location. This acts as a vague sense, similar to humans’ sense of smell. An evil creature using a disguise or otherwise trying to hide its presence attempts a Deception check against your Perception DC to hide its aura from you. If the creature succeeds at its Deception check, it is then temporarily immune to your Sense Evil for 1 day.',NULL,NULL,NULL,NULL),
  (237,1,'113','Devoted Focus','Your devotion is strong enough to increase your focus to incredible heights. If you have spent at least 2 Focus Points since the last time you Refocused, you recover 2 Focus Points when you Refocus instead of 1.',NULL,NULL,NULL,NULL),
  (238,1,'113','Imposing Destrier','Under your care, your mount has realized its innate potential. The mount you gained through the divine ally class feature is now a nimble or savage animal companion (page 214). During an encounter, even if you don’t use the Command an Animal action, your mount can still use 1 action on your turn to Stride or Strike.',NULL,NULL,NULL,NULL),
  (239,1,'113','Litany Against Sloth','You rail against the sin of sloth, turning a foe’s laziness against it. You can cast the litany against sloth devotion spell. Increase the number of Focus Points in your focus pool by 1.',NULL,NULL,NULL,NULL),
  (240,1,'113','Radiant Blade Spirit','Your divine ally radiates power, enhancing your chosen weapon. When you choose the weapon for your blade ally during your daily preparations, add the following property runes to the list of effects you can choose from:  flaming and any aligned properties (anarchic, axiomatic, holy, or unholy) that match your cause’s alignment',NULL,NULL,NULL,NULL),
  (241,1,'113','Shield of Reckoning','When you shield your ally against an attack, you call upon your power to protect your ally further. You use the Shield Block reaction to prevent damage to an ally and also use your champion’s reaction against the foe that attacked your ally.',5,NULL,20,NULL),
  (242,1,'113','Affliction Mercy','The divine grace that flows through you grants reprieve from an affliction. When you use Mercy, you can instead attempt to counteract a curse, disease, or poison.',NULL,NULL,NULL,NULL),
  (243,1,'113','Aura of Faith','You radiate an aura of pure belief that imbues your attacks and those of nearby allies with holy power. Your Strikes deal an extra 1 good damage against evil creatures. Also, each good-aligned ally within 15 feet gains this benefit on their first Strike that hits an evil creature each round.',NULL,NULL,NULL,NULL),
  (244,1,'113','Blade of Justice','You call upon divine power and make a weapon or unarmed Strike against a foe you have witnessed harming an ally or innocent. The Strike deals two extra weapon damage dice if the target of your Strike is evil. Whether or not the target is evil, the Strike applies all effects that normally apply on a Retributive Strike (such as divine smite), and you can convert all the physical damage from the attack into good damage.',2,NULL,NULL,NULL),
  (245,1,'114','Champion’s Sacrifice','You can suffer so that others might live. You can cast the champion’s sacrifice devotion spell. Increase the number of Focus Points in your focus pool by 1.',NULL,NULL,NULL,NULL),
  (246,1,'114','Divine Wall','You use your shield to harry your enemies, preventing them from stepping away from or around you. All spaces adjacent to you are difficult terrain for your enemies.',NULL,NULL,NULL,10),
  (247,1,'114','Lasting Doubt','When you cast doubt upon your foes, the effect lasts longer than usual. After being enfeebled 2 by your Glimpse of Redemption, the foe is enfeebled 1 for 1 minute. If you have Weight of Guilt, after being stupefied 2 by your Glimpse of Redemption, the foe is stupefied 1 for 1 minute or until the flat check from stupefied causes it to lose a spell, whichever comes first.',NULL,NULL,NULL,NULL),
  (248,1,'114','Liberating Stride','Instead of you taking a Step at the end of your Liberating Step, the triggering ally can Stride up to half their Speed. Even if you have exalt, only the triggering ally gains this benefit.',NULL,NULL,NULL,NULL),
  (249,1,'114','Anchoring Aura','Your aura hampers fiends’ teleportation. Your aura attempts to counteract teleportation spells cast by fiends within 15 feet, using the spell level and DC of your devotion spells.',NULL,NULL,NULL,11),
  (250,1,'114','Aura of Life','Your aura protects against necromantic effects. You and all allies within 15 feet gain resistance 5 to negative energy and a +1 status bonus to saves against necromancy effects.',NULL,NULL,NULL,12),
  (251,1,'114','Aura of Righteousness','Your righteous aura dampens evil’s might. You and all allies within 15 feet gain evil resistance 5.',NULL,NULL,NULL,NULL),
  (252,1,'114','Aura of Vengeance','When you call upon others to take retribution, you also guide their aim. When you use Retributive Strike, your allies who make Strikes take only a –2 penalty, instead of a –5 penalty.',NULL,NULL,NULL,13),
  (253,1,'115','Divine Reflexes','At the start of each of your turns, you gain an additional reaction that you can use only for your champion’s reaction.',NULL,NULL,NULL,NULL),
  (254,1,'115','Litany of Righteousness','You call upon righteousness to expose an evil foe’s weakness. You can cast the litany of righteousness devotion spell. Increase the number of Focus Points in your focus pool by 1.',NULL,NULL,NULL,NULL),
  (255,1,'115','Wyrmbane Aura','Your aura protects against destructive energies and dragons’ breath. You and all allies within 15 feet gain resistance equal to your Charisma modifier to acid, cold, electricity, fire, and poison. If the source of one of these types of damage is a dragon’s breath, increase the resistance to half your level.',NULL,NULL,NULL,14),
  (256,1,'115','Auspicious Mount','Guided by your ongoing care, your steed has developed incredible intelligence and skill. The mount you gained through the divine ally class feature is now a specialized animal companion (page 217). You can select one of the usual specializations or the auspice specialization. Auspice mounts gain the following benefits: Your companion is marked by your deity’s religious symbol as a sacred creature of your deity. Its proficiency rank in Religion increases to expert, it can speak the language associated with your deity’s servitors (Celestial for champions who follow the tenets of good), and its Intelligence modifier increases by 2 and its Wisdom modifier by 1.',NULL,NULL,NULL,NULL),
  (257,1,'115','Instrument of Zeal','Divine energy fills your weapon. Whenever you critically hit a foe with Smite Evil or a Retributive Strike, your attack adds an extra damage die, and the target is slowed 1 on its next turn.',NULL,NULL,NULL,NULL),
  (258,1,'115','Shield of Grace','You protect an ally with both your shield and your body. Whenever you use the Shield Block reaction to prevent damage to an ally, you can evenly split the remaining damage after the Shield Block between the ally and yourself.',NULL,NULL,NULL,NULL),
  (259,1,'115','Celestial Form','You take on a celestial countenance, appearing like a type of celestial who serves your deity; for example, as an angel, you would gain a halo and feathery wings. You gain a fly Speed equal to your Speed. You gain darkvision if you don’t already have it, and you gain the celestial trait and the trait appropriate to the type of servitor you’ve become (archon, angel, or azata, for example).',NULL,NULL,NULL,NULL),
  (260,1,'115','Ultimate Mercy','Your mercy transcends the bounds of life and death. When you use Mercy, you can cast lay on hands on a creature that died since your last turn to return it to life. The target returns to life with 1 hit point and becomes wounded 1. You can’t use Ultimate Mercy if the triggering effect was disintegrate or a death effect.',NULL,NULL,NULL,NULL),
  (261,1,'115','Celestial Mount','Your steed gains incredible celestial powers granted by your deity. It gains darkvision, its maximum Hit Points increase by 40, and it gains weakness 10 to evil damage. Additionally, it grows wings appropriate to a servitor of your deity (such as metallic wings for an archon), granting it a fly Speed equal to its Speed. It gains the celestial trait and the trait appropriate to the type of servitor it has become (archon, angel, or azata, for example).',NULL,NULL,NULL,NULL),
  (262,1,'115','Radiant Blade Master','Your divine ally turns your chosen weapon into a paragon of its type. When you choose the weapon for your blade divine ally during your preparations, add the following property runes to the list of effects you can choose from: dancing, greater disrupting, and keen.',NULL,NULL,NULL,NULL),
  (263,1,'115','Shield Paragon','Your shield is a vessel of divine protection. When you’re wielding your chosen shield, it is always raised, even without you using the Raise a Shield action. Your chosen shield doubles its HP and BT, rather than increasing them by half. If it would be destroyed, it vanishes to your deity’s realm instead, where your divine ally repairs it. During your next daily preparations, the shield returns to you fully repaired.',NULL,NULL,NULL,NULL),
-- Cleric Class Feats
  (264,1,'121','Deadly Simplicity','Your deity’s weapon is especially powerful in your hands. When you are wielding your deity’s favored weapon, increase the damage die size of that weapon by one step. If your deity’s favored weapon is an unarmed attack (such as a fist, if you worship Irori) and its damage die is smaller than d6, instead increase its damage die size to d6.',NULL,NULL,NULL,NULL),
  (265,1,'121','Domain Initiate','Your deity bestows a special spell related to their powers. Select one domain—a subject of particular interest to you within your religion—from your deity’s list. You gain an initial domain spell for that domain, a spell unique to the domain and not available to other clerics. Each domain’s theme and domain spells appear in Table 8–2: Domains on page 441.',NULL,NULL,NULL,NULL),
  (266,1,'121','Harming Hands','The mordant power of your negative energy grows. When you cast harm, you roll d10s instead of d8s.',NULL,NULL,NULL,NULL),
  (267,1,'121','Healing Hands','Your positive energy is even more vibrant and restorative. When you cast heal, you roll d10s instead of d8s.',NULL,NULL,NULL,NULL),
  (268,1,'121','Holy Castigation','You combine holy energy with positive energy to damage demons, devils, and their evil ilk. Heal spells you cast damage fiends as though they were undead.',NULL,NULL,NULL,NULL),
  (270,1,'122','Cantrip Expansion (Cleric)','You study a wider range of simple spells. You can prepare two additional cantrips each day.',NULL,NULL,NULL,NULL),
  (271,1,'122','Communal Healing','You’re a conduit for positive energy, and as you cit through you, it heals some of your minor injuries. When you cast the heal spell to heal a single creature other than yourself, you regain Hit Points equal to the spell level of the heal spell.',NULL,NULL,NULL,NULL),
  (272,1,'122','Emblazon Armament','Carefully etching a sacred image into a physical object, you steel yourself for battle. You can spend 10 minutes emblazoning a symbol of your deity upon a weapon or shield. The symbol doesn’t fade until 1 year has passed, but if you Emblazon an Armament, any symbol you previously emblazoned and any symbol already emblazoned on that item instantly disappears. The item becomes a religious symbol of your deity and can be used as a divine focus while emblazoned, and it gains another benefit determined by the type of item. This benefit applies only to followers of the deity the symbol represents.',NULL,NULL,NULL,NULL),
  (273,1,'122','Sap Life','You draw the life force out of your enemies to heal your own wounds. When you cast a harm spell and damage at least one living creature, you regain Hit Points equal to the spell level of your harm spell. If you aren’t a living creature, you gain no benefit from this feat.',NULL,NULL,NULL,NULL),
  (274,1,'122','Turn Undead','Undead harmed by your positive energy might flee, compelled by an innate aversion to the force opposite undeath. When you use a heal spell to damage undead, each undead of your level or lower that critically fails its save gains the fleeing condition for 1 round.',NULL,NULL,NULL,NULL),
  (275,1,'122','Versatile Font','As you explore your deity’s aspects, you move beyond restrictions on healing or harming. You can prepare either harm or heal in the spell slots gained from the harmful font or healing font.',NULL,NULL,NULL,NULL),
  (276,1,'122','Channel Smite','You siphon the destructive energies of positive or negative energy through a melee attack and into your foe. Make a melee Strike and add the spell’s damage to the Strike’s damage. This is negative damage if you expended a harm spell or positive damage if you expended a heal spell. The spell is expended with no effect if your Strike fails or hits a creature that isn’t damaged by that energy type (such as if you hit a non-undead creature with a heal spell).',2,NULL,NULL,NULL),
  (277,1,'123','Command Undead','You grasp the animating force within an undead creature and bend it to your will. If the next action you use is to cast harm targeting one undead creature, you transform the effects of that harm spell. Instead of harm’s normal effects, the target becomes controlled by you if its level is equal to or lower than your level – 3. It can attempt a Will saving throw to resist being controlled by you. If the target is already under someone else’s command, the controlling creature also rolls a saving throw, and the undead uses the better result.',1,NULL,NULL,NULL),
  (278,1,'123','Directed Channel','You can shape the energy you channel in a single direction, reaching farther and in a more directed fashion. When you cast a version of harm or heal that has an area, you can make its area a 60-foot cone instead of a 30-foot emanation.',NULL,NULL,NULL,NULL),
  (279,1,'123','Improved Communal Healing','You can direct excess channeled energy outward to benefit an ally. You can grant the Hit Points you would regain from Communal Healing to any one creature within the range of your heal spell instead of yourself. You can also use Communal Healing when you target only yourself with a heal spell, though if you do, you must grant the additional healing to someone other than yourself.',NULL,NULL,NULL,NULL),
  (280,1,'123','Necrotic Infusion','You pour negative energy into your undead subject to empower its attacks. If the next action you use is to cast harm to restore Hit Points to a single undead creature, the target then deals an additional 1d6 negative damage with its melee weapons and unarmed attacks until the end of its next turn. If the harm spell is at least 5th level, this damage increases to 2d6, and if the harm spell is at least 8th level, the damage increases to 3d6.',1,NULL,NULL,NULL),
  (281,1,'123','Cast Down','The sheer force of your faith can bring a foe crashing down. If the next action you use is to cast harm or heal to damage one creature, the target is knocked prone if it takes any damage from the spell. If the target critically fails its save against the spell, it also takes a –10-foot status penalty to its Speed for 1 minute.',1,NULL,NULL,NULL),
  (282,1,'123','Divine Weapon','You siphon residual spell energy into a weapon you’re wielding. Until the end of your turn, the weapon deals an additional 1d4 force damage. You can instead deal an additional 1d6 damage of an alignment type that matches one of your deity’s alignment components. As usual for aligned damage, this can damage only creatures of the opposite alignment.',4,2,21,NULL),
  (283,1,'123','Selective Energy','As you call down divine power, you can prevent some enemies from benefiting or some allies from being hurt. When you cast a version of harm or heal that has an area, you can designate a number of creatures equal to your Charisma modifier (minimum 1) that are not targeted by the spell.',NULL,NULL,NULL,NULL),
  (284,1,'123,136,211','Steady Spellcasting','Confident in your technique, you don’t lose spells easily. If a reaction would disrupt your spellcasting action, attempt a DC 15 fiat check. If you succeed, your action isn’t disrupted.',NULL,NULL,NULL,NULL),
  (285,1,'123','Advanced Domain','Your studies or prayers have unlocked deeper secrets of your deity’s domain. You gain an advanced domain spell from one of your domains (as listed in Table 8–2: Domains on page 441). Increase the number of Focus Points in your focus pool by 1.',NULL,NULL,NULL,NULL),
  (286,1,'124','Align Armament','You bring a weapon into metaphysical concordance with your deity’s beliefs. When you select this feat, choose chaotic, evil, good, or lawful. Your choice must match one of your deity’s alignment components. This action has the trait corresponding to the chosen alignment component.',1,1,NULL,NULL),
  (287,1,'124','Channeled Succor','You can remove conditions with divine grace. You can sacrifice one heal spell you’ve prepared in your extra slots from healing font to cast one of the following spells instead: remove curse, remove disease, remove paralysis, or restoration. The spell is heightened to the same level as the heal spell you sacrificed.',NULL,NULL,NULL,NULL),
  (288,1,'124','Cremate Undead','Your positive energy sets undead alight. When you use a heal spell to damage undead, each undead that takes damage also takes persistent fire damage equal to the spell’s level.',NULL,NULL,NULL,NULL),
  (289,1,'124','Emblazon Energy','With elemental forces, you make your emblazoned symbols more potent. When you Emblazon an Armament, you can choose from the following effects instead of the effects listed in that feat. These effects have the same restrictions as the base options.',NULL,NULL,NULL,NULL),
  (290,1,'125','Castigating Weapon','The force of your deity’s castigation strengthens your body so you can strike down the wicked. After you damage a fiend using a heal spell, your weapon or unarmed Strikes deal extra good damage to fiends equal to half the level of the heal spell until the end of your next turn. This is cumulative with any good damage the weapon already deals (such as from a holy rune).',NULL,NULL,NULL,NULL),
  (291,1,'125','Heroic Recovery','The restorative power of your healing invigorates the recipient. If the next action you use is to cast heal targeting a single living creature and the target regains Hit Points from the spell, it also gains three bonuses until the end of its next turn: a +5-foot status bonus to its Speed, a +1 status bonus to attack rolls, and a +1 status bonus to damage rolls.',1,NULL,NULL,NULL),
  (292,1,'125','Improved Command Undead','Undead creatures find it all but impossible to resist your commands. When you use Command Undead, if the undead succeeds at its save but doesn’t critically succeed, it is your minion for 1 round. If the undead fails its save, it is your minion for 10 minutes. If it critically fails, it is your minion for 24 hours.',NULL,NULL,NULL,NULL),
  (293,1,'125','Replenishment of War','Striking out against your enemies draws praise and protection from your deity. When you damage a creature with a Strike using your deity’s favored weapon, you gain a number of temporary Hit Points equal to half your level, or equal to your level if the Strike was a critical hit. These temporary Hit Points last until the start of your next turn.',NULL,NULL,NULL,NULL),
  (294,1,'125','Defensive Recovery','Your faith provides temporary protection in addition to healing. If the next action you use is to cast harm or heal on a single target and the target regains Hit Points from the spell, it also gains a +2 status bonus to AC and saving throws for 1 round.',1,NULL,NULL,NULL),
  (295,1,'125','Domain Focus','Your devotion to your deity’s domains grows greater, and so does the power granted to you. If you have spent at least 2 Focus Points since the last time you Refocused, you recover 2 Focus Points when you Refocus instead of 1.',NULL,NULL,NULL,NULL),
  (296,1,'125','Emblazon Antimagic','Your deity’s symbol protects against offensive magic. When you Emblazon an Armament, you can choose from the following effects instead of the effects listed in that feat. These effects have the same restrictions as the base options.',NULL,NULL,NULL,NULL),
  (297,1,'125','Shared Replenishment','When your deity blesses your warlike acts, you can extend that favor to your allies. You can grant the temporary Hit Points from Replenishment of War to an ally within 10 feet instead of gaining them yourself. You can grant these temporary Hit Points to a different ally each time, meaning you might be able to grant them to multiple creatures in a single turn.',NULL,NULL,NULL,NULL),
  (298,1,'125','Deity’s Protection','When you call upon your deity’s power to fulfill the promise of their domain, you gain divine protection. After you cast a domain spell, you gain resistance to all damage until the start of your next turn. The amount of resistance is equal to the level of the domain spell you cast.',NULL,NULL,NULL,NULL),
  (299,1,'125','Extend Armament Alignment','The alignment you impose on a weapon lasts much longer. The duration of Align Armament increases to 1 minute.',NULL,NULL,NULL,NULL),
  (300,1,'125','Fast Channel','Divine power is always at your fingertips, swiftly responding to your call. When you cast harm or heal by spending 2 actions, you can get the effects of the 3-action version instead of the 2-action version. You can do this with harm if you have harmful font or heal if you have healing font (or both if you have Versatile Font).',NULL,NULL,NULL,NULL),
  (301,1,'126','Swift Banishment','The force of your blow sends your victim back to its home plane. You expend a banishment spell you have prepared, affecting the creature you critically hit without needing to cast the spell. The creature can attempt to resist the spell as normal.',5,NULL,22,15),
  (302,1,'126','Eternal Bane','A life of evil has made you a nexus for your deity’s vile power. You’re continuously surrounded by a bane spell with a spell level equal to half your level (rounded up). The radius is 15 feet, and you can’t increase it. You can Dismiss the spell; if you do, it returns automatically after 1 minute.',NULL,NULL,NULL,NULL),
  (303,1,'126','Eternal Blessing','Your good deeds have brought your deity’s grace to you for all of eternity. You’re continuously surrounded by a bless spell with a spell level equal to half your level (rounded up). The radius is 15 feet, and you can’t increase it. You can Dismiss the spell; if you do, it returns automatically after 1 minute.',NULL,NULL,NULL,NULL),
  (304,1,'126','Resurrectionist','You can cause a creature you bring back from the brink of death to thrive and continue healing. When you restore Hit Points to a dying creature or bring a dead creature back to life and restore Hit Points to it, you grant that creature fast healing 5 for 1 minute. This fast healing ends if the creature is knocked unconscious.',NULL,NULL,NULL,NULL),
  (305,1,'126','Domain Wellspring','The intensity of your focus grows from the investment you’ve placed in your domains. If you have spent at least 3 Focus Points since the last time you Refocused, you recover 3 Focus Points when you Refocus instead of 1.',NULL,NULL,NULL,NULL),
  (306,1,'127','Echoing Channel','When you pull forth positive or negative energy, you also create a smaller pocket of that energy. If the next action you use is to cast a 2-action harm or heal to heal or damage a single creature, choose one additional creature adjacent to either you or the target. Target that creature with a 1-action version of the same spell. This spell is the same level as the 2-action harm or heal you cast and doesn’t cost another spell slot.',1,NULL,NULL,NULL),
  (307,1,'127','Improved Swift Banishment','You easily banish creatures with your weapon. You can use Swift Banishment as long as you have a spell slot of 5th level or higher remaining, even if you don’t have banishment prepared. You must sacrifice a prepared spell of 5th level or higher, and the banishment effect you create is heightened to the level of that spell. Your weapon serves as the special material component of banishment, causing the target to take the –2 penalty to its save against any banishment you cast using Swift Banishment.',NULL,NULL,NULL,NULL),
  (308,1,'127','Avatar’s Audience','Your extensive service has made you a lesser herald of your deity, which affords you certain privileges. First, any creature you encounter knows instinctively that you speak for your deity. Second, if you conduct the commune ritual to contact your deity, you don’t have to pay any cost and you automatically get a critical success. Third, once per day, you can cast plane shift as a divine innate spell, but only to travel to the realm of your deity. When you cast it this way, its casting time is 1 minute, your religious symbol is a sufficient tuning fork for this spell, and you appear exactly where you want to be. If you’re in your deity’s realm due to this spell, you can return to the point you left when you cast it by spending a single action, which has the concentrate and divine traits.',NULL,NULL,NULL,NULL),
  (309,1,'127','Maker of Miracles','You are a conduit for truly deific power. You gain an additional 10th-level spell slot.',NULL,NULL,NULL,NULL),
  (310,1,'127','Metamagic Channel','Deep understanding of divine revelations into the nature of vital essence allows you to freely manipulate the effects of your positive or negative energy. Use 1 metamagic action that you can perform that normally takes 1 action and can be applied to the harm or heal spell. If you use it in this way, its effects apply only to a harm or heal spell.',4,NULL,NULL,NULL),
-- Druid Class Feats
  (311,1,'133','Animal Companion (Druid)','You gain the service of a young animal companion that travels with you on your adventures and obeys any simple commands you give it to the best of its abilities. See Animal Companions on page 214 for more information.',NULL,NULL,NULL,NULL),
  (312,1,'133','Leshy Familiar','You gain a leshy familiar, a Tiny plant that embodies one of the many spirits of nature. Other than taking the form of a plant instead of an animal, this familiar uses all the same rules as other familiars, which are detailed on page 217.',NULL,NULL,NULL,NULL),
  (314,1,'134','Storm Born','You are at home out in the elements, reveling in the power of nature unleashed. You do not take circumstance penalties to ranged spell attacks or Perception checks caused by weather, and your targeted spells don’t require a flat check to succeed against a target concealed by weather (such as fog).',NULL,NULL,NULL,NULL),
  (315,1,'134,198,210','Widen Spell','You manipulate the energy of your spell, causing it to spread out and affect a wider area. If the next action you use is to Cast a Spell that has an area of a burst, cone, or line and does not have a duration, increase the area of that spell. Add 5 feet to the radius of a burst that normally has a radius of at least 10 feet (a burst with a smaller radius is not affected). Add 5 feet to the length of a cone or line that is normally 15 feet long or smaller, and add 10 feet to the length of a larger cone or line.',1,NULL,NULL,NULL),
  (316,1,'134','Wild Shape','You are one with the wild, always changing and adapting to meet any challenge. You gain the wild shape order spell, which lets you transform into a variety of forms that you can expand with druid feats.',NULL,NULL,NULL,NULL),
  (317,1,'134','Call of the Wild','You call upon the creatures of nature to come to your aid. You can spend 10 minutes in concert with nature to replace one of the spells you’ve prepared in one of your druid spell slots with a summon animal or summon plants and fungi spell of the same level.',NULL,NULL,NULL,NULL),
  (318,1,'134','Enhanced Familiar (Druid)','You infuse your familiar with additional primal energy, increasing its abilities. You can select four familiar or master abilities each day, instead of two.',NULL,NULL,NULL,NULL),
  (319,1,'134','Order Explorer','You have learned the secrets of another druidic order, passing whatever rites of initiation that order requires and gaining access to its secrets. Choose an order other than your own. You gain a 1st-level feat that lists that order as a prerequisite, and you are now a member of that order for the purpose of meeting feat prerequisites. If you commit acts anathema to your new order, you lose all feats and abilities requiring that order but retain your other druid feats and abilities. You don’t gain any of the other benefits of the order you chose.',NULL,NULL,NULL,NULL),
  (320,1,'135','Poison Resistance (Druid)','Your affinity for the natural world grants you protection against some of its dangers. You gain poison resistance equal to half your level, and you gain a +1 status bonus to saving throws against poisons.',1,NULL,NULL,NULL),
  (321,1,'135','Form Control','With additional care and effort, you can take on an alternate form for a longer period of time. If your next action is to cast wild shape, wild shape’s spell level is 2 lower than normal (minimum 1st level), but you can remain transformed for up to 1 hour or the listed duration (whichever is longer). You can still Dismiss the form at any time, as permitted by the spell.',1,NULL,NULL,NULL),
  (322,1,'135','Mature Animal Companion (Druid)','Your animal companion grows up, becoming a mature animal companion, which grants it additional capabilities. See the animal companion rules on page 214 for more information. Your animal companion is better trained than most. During an encounter, even if you don’t use the Command an Animal action, your animal companion can still use 1 action on your turn that round to Stride or Strike.',NULL,NULL,NULL,NULL),
  (323,1,'135','Order Magic','You have delved deeper into the teaching of a new order, gaining access to a coveted order spell. Choose an order you have selected with Order Explorer. You gain the initial order spell from that order.',NULL,NULL,NULL,NULL),
  (324,1,'135','Thousand Faces','Your form is as mutable as the weather, changing to meet your whim. You add the forms listed in humanoid form to your wild shape list.',NULL,NULL,NULL,NULL),
  (325,1,'135','Woodland Stride','You can always find a path, almost as if foliage parted before you. You ignore any difficult terrain caused by plants, such as bushes, vines, and undergrowth. Even plants manipulated by magic don’t impede your progress.',NULL,NULL,NULL,NULL),
  (326,1,'136','Green Empathy','You can communicate with plants on a basic level and use Diplomacy to Make an Impression on them and to make very simple Requests of them. Non-creature plants typically can’t fulfill most requests you might ask of them unless you have access to other magic such as speak with plants. Because of your affiliation with the leaf order, plants have a sense that you support them, so you gain a +2 circumstance bonus on your check to Make a Request of a plant using Green Empathy.',NULL,NULL,NULL,NULL),
  (327,1,'136','Insect Shape','Your understanding of life expands, allowing you to mimic a wider range of creatures. Add the forms in insect form to your wild shape list. Whenever you use wild shape to polymorph into the non-flying insect form listed in pest form, the duration is 24 hours instead of 10 minutes.',NULL,NULL,NULL,NULL),
  (329,1,'136','Storm Retribution','You lash out, directing a burst of storming fury toward a creature that has harmed you. You cast tempest surge on the triggering opponent and push that creature, moving it 5 feet away from you if it fails its Reflex save, or 10 feet if it critically fails. This movement is forced movement.',5,NULL,23,16),
  (330,1,'136','Ferocious Shape','You have mastered the shape of ferocious dinosaurs. Add the forms listed in dinosaur form to your wild shape list. Whenever you use wild shape to take a form that grants you a specific Athletics modifier, you gain a +1 status bonus to your Athletics checks.',NULL,NULL,NULL,NULL),
  (331,1,'136','Fey Caller','You have learned some of the tricks the fey use to bend primal magic toward illusions and trickery. Add illusory disguise, illusory object, illusory scene, and veil to your spell list as primal spells.',NULL,NULL,NULL,NULL),
  (332,1,'137','Incredible Companion (Druid)','Your animal companion continues to grow and develop. It becomes a nimble or savage animal companion (your choice), gaining additional capabilities determined by the type of companion (page 214).',NULL,NULL,NULL,NULL),
  (333,1,'137','Soaring Shape','Wings free you from the shackles of the ground below. Add the bat and bird forms in aerial form to your wild shape list. If you have Insect Shape, you also add the wasp form to your wild shape list. If you have Ferocious Shape, you also add the pterosaur form to your wild shape list. Whenever you use wild shape to gain a form that grants you a specific Acrobatics modifier, you gain a +1 status bonus to Acrobatics checks.',NULL,NULL,NULL,NULL),
  (334,1,'137','Wind Caller','You bid the winds to lift and carry you through the air. You gain the stormwind flight order spell. Increase the number of Focus Points in your focus pool by 1.',NULL,NULL,NULL,NULL),
  (335,1,'137','Elemental Shape','You understand the fundamental elements of nature such that you can imbue them into your body and manifest as a living embodiment of those elements. Add the forms in elemental form to your wild shape list. Whenever you’re polymorphed into another form using wild shape, you gain resistance 5 to fire.',NULL,NULL,NULL,NULL),
  (336,1,'137','Healing Transformation','You can take advantage of shapechanging magic to close wounds and patch injuries. If your next action is to cast a non-cantrip polymorph spell that targets only one creature, your polymorph spell also restores 1d6 Hit Points per spell level to that creature. This is a healing effect.',1,NULL,NULL,NULL),
  (337,1,'137','Overwhelming Energy (Druid)','With a complex gesture, you call upon the primal power of your spell to overcome enemies’ resistances. If the next action you use is to Cast a Spell, the spell ignores an amount of the target’s resistance to acid, cold, electricity, fire, or sonic damage equal to your level. This applies to all damage the spell deals, including persistent damage and damage caused by an ongoing effect of the spell, such as the wall created by wall of fire. A creature’s immunities are unaffected.',1,NULL,NULL,NULL),
  (338,1,'138','Plant Shape','You can take the form of a plant creature. Add the forms listed in plant form to your wild shape list; if you don’t have wild shape, you can instead cast plant form once per day, heightened to the highest spell level you can cast. Whenever you’re polymorphed into another form using wild shape, you gain resistance 5 to poison.',NULL,NULL,NULL,NULL),
  (339,1,'138','Side by Side (Druid)','You and your animal companion fight in tandem, distracting your foes and keeping them off balance. Whenever you and your animal companion are adjacent to the same foe, you are both flanking that foe with each other, regardless of your actual positions.',NULL,NULL,NULL,NULL),
  (340,1,'138','Dragon Shape','You can take on the form of some of the world’s most fearsome creatures. Add the forms listed in dragon form to your wild shape list. Whenever you’re polymorphed into another form using wild shape, you gain resistance 5 to your choice of acid, cold, electricity, fire, or poison.',NULL,NULL,NULL,NULL),
  (341,1,'138','Green Tongue','You share a special kinship with all things green and living. You (and your leshy familiar, if you have one) are constantly under the effects of speak with plants. Most non-creature plants recognize you as a druid of the leaf order and are friendly to you.',NULL,NULL,NULL,NULL),
  (342,1,'138','Primal Focus','Your connection to nature is particularly strong, and the spirits of nature flock around you, helping you replenish your focus. If you have spent at least 2 Focus Points since the last time you Refocused, you recover 2 Focus Points when you Refocus instead of 1.',NULL,NULL,NULL,NULL),
  (343,1,'138','Primal Summons','Whenever you summon an ally, you can empower it with the elemental power of air, earth, fire, or water. You gain the primal summons order spell.',NULL,NULL,NULL,NULL),
  (344,1,'139','Specialized Companion (Druid)','Your animal companion continues to grow in power and ability, and it is now cunning enough to become specialized. Your animal companion gains one specialization of your choice. (See the Animal Companion section on page 214.)',NULL,NULL,NULL,NULL),
  (345,1,'139','Timeless Nature','With primal magic sustaining you, you cease aging. The overflowing primal energy gives you a +2 status bonus to saves against diseases and primal magic.',NULL,NULL,NULL,NULL),
  (346,1,'139','Verdant Metamorphosis','You transform into a plant version of yourself. You gain the plant trait and lose any trait that’s inappropriate for your new form (typically humanoid for a PC, but also possibly animal or fungus). You can change from a form that looks mostly like your old self into a tree or any other non-creature plant as a single action, which has the concentrate trait. This has the same effect as tree shape, except you can turn into any kind of non-creature plant and your AC is 30. If you rest for 10 minutes while transformed into a non-creature plant during daylight hours under direct sunlight, you recover half your maximum Hit Points. If you take your daily rest in this way, the rest restores you to maximum Hit Points and removes all non-permanent drained, enfeebled, clumsy, and stupefied conditions, as well as all poisons and diseases of 19th level or lower.',NULL,NULL,NULL,NULL),
  (348,1,'139','Impaling Briars','You can fill an area with devastating briars that impale and impede your foes. You gain the impaling briars order spell. Increase the number of Focus Points in your focus pool by 1.',NULL,NULL,NULL,NULL),
  (349,1,'139','Monstrosity Shape','You can transform into a powerful magical creature. Add the purple worm and sea serpent forms listed in monstrosity form to your wild shape list. If you have Soaring Shape, add the phoenix form listed in aerial form to your wild shape list.',NULL,NULL,NULL,NULL),
  (350,1,'139','Invoke Disaster','You can invoke nature’s fury upon your foes. You gain the storm lord order spell. Increase the number of Focus Points in your focus pool by 1.',NULL,NULL,NULL,NULL),
  (351,1,'139','Perfect Form Control','Thanks to magic and muscle memory, you can stay in your alternate forms indefinitely; you may have even forgotten your original form. When you use Form Control, instead of lasting 1 hour, wild shape is permanent until you Dismiss it.',NULL,NULL,NULL,NULL),
  (352,1,'139','Primal Wellspring','Your reservoir of Focus Points is a deep wellspring. If you have spent at least 3 Focus Points since the last time you Refocused, you recover 3 Focus Points when you Refocus instead of 1.',NULL,NULL,NULL,NULL),
  (353,1,'139','Hierophant’s Power','You have entwined yourself with the natural world, and its full power flows through you. You gain an additional 10th-level spell slot.',NULL,NULL,NULL,NULL),
  (354,1,'139','Leyline Conduit','You can cast your spells effortlessly by tapping into the leylines of the world. If your next action is to Cast a Spell of 5th level or lower that has no duration, you don’t expend the prepared spell as you cast it.',1,3,NULL,NULL),
  (355,1,'139','True Shapeshifter','You transcend the limitations of form. While under the effects of wild shape, you can change into any other form on your wild shape list; if the durations of the forms would vary, use the shorter of the two durations. Once per day, you can transform into a kaiju, with the effects of nature incarnate; if you have Plant Shape, you can instead transform into a green man.',2,NULL,NULL,NULL),
-- Druid Class Feats
  (356,1,'144','Double Slice','You lash out at your foe with both weapons. Make two Strikes, one with each of your two melee weapons, each using your current multiple attack penalty. Both Strikes must have the same target. If the second Strike is made with a weapon that doesn’t have the agile trait, it takes a –2 penalty. If both attacks hit, combine their damage, and then add any other applicable effects from both weapons. You add any precision damage only once, to the attack of your choice. Combine the damage from both Strikes and apply resistances and weaknesses only once. This counts as two attacks when calculating your multiple attack penalty.',2,NULL,NULL,17),
  (357,1,'144','Exacting Strike','You make a controlled attack, fully accounting for your momentum. Make a Strike. The Strike gains the following failure effect.',1,NULL,NULL,NULL),
  (358,1,'144','Point-Blank Shot','You take aim to pick off nearby enemies quickly. When using a ranged volley weapon while you are in this stance, you don’t take the penalty to your attack rolls from the volley trait. When using a ranged weapon that doesn’t have the volley trait, you gain a +2 circumstance bonus to damage rolls on attacks against targets within the weapon’s first range increment.',1,NULL,NULL,18),
  (359,1,'144','Power Attack','You unleash a particularly powerful attack that clobbers your foe but leaves you a bit unsteady. Make a melee Strike. This counts as two attacks when calculating your multiple attack penalty. If this Strike hits, you deal an extra die of weapon damage. If you’re at least 10th level, increase this to two extra dice, and if you’re at least 18th level, increase it to three extra dice.',2,NULL,NULL,NULL),
  (360,1,'145','Reactive Shield','You can snap your shield into place just as you would take a blow, avoiding the hit at the last second. You immediately use the Raise a Shield action and gain your shield’s bonus to AC. The circumstance bonus from the shield applies to your AC when you’re determining the outcome of the triggering attack.',5,NULL,24,10),
  (361,1,'145','Snagging Strike','You combine an attack with quick grappling moves to throw an enemy off balance as long as it stays in your reach. Make a Strike while keeping one hand free. If this Strike hits, the target is flat-footed until the start of your next turn or until it’s no longer within the reach of your hand, whichever comes first.',1,NULL,NULL,19),
  (363,1,'145','Aggressive Block','You push back as you block the attack, knocking your foe away or off balance. You use your shield to push the triggering creature, either automatically Shoving it 5 feet or causing it to become flat-footed until the start of your next turn. The triggering creature chooses whether to be moved or become flat-footed. If it chooses to be moved, you choose the direction. If the Shove would cause it to hit a solid object, enter a square of difficult terrain, or enter another creature’s space, it must become flat-footed instead of being moved.',4,NULL,25,NULL),
  (364,1,'145','Assisting Shot','With a quick shot, you interfere with a foe in combat. You can use the Aid action with a ranged weapon you wield. Instead of being within reach of the target, you must be within maximum range of the target. An Assisting Shot uses ammunition and incurs penalties just like any other attack.',1,NULL,NULL,NULL),
  (365,1,'145','Brutish Shove','Throwing your weight behind your attack, you hit your opponent hard enough to make it stumble back. Make a Strike with a two-handed melee weapon. If you hit a target that is your size or smaller, that creature is flat-footed until the end of your current turn, and you can automatically Shove it, with the same benefits as the Shove action (including the critical success effect, if your Strike was a critical hit). If you move to follow the target, your movement doesn’t trigger reactions.',1,NULL,NULL,20),
  (366,1,'146','Combat Grab','You swipe at your opponent and grab at them. Make a melee Strike while keeping one hand free. If the Strike hits, you grab the target using your free hand. The creature remains grabbed until the end of your next turn or until it Escapes, whichever comes first.',1,NULL,NULL,19),
  (367,1,'146','Dueling Parry','You can parry attacks against you with your one-handed weapon. You gain a +2 circumstance bonus to AC until the start of your next turn as long as you continue to meet the requirements.',1,NULL,NULL,21),
  (368,1,'146','Intimidating Strike','Your blow not only wounds creatures but also shatters their confidence. Make a melee Strike. If you hit and deal damage, the target is frightened 1, or frightened 2 on a critical hit.',2,NULL,NULL,NULL),
  (369,1,'146','Lunge','Extending your body to its limits, you attack an enemy that would normally be beyond your reach. Make a Strike with a melee weapon, increasing your reach by 5 feet for that Strike. If the weapon has the disarm, shove, or trip trait, you can use the corresponding action instead of a Strike.',1,NULL,NULL,22),
  (370,1,'146','Double Shot','You shoot twice in blindingly fast succession. Make two Strikes, each against a separate target and with a –2 penalty. Both attacks count toward your multiple attack penalty, but the penalty doesn’t increase until after you’ve made both of them.',2,NULL,NULL,23),
  (371,1,'146','Dual-Handed Assault','You snap your free hand over to grip your weapon just long enough to add momentum and deliver a more powerful blow to your opponent. Make a Strike with the required weapon. You quickly switch your grip during the Strike in order to make the attack with two hands. If the weapon doesn’t normally have the two-hand trait, increase its weapon damage die by one step for this attack. (Rules on increasing die size appear on page 279.) If the weapon has the two-hand trait, you gain the benefit of that trait and a circumstance bonus to damage equal to the weapon’s number of damage dice. When the Strike is complete, you resume gripping the weapon with only one hand. This action doesn’t end any stance or fighter feat effect that requires you to have one hand free.',1,NULL,NULL,24),
  (372,1,'146','Knockdown','You make an attack to knock a foe off balance, then follow up immediately with a sweep to topple them. Make a melee Strike. If it hits and deals damage, you can attempt an Athletics check to Trip the creature you hit. If you’re wielding a two-handed melee weapon, you can ignore Trip’s requirement that you have a hand free. Both attacks count toward your multiple attack penalty, but the penalty doesn’t increase until after you’ve made both of them.',2,NULL,NULL,NULL),
  (373,1,'146','Powerful Shove','You can push larger foes around with your attack. You can use Aggressive Block or Brutish Shove against a creature up to two sizes larger than you. When a creature you Shove has to stop moving because it would hit an object, it takes damage equal to your Strength modifier (minimum 1). This happens regardless of how you Shoved the creature.',NULL,NULL,NULL,NULL),
  (374,1,'146','Quick Reversal','You turn your foes’ flanking against them with a quick reverse. Make a melee Strike against one of the flanking enemies and make a second Strike with the same weapon or unarmed attack against a different enemy that is flanking you. This second Strike has the same multiple attack penalty of the initial attack and doesn’t count toward your multiple attack penalty.',1,NULL,NULL,25),
  (375,1,'146','Shielded Stride','When your shield is up, your enemies’ blows can’t touch you. hen you have your shield raised, you can Stride to move half your Speed without triggering reactions that are triggered by your movement (such as Attacks of Opportunity). You can use Shielded Stride while Flying or Swimming instead of Striding if you have the corresponding movement type.',NULL,NULL,NULL,NULL),
  (377,1,'147','Twin Parry','You use your two weapons to parry attacks. You gain a +1 circumstance bonus to AC until the start of your next turn, or a +2 circumstance bonus if either weapon has the parry trait. You lose this circumstance bonus if you no longer meet this feat’s requirement.',1,NULL,NULL,26),
  (378,1,'147','Advanced Weapon Training','You’ve studied the art of wielding an advanced weapon. Choose a weapon group. You gain proficiency with all advanced weapons in that group as if they were martial weapons of their weapon group.',NULL,NULL,NULL,NULL),
  (379,1,'147','Advantageous Assault','When an enemy’s movement is compromised, you deliver a more deadly blow. Make a Strike against a creature that is grabbed, prone, or restrained. You gain a circumstance bonus to damage on this Strike equal to the number of weapon damage dice, or that number + 2 if you’re wielding the weapon in two hands. The Strike gains the following failure effect. Failure You deal damage to the target equal to the number of weapon damage dice, or that number + 2 if you’re wielding the weapon in two hands. This damage has the same damage type as the weapon.',1,NULL,NULL,NULL),
  (380,1,'147','Disarming Stance','You adopt a fencing stance that improves your control over your weapon. While you are in this stance, you gain a +1 circumstance bonus to Athletics checks to Disarm and a +2 circumstance bonus to your Reflex DC when defending against checks to Disarm you. In addition, you can attempt to Disarm creatures up to two sizes larger than you.',1,NULL,NULL,21),
  (381,1,'148','Furious Focus','You’ve learned to maintain your balance even when swinging furiously. When you make a Power Attack with a melee weapon you’re wielding in two hands, it counts as one attack toward your multiple attack penalty instead of two.',NULL,NULL,NULL,NULL),
  (382,1,'148','Guardian’s Deflection','You use your weapon to deflect the attack against your ally, granting a +2 circumstance bonus to their Armor Class against the triggering attack. This turns the triggering critical hit into a hit, or the triggering hit into a miss.',5,NULL,26,27),
  (383,1,'148','Reflexive Shield','You can use your shield to fend off the worst of area effects and other damage. When you Raise your Shield, you gain your shield’s circumstance bonus to Reflex saves. If you have the Shield Block reaction, damage you take as a result of a Reflex save can trigger that reaction, even if the damage isn’t physical damage.',NULL,NULL,NULL,NULL),
  (384,1,'148','Revealing Stab','You drive your piercing weapon into an imperceptible foe, revealing its location to your allies. Make a Strike with the required melee weapon. You don’t have to attempt a flat check to hit a concealed creature, and you have to succeed at only a DC 5 flat check to target a hidden creature. If you hit and deal damage, you can drive the required weapon into a corporeal target, revealing its current position. You Release the weapon, and it becomes lodged in the target. If the target is concealed, other creatures don’t need to succeed at a flat check to hit it. If the target is hidden, other creatures have to succeed at only a DC 5 flat check to target it. The creatures need to be able to see your weapon to gain any of these benefits, and the target can’t become undetected to anyone who sees your weapon. If the target is invisible, the weapon remains visible while lodged in it. This benefit lasts until the weapon is removed from the creature. An adjacent creature or the target can remove the weapon with 2 Interact actions.',2,NULL,NULL,28),
  (385,1,'149','Shatter Defenses','Your offense exploits your enemy’s fear. Make a melee Strike against a frightened creature. If you hit and deal damage, the target becomes flat-footed until its frightened condition ends. If the target was already flat-footed to you when you damaged it with this Strike, it can’t reduce its frightened value below 1 until the start of your next turn.',1,NULL,NULL,29),
  (386,1,'149','Shield Warden (Fighter)','You use your shield to protect your allies. When you have a shield raised, you can use your Shield Block reaction when an attack is made against an ally adjacent to you. If you do, the shield prevents that ally from taking damage instead of preventing you from taking damage, following the normal rules for Shield Block.',NULL,NULL,NULL,NULL),
  (387,1,'149','Triple Shot','You can quickly fire multiple shots with greater control. When you use Double Shot, you can make the attacks against the same target. You can add an additional action to Double Shot to make three ranged Strikes instead of two. If you do, the penalty is –4. All attacks count toward your multiple attack penalty, but the penalty doesn’t increase until after you’ve made all of them.',NULL,NULL,NULL,NULL),
  (388,1,'173','Blind-Fight','Your battle instincts make you more aware of concealed and invisible opponents. You don’t need to succeed at a flat check to target concealed creatures. You’re not flat-footed to creatures that are hidden from you (unless you’re flat-footed to them for reasons other than the hidden condition), and you need only a successful DC 5 flat check to target a hidden creature. While you’re adjacent to an undetected creature of your level or lower, it is instead only hidden from you.',NULL,NULL,NULL,NULL),
  (389,1,'149','Dueling Riposte','You riposte against your flailing enemy. Make a melee Strike against or attempt to Disarm the triggering creature.',5,NULL,27,30),
  (390,1,'149','Felling Strike','Your attack can ground an airborne foe. Make a Strike. If it hits and deals damage to a flying target, the target falls up to 120 feet. The fall is gradual enough that if it causes the target to hit the ground, the target takes no damage from the fall. If the attack is a critical hit, the target can’t Fly, Leap, levitate, or otherwise leave the ground until the end of your next turn.',2,NULL,NULL,NULL),
  (391,1,'149','Incredible Aim','By spending a moment to focus, you can ensure your attack strikes true. Make a ranged weapon Strike. On this Strike, you gain a +2 circumstance bonus to the attack roll and ignore the target’s concealed condition.',2,NULL,NULL,NULL),
  (392,1,'149','Mobile Shot Stance','Your shots become nimble and deadly. While you’re in this stance, your ranged Strikes don’t trigger Attacks of Opportunity or other reactions that are triggered by a ranged attack. If you have Attack of Opportunity, you can use it with a loaded ranged weapon you’re wielding. The triggering creature must be within 5 feet of you for you to do so.',1,NULL,NULL,NULL),
  (393,1,'149','Positioning Assault','With punishing blows, you force your opponent into position. Make a Strike with the required weapon. If you hit, you move the target 5 feet into a space in your reach. This follows the forced movement rules found on page 475.',2,NULL,NULL,31),
  (394,1,'149','Quick Shield Block','You can bring your shield into place with hardly a thought. At the start of each of your turns, you gain an additional reaction that you can use only to Shield Block.',NULL,NULL,NULL,NULL),
  (395,1,'149','Sudden Leap (Fighter)','You make an impressive leap and swing while you soar. Make a Leap, High Jump, or Long Jump and attempt one melee Strike at any point during your jump. Immediately after the Strike, you fall to the ground if you’re in the air, even if you haven’t reached the maximum distance of your jump. If the distance you fall is no more than the height of your jump, you take no damage and land upright. When attempting a High Jump or Long Jump during a Sudden Leap, determine the DC using the Long Jump DCs, and increase your maximum distance to double your Speed. Special If you have Felling Strike, you can spend 3 actions to make a Sudden Leap and use Felling Strike instead of a normal Strike.',2,NULL,NULL,NULL),
  (396,1,'150','Agile Grace','Your graceful moves with agile weapons are beyond compare. Your multiple attack penalty with agile weapons and agile unarmed attacks becomes –3 for your second attack and –6 for subsequent attacks (rather than –4 and –8).',NULL,NULL,NULL,NULL),
  (397,1,'150','Certain Strike','Even when you don’t hit squarely, you can still score a glancing blow. Make a melee Strike. It gains the following failure effect. Failure Your attack deals any damage it would have dealt on a hit, excluding all damage dice. (This removes damage dice from weapon runes, spells, and special abilities, in addition to weapon damage dice.)',1,NULL,NULL,NULL),
  (398,1,'150','Combat Reflexes','You are particularly swift at punishing foes who leave you openings. At the start of each of your turns when you regain your actions, you gain an additional reaction that can be used only to make an Attack of Opportunity.',NULL,NULL,NULL,NULL),
  (399,1,'150','Debilitating Shot','Aiming for a weak point, you impede your foe with a precise shot. Make a ranged weapon Strike. If it hits and deals damage, the target is slowed 1 until the end of its next turn.',2,NULL,NULL,NULL),
  (400,1,'150','Disarming Twist','After your initial attack redirects your foe’s defenses, your follow-up wrests their weapon from their grasp. Make a melee Strike with the required weapon. In addition to its other effects, this Strike gains the success and critical success effects of the Disarm action. The Strike also has the following failure effect.',1,NULL,NULL,21),
  (401,1,'150','Disruptive Stance','The slightest distraction can provoke your wrath, and you’re prepared to foil enemies’ actions. As long as you are in this stance, you can use Attack of Opportunity when a creature within your reach uses a concentrate action, in addition to manipulate and move actions. Furthermore, you disrupt a triggering concentrate or manipulate action if your Strike hits (not only if it’s a critical hit).',1,NULL,NULL,NULL),
  (402,1,'151','Fearsome Brute','Fear makes your foes weak and more vulnerable to your attacks. You gain a circumstance bonus to damage rolls for Strikes against frightened creatures. The bonus is equal to double the target’s frightened value. If you have master proficiency in Intimidation, increase the bonus to triple the target’s frightened value.',NULL,NULL,NULL,NULL),
  (403,1,'151','Improved Knockdown','You can dash your foe to the ground with a single blow. When you use Knockdown, instead of making a Strike followed by a Trip, you can attempt a single Strike. If you do and your Strike hits, you also apply the critical success effect of a Trip. If you used a two-handed melee weapon for the Strike, you can use the weapon’s damage die size instead of the regular die size for the damage from a critical Trip.',NULL,NULL,NULL,NULL),
  (404,1,'151','Mirror Shield','You reflect the spell back against the triggering opponent. Make a ranged attack against the triggering creature using your highest proficiency with a ranged weapon. If you can cast spells, you can make a spell attack roll instead. If you succeed, your opponent takes the effects of a successful spell attack roll for their own spell (or the effects of a critical success if your attack roll was a critical success).',5,NULL,28,32),
  (406,1,'151','Brutal Finish','Your final blow can make an impact even if it rebounds off a foe’s defenses. Make a Strike with the required weapon. After the Strike, your turn ends. The Strike deals one extra weapon damage die, or two extra weapon damage dice if you’re at least 18th level. The Strike also gains the following failure effect.',1,NULL,NULL,33),
  (407,1,'151','Dueling Dance','Using your free hand as pivot and balance, you both attack and defend with your weapon. While you are in this stance, you constantly have the benefits of Dueling Parry.',1,NULL,NULL,21),
  (408,1,'151','Flinging Shove','Increase the distance you Shove your opponent with Aggressive Block or Brutish Shove to 10 feet on a success or 20 feet on a critical success. When you use Aggressive Block, you can choose whether the target is flat-footed or Shoved. When you make a Brutish Shove, you also Shove the target 5 feet on a failure.',NULL,NULL,NULL,NULL),
  (409,1,'151','Improved Dueling Riposte','Your weapon whirls and darts, striking foes whenever the opportunity presents itself. At the start of each of your turns, you gain an additional reaction that you can use only to make a Dueling Riposte. You can use this extra reaction even if you are not benefiting from Dueling Parry.',NULL,NULL,NULL,NULL),
  (410,1,'151','Incredible Ricochet','After your first shot singles out your opponent’s position, you direct another that ricochets around obstacles and strikes unerringly. Make a ranged weapon Strike. You ignore the target’s concealed condition and all cover.',1,NULL,NULL,NULL),
  (411,1,'151','Lunging Stance','Your body coiled to strike, you can lash out at distant enemies. While you are in this stance, you can use Attack of Opportunity against a creature that is outside your reach but within the reach you would have with a Lunge. If you do, you increase your range with the Strike by 5 feet.',1,NULL,NULL,22),
  (412,1,'151','Paragon’s Guard','Once you’ve had a moment to set your stance, you always have your shield ready without a thought. While you are in this stance, you constantly have your shield raised as if you’d used the Raise a Shield action, as long as you meet that action’s requirements.',1,NULL,NULL,10),
  (413,1,'152','Spring Attack','Springing away from one foe, you Strike at another. Stride up to your Speed, but you must end that movement within melee reach of a different enemy. At the end of your movement, make a melee Strike against an enemy now within reach. You can use Spring Attack while Burrowing, Climbing, Flying, or Swimming instead of Striding if you have the corresponding movement type.',1,NULL,NULL,34),
  (414,1,'152','Desperate Finisher','You throw everything into one last press. Use a single action that you know with the press trait as part of Desperate Finisher. You forgo the ability to use reactions until the start of your next turn.',5,NULL,29,35),
  (415,1,'152','Determination','Your training allows you to shrug off your foes’ spells and conditions when the need is dire. Choose a single nonpermanent spell or condition that is affecting you. If you chose a condition, its effect on you ends. If you chose a spell, attempt to counteract the spell (your level is your counteract level, and you attempt a Will save as your counteract check).This doesn’t remove any Hit Point damage normally dealt by the spell or condition, and it doesn’t prevent the spell or debilitating effect from affecting other allies or the environment around you. It can’t remove an ongoing affliction or prevent such an affliction from inflicting conditions on you later. It can’t remove conditions from the situation (such as prone or flanked). If the effect comes from a creature, hazard, or item of 20th level or higher, Determination can’t remove its effect on you.',1,6,NULL,NULL),
  (416,1,'152','Guiding Finish','Using your weapon as a lever, you force your opponent to end up right where you want them. Make a Strike with the required weapon. If the Strike hits, you can move the target up to 10 feet into a space in your reach. You can move the target through your space during this movement. This follows the forced movement rules found on page 475. Your Strike gains the following failure effect.',1,NULL,NULL,21),
  (417,1,'153','Guiding Riposte','By shifting your weight and angling your weapon, you guide your opponent to a more favorable position. When you use Dueling Riposte to Strike and you hit, you can move the target up to 10 feet into a space in your reach. This follows the forced movement rules found on page 475.',NULL,NULL,NULL,NULL),
  (418,1,'153','Improved Twin Riposte (Fighter)','Your weapons are a blur, blocking and biting at your foes. At the start of each of your turns, you gain an additional reaction that you can use only to perform a Twin Riposte. You can use this extra reaction even if you are not benefiting from Twin Parry.',NULL,NULL,NULL,NULL),
  (419,1,'153','Stance Savant (Fighter)','When there’s imminent danger, you drop into a stance with a mere thought. Use an action that has the stance trait.',4,NULL,30,NULL),
  (420,1,'153','Two-Weapon Flurry','You lash out with both your weapons in a sudden frenzy. Strike twice, once with each weapon.',1,NULL,NULL,36),
  (422,1,'153','Graceful Poise','With the right positioning, your off-hand weapon can strike like a scorpion’s stinger. While you are in this stance, if you make your second Strike from Double Slice with an agile weapon, Double Slice counts as one attack when calculating your multiple attack penalty.',1,NULL,NULL,NULL),
  (423,1,'153','Improved Reflexive Shield','Your shield can help save nearby allies. When you use Shield Block against damage resulting from a Reflex save, adjacent allies who would take damage due to Reflex saves against the same effect also benefit from the damage reduction.',NULL,NULL,NULL,NULL),
  (424,1,'153','Multishot Stance','You lock yourself in a stable position so you can fire swiftly and accurately. While you are in this stance, your penalty for Double Shot is reduced to –1, or –2 if you add the extra action to make three Strikes. If you move from your position, this stance ends.',1,NULL,NULL,23),
  (425,1,'153','Twinned Defense','You’re always ready to use your off-hand weapon to interfere with attacks against you. While you are in this stance, you constantly gain the benefits of the Twin Parry action.',1,NULL,NULL,26),
  (426,1,'153','Impossible Volley','You fire a volley at all foes in an area. Make one Strike with a –2 penalty against each enemy within a 10-foot-radius burst centered at or beyond your weapon’s volley range. Roll the damage only once for all targets.',3,NULL,NULL,37),
  (427,1,'153','Savage Critical','The wounds you inflict are grievous. When you Strike with a weapon or unarmed attack for which you have legendary proficiency, you critically succeed if you roll a 19 on the die as long as that result is a success. This has no effect on a 19 if the result would be a failure.',NULL,NULL,NULL,NULL),
  (428,1,'153','Boudless Reprisals','With a sixth sense for the flow of combat, you can quickly react to any situation as required. At the start of each enemy’s turn, you gain a reaction you can use only during that turn.',NULL,NULL,NULL,NULL),
  (429,1,'153','Weapon Supremacy','Your skill with weapons lets you attack swiftly at all times. You’re permanently quickened. You can use your extra action only to Strike.',NULL,NULL,NULL,NULL),
-- Monk Class Feats
  (430,1,'158','Crane Stance','You enter the stance of a crane, holding your arms in an imitation of a crane’s wings and using flowing, defensive motions. You gain a +1 circumstance bonus to AC, but the only Strikes you can make are crane wing attacks. These deal 1d6 bludgeoning damage; are in the brawling group; and have the agile, finesse, nonlethal, and unarmed traits. While in Crane Stance, reduce the DC for High Jump and Long Jump by 5, and when you Leap, you can move an additional 5 feet horizontally or 2 feet vertically.',1,NULL,NULL,38),
  (431,1,'158','Dragon Stance','You enter the stance of a dragon and make powerful leg strikes like a lashing dragon’s tail. You can make dragon tail attacks that deal 1d10 bludgeoning damage. They are in the brawling group and have the backswing, nonlethal, and unarmed traits. While in Dragon Stance, you can ignore the first square of difficult terrain while Striding.',1,NULL,NULL,38),
  (432,1,'158','Ki Rush','You can use ki to move with extraordinary speed and make yourself harder to hit. You gain the ki rush ki spell and a focus pool of 1 Focus Point. The rules for ki spells are summarized in the sidebar on page 157, and the full rules for focus spells appear on page 300.',NULL,NULL,NULL,NULL),
  (433,1,'158','Ki Strike','Your study of the flow of mystical energy allows you to harness it into your physical strikes. You gain the ki strike ki spell and a focus pool of 1 Focus Point. The rules for ki spells are summarized in the sidebar on page 157, and the full rules for focus spells appear on page 300.',NULL,NULL,NULL,NULL),
  (434,1,'158','Monastic Weaponry','You have trained with the traditional weaponry of your monastery or school. You gain access to uncommon weapons that have the monk trait and become trained in simple and martial monk weapons. When your proficiency rank for unarmed attacks increases to expert or master, your proficiency rank for these weapons increases to expert or master as well. You can use melee monk weapons with any of your monk feats or monk abilities that normally require unarmed attacks, though not if the feat or ability requires you to use a single specific type of attack, such as Crane Stance.',NULL,NULL,NULL,NULL),
  (435,1,'159','Mountain Stance','You enter the stance of an implacable mountain—a technique first discovered by dwarven monks—allowing you to strike with the weight of an avalanche. The only Strikes you can make are falling stone unarmed attacks. These deal 1d8 bludgeoning damage; are in the brawling group; and have the forceful, nonlethal, and unarmed traits. While in Mountain Stance, you gain a +4 status bonus to AC and a +2 circumstance bonus to any defenses against being Shoved or Tripped. However, you have a Dexterity modifier cap to your AC of +0, meaning you don’t add your Dexterity to your AC, and your Speeds are all reduced by 5 feet.',1,NULL,NULL,39),
  (436,1,'159','Tiger Stance','You enter the stance of a tiger and can make tiger claw attacks. These deal 1d8 slashing damage; are in the brawling group; and have the agile, finesse, nonlethal, and unarmed traits. On a critical success with your tiger claws, if you deal damage, the target takes 1d4 persistent bleed damage. As long as your Speed is at least 20 feet while in Tiger Stance, you can Step 10 feet.',1,NULL,NULL,38),
  (437,1,'159','Wolf Stance','You enter the stance of a wolf, low to the ground with your hands held like fanged teeth. You can make wolf jaw unarmed attacks. These deal 1d8 piercing damage; are in the brawling group; and have the agile, backstabber, finesse, nonlethal, and unarmed traits. If you’re flanking a target while in Wolf Stance, your wolf jaw unarmed attacks also gain the trip trait.',1,NULL,NULL,38),
  (438,1,'160','Brawling Focus','You know how to make the most of your attacks when fighting hand-to-hand. You gain access to the critical specialization effects of unarmed strikes in the brawling group and weapons in the brawling group. If you have Monastic Weaponry, you also gain the critical specialization effects of all monk weapons in which you are trained.',NULL,NULL,NULL,NULL),
  (439,1,'160','Crushing Grab','Like a powerful constrictor, you crush targets in your unyielding grasp. When you successfully Grapple a creature, you can deal bludgeoning damage to that creature equal to your Strength modifier. You can make this attack nonlethal with no penalty.',NULL,NULL,NULL,NULL),
  (440,1,'160','Dancing Leaf','You are as light as a leaf whirling in the breeze. When you Leap or succeed at a High Jump or Long Jump, increase the distance you jump by 5 feet. When calculating the damage you take from falling, don’t count any distance fallen while you are adjacent to a wall.',NULL,NULL,NULL,NULL),
  (441,1,'160','Elemental Fist','You call upon the power of the elements, infusing your ki with elemental energy and allowing your attacks to deal energy damage. When you cast ki strike, in addition to the damage types normally available, you can deliver the extra damage in the form of a gust of storm-tossed wind (dealing electricity damage and gaining the air trait), a chunk of stone (dealing bludgeoning damage and gaining the earth trait), a flickering flame (dealing fire damage), or a crashing wave of frigid water (dealing cold damage and gaining the water trait).',NULL,NULL,NULL,NULL),
  (442,1,'160','Stunning Fist','The focused power of your flurry threatens to overwhelm your opponent. When you target the same creature with two Strikes from your Flurry of Blows, you can try to stun the creature. If either Strike hits and deals damage, the target must succeed at a Fortitude save against your class DC or be stunned 1 (or stunned 3 on a critical failure). This is an incapacitation effect.',NULL,NULL,NULL,NULL),
  (443,1,'160','Deflect Arrows','You gain a +4 circumstance bonus to AC against the triggering attack. If the attack misses, you have deflected it. You cannot use this feat to deflect unusually massive ranged projectiles (such as boulders or ballista bolts).',5,NULL,31,40),
  (444,1,'160','Flurry of Maneuvers','You flurry is a combination of maneuvers. You can replace one or both of your attacks during a Flurry of Blows with Grapples, Shoves, or Trips.',NULL,NULL,NULL,NULL),
  (445,1,'160','Flying Kick','You launch yourself at a foe. Make a Leap or attempt a High Jump or Long Jump. At the end of the jump, if you’re adjacent to a foe, you can immediately Strike that foe with an unarmed attack, even if the foe is in mid-air. You fall to the ground after the Strike. If the distance you fall is no more than the height of your jump, you land upright and take no damage.',2,NULL,NULL,NULL),
  (446,1,'160','Guarded Movement','Your guard is up, even while moving. You gain a +4 circumstance bonus to AC against reactions triggered by your movement.',NULL,NULL,NULL,NULL),
  (447,1,'160','Stand Still','You strike out when your foe tries to flee. Make a melee Strike against the triggering creature. If the attack is a critical hit and the trigger was a move action, you disrupt that action.',5,NULL,32,NULL),
  (448,1,'160','Wholeness of Body','You can restore your health by tapping into your ki. You gain the wholeness of body ki spell. Increase the number of Focus Points in your focus pool by 1.',NULL,NULL,NULL,NULL),
  (449,1,'160','Abundant Step','You can teleport yourself a short distance. You gain the abundant step ki spell. Increase the number of Focus Points in your focus pool by 1.',NULL,NULL,NULL,NULL),
  (450,1,'161','Crane Flutter','You interpose your arm between yourself and your opponent. Your circumstance bonus to AC from Crane Stance increases to +3 against the triggering attack. If the attack misses you, you can immediately make a crane wing Strike against the attacker at a –2 penalty, even if the attacker isn’t within your reach.',5,NULL,33,41),
  (451,1,'161','Dragon Roar','You bellow, instilling fear in your enemies. Enemies within a 15-foot emanation must succeed at a Will save against your Intimidation DC or be frightened 1 (frightened 2 on a critical failure). When a creature frightened by the roar begins its turn adjacent to you, it can’t reduce its frightened value below 1 on that turn. Your first attack that hits a frightened creature after you roar and before the end of your next turn gains a +4 circumstance bonus to damage. After you use Dragon Roar, you can’t use it again for 1d4 rounds. Its effects end immediately if you leave Dragon Stance. Creatures in the area of your roar are then temporarily immune for 1 minute.',1,NULL,NULL,42),
  (452,1,'161','Ki Blast','You can unleash an impactful cone of force by channeling your ki. You gain the ki blast ki spell. Increase the number of Focus Points in your focus pool by 1.',NULL,NULL,NULL,NULL),
  (453,1,'161','Mountain Stronghold','You focus on your connection to the earth and call upon the mountain to block attacks against you. You gain a +2 circumstance bonus to AC until the beginning of your next turn.',1,NULL,NULL,43),
  (454,1,'161','Tiger Slash','You make a fierce swipe with both hands. Make a tiger claw Strike. It deals two extra weapon damage dice (three extra dice if you’re 14th level or higher), and you can push the target 5 feet away as if you had successfully Shoved them. If the attack is a critical success and deals damage, add your Strength modifier to the persistent bleed damage from your tiger claw.',2,NULL,NULL,44),
  (455,1,'162','Water Step','You can Stride across liquid and surfaces that don’t support your weight. This benefit lasts only during your movement. If you end your movement on a surface that can’t support you, you fall in or it collapses as normal.',NULL,NULL,NULL,NULL),
  (456,1,'162','Whirling Throw','You propel your grabbed or restrained foe a great distance. You can throw the creature any distance up to 10 feet, plus 5 feet × your Strength modifier. If you successfully throw the creature, it takes bludgeoning damage equal to your Strength modifier plus 1d6 per 10 feet you threw it.',1,NULL,NULL,45),
  (457,1,'162','Wolf Drag','You rip your enemy off their feet. Make a wolf jaw Strike. Your wolf jaw gains the fatal d12 trait for this Strike, and if the attack succeeds, you knock the target prone.',2,NULL,NULL,46),
  (458,1,'162','Arrow Snatching ','You pluck missiles from the air and hurl them back at their source. When you successfully deflect an attack with Deflect Arrow, as part of that reaction, you can immediately make a ranged Strike against the attacker using the projectile you deflected. This is a thrown weapon with the same range increment and effect on a hit as the triggering attack.',NULL,NULL,NULL,NULL),
  (459,1,'163','Ironblood Stance','You enter the stance of impenetrable iron, refusing to yield to any blow. You can make iron sweep unarmed attacks. These deal 1d8 bludgeoning damage; are in the brawling group; and have the nonlethal, parry, sweep, and unarmed traits. While in Ironblood Stance, you gain resistance 2 to all damage. The resistance increases to 3 at 12th level, to 4 at 16th level, and to 5 at 20th level.',1,NULL,NULL,38),
  (460,1,'163','Mixed Maneuver','You combine two different maneuvers together into a single flowing whole. Choose any two of Grapple, Shove, and Trip. Attempt both of the attacks you chose against the same or different creatures, but don’t apply the multiple attack penalty until after resolving both attacks.',2,NULL,NULL,NULL),
  (461,1,'163','Tangled Forest Stance','You extend your arms like gnarled branches to interfere with your foes’ movements. You can make lashing branch unarmed attacks. These deal 1d8 slashing damage; are in the brawling group; and have the agile, finesse, nonlethal, and unarmed traits. While you’re in Tangled Forest Stance and can act, every enemy in your reach that tries to move away from you must succeed at a Reflex save, Acrobatics check, or Athletics check against your class DC or be immobilized for that action. If you prefer, you can allow the enemy to move.',1,NULL,NULL,38),
  (462,1,'163','Wall Run','You defy gravity, traversing vertical planes as easily as the ground. Stride up to your Speed. You must start your movement on a horizontal surface. During this movement, you can run up vertical surfaces, like walls, at your full Speed. If you end the Stride off the ground, you fall after taking your next action or when your turn ends, whichever comes first (though you can Grab an Edge, if applicable). If you have Water Step or a similar ability, Wall Run lets you run along flimsy vertical surfaces, as well as vertical liquids, such as a waterfall.',1,NULL,NULL,NULL),
  (463,1,'163','Wild Winds Initiate','You learn a mystical stance that lets you attack from a distance. You gain the wild winds stance ki spell. Increase the number of Focus Points in your focus pool by 1. While entering the stance is a ki spell, the wind crash Strikes the stance grants are not, so you can use them as often as you like while in the stance.',NULL,NULL,NULL,NULL),
  (464,1,'163','Knockback Strike','You focus your strength into a blow powerful enough to push an enemy away from you. Make an unarmed Strike. If you hit, attempt an Athletics check to Shove the target. This attack uses the same multiple attack penalty as your Strike, and doesn’t count toward your multiple attack penalty.',2,NULL,NULL,NULL),
  (465,1,'163','Sleeper Hold','You pinch crucial points of your target’s nervous system, impeding its ability to function. Attempt an Athletics check to Grapple the creature, with the following success and critical success effects instead of the usual effects.  Critical Success: The target falls unconscious for 1 minute, though it remains standing and doesn’t drop what it holds.  Success: The target is clumsy 1 until the end of its next turn.',1,NULL,NULL,45),
  (466,1,'163','Wind Jump','You gather the wind beneath you, allowing you to soar as you jump. You gain the wild winds stance ki spell. Increase the number of Focus Points in your focus pool by 1.',NULL,NULL,NULL,NULL),
  (467,1,'163','Winding Flow','Any journey consists of more than simply reaching your destination. You use two of the following actions in any order: Stand, Step, and Stride. You can’t use the same action twice.',1,1,NULL,NULL),
  (468,1,'163','Diamond Soul','You have fortified your body and mind against eldritch effects. You gain a +1 status bonus to saving throws against magic.',NULL,NULL,NULL,NULL),
  (469,1,'163','Disrupt Ki','Make an unarmed Strike. If it deals damage to a living creature, you block that creature’s inner life force. The creature takes 2d6 persistent negative damage and is enfeebled 1 until the persistent damage ends. If you’re 18th level or higher, this deals 3d6 persistent negative damage instead.',2,NULL,NULL,NULL),
  (470,1,'163','Improved Knockback','When you successfully Shove a creature, increase both the distance you can push the creature and the distance you can move to follow along with the target by 5 feet on a success or 10 feet on a critical success. If you push the target into an obstacle, it takes bludgeoning damage equal to 6 plus your Strength modifier, or 8 plus your Strength modifier if you have legendary proficiency in Athletics.',NULL,NULL,NULL,NULL),
  (471,1,'164','Meditative Focus','Your meditation is so effective that you can achieve a deep focus. If you have spent at least 2 Focus Points since the last time you Refocused, you recover 2 Focus Points when you Refocus instead of 1.',NULL,NULL,NULL,NULL),
  (472,1,'164','Stance Savant (Monk)','You enter a stance without a thought. Use an action that has the stance trait.',5,NULL,30,NULL),
  (473,1,'164','Ironblood Surge','You steel yourself, preparing to resist oncoming attacks and using your muscles to absorb the impact. You gain the benefits of your iron sweep’s parry trait (a +1 circumstance bonus to AC until the start of your next turn) and your resistance from Ironblood Stance increases to your Strength modifier (if it’s higher) for the same duration.',1,NULL,NULL,47),
  (474,1,'164','Moutain Quake','You stomp, shaking the earth beneath you. Creatures on the ground within a 20-foot emanation take damage equal to your Strength modifier (minimum 0), which they can resist with a basic Fortitude save. On a failure, they also fall prone. After you use this action, you can’t use it again for 1d4 rounds.',1,NULL,NULL,43),
  (475,1,'164','Tangled Forest Rake','You reposition foes with raking attacks. Make a lashing branch Strike. If you hit and deal damage, you force the target to move 5 feet into a space within your reach. This follows the forced movement rules found on page 475.',1,NULL,NULL,48),
  (476,1,'164','Timeless Body','You cease aging. In addition, you gain a +2 status bonus to saving throws against poisons and diseases, and you gain resistance to poison damage equal to half your level.',NULL,NULL,NULL,NULL),
  (477,1,'165','Tongue of the Sun and Moon','You have transcended the barriers between words and meaning. You can speak and understand all spoken languages.',NULL,NULL,NULL,NULL),
  (478,1,'165','Wild Winds Gust','You store up energy and release it in an enormous gust of rushing wind. Make a wind crash Strike against each creature in your choice of a 30-foot cone or a 60 foot line. These attacks all count toward your multiple attack penalty, but the penalty doesn’t increase until after you make all the attacks.',2,NULL,NULL,49),
  (479,1,'165','Enlightened Presence','You exude an aura of resolve. You and allies within 15 feet of you gain a +2 status bonus to Will saving throws against mental effects.',NULL,NULL,NULL,NULL),
  (480,1,'165','Master of Many Styles','You move between stances in an unceasing dance. You use an action with the stance trait.',4,NULL,NULL,50),
  (481,1,'165','Quivering Palm','Your strikes can kill foes. You gain the quivering ki spell. Increase the number of Focus Points in your focus pool by 1.',NULL,NULL,NULL,NULL),
  (482,1,'165','Shattering Strike','The force of your considered blow shatters objects and defenses alike. Make an unarmed Strike. It bypasses the target’s resistances. If the target has Hardness, the Strike treats the Hardness as if it were half its value.',2,NULL,NULL,NULL),
  (483,1,'165','Diamond Fists','Your body hardens as you combine your attacks, making your finishing blows more damaging. Your unarmed attacks gain the forceful trait. Any that already had this trait instead increase their weapon damage dice by one step.',NULL,NULL,NULL,NULL),
  (484,1,'165','Empty Body','You transmute your body into an ethereal form. You gain the empty body ki spell. Increase the number of Focus Points in your focus pool by 1.',NULL,NULL,NULL,NULL),
  (485,1,'165','Meditative Wellspring','When you clear your mind, your focus comes flowing back in a powerful rush. If you have spent at least 3 Focus Points since the last time you Refocused, you recover 3 Focus Points when you Refocus instead of 1.',NULL,NULL,NULL,NULL),
  (486,1,'165','Swift River','You flow like water, avoiding all restraints. End one status penalty to your speed, or end one immobilized or slowed condition affecting you.',4,NULL,34,NULL),
  (487,1,'165','Enduring Quickness','You move as fast and as high as the wind itself. You’re permanently quickened. You can use your extra action to Stride or Leap, or to provide one of the actions needed for a High Jump or Long Jump.',NULL,NULL,NULL,NULL),
  (488,1,'165','Fuse Stance','You have combined two stances into a single stance all your own. When you take this feat, choose two stances you know and combine them into a single fused stance. Give your new fused stance a unique name. When you enter your fused stance, you gain all the effects of both stances, including the requirements and restrictions. You can’t fuse stances with fundamentally incompatible requirements or restrictions (such as Ironblood Stance and Crane Stance, which both require using only one type of Strike).',NULL,NULL,NULL,NULL),
  (489,1,'165','Impossible Technique','You execute a maneuver that defies possibility. If the triggering effect was an enemy’s attack hitting you, the enemy rerolls the attack roll and uses the lower result. If the triggering effect was you failing a saving throw, you reroll the saving throw and use the higher result.',5,NULL,35,51),
-- Ranger Class Feats
  (490,1,'171','Animal Companion (Ranger)','You gain the service of a young animal companion that travels with you and obeys simple commands as best as it can. See Animal Companions on page 214. When you Hunt Prey, your animal companion gains the action’s benefits and your hunter’s edge benefit if you have one.',NULL,NULL,NULL,NULL),
  (491,1,'171','Crossbow Ace','You have a deep understanding of the crossbow. When you’re wielding a crossbow and use Hunt Prey or use Interact to reload your crossbow, you gain a +2 circumstance bonus to the damage roll on your next Strike with that crossbow. If the crossbow is a simple crossbow, also increase the damage die size for that attack by one step (page 279). You must make the attack before the end of your next turn or these benefits are lost.',NULL,NULL,NULL,NULL),
  (492,1,'171','Hunted Shot','You take two quick shots against the one you hunt. Make two Strikes against your prey with the required weapon. If both hit the same creature, combine their damage for the purpose of resistances and weaknesses. Apply your multiple attack penalty to each Strike normally.',1,1,NULL,23),
  (493,1,'171','Monster Hunter','You swiftly assess your prey and apply what you know. As part of the action used to Hunt your Prey, you can attempt a check to Recall Knowledge about your prey. When you critically succeed at identifying your hunted prey with Recall Knowledge, you note a weakness in the creature’s defenses. You and allies you tell gain a +1 circumstance bonus to your next attack roll against that prey. You can give bonuses from Monster Hunter only once per day against a particular creature.',NULL,NULL,NULL,NULL),
  (494,1,'171','Twin Takedown','You swiftly attack your hunted prey with both weapons. Make two Strikes against your hunted prey, one with each of the required weapons. If both hit the same hunted prey, combine their damage for the purpose of its resistances and weaknesses. Apply your multiple attack penalty to each Strike normally.',1,1,NULL,17),
  (495,1,'171','Favored Terrain','You have studied a specific terrain to overcome its challenges. Choose aquatic, arctic, desert, forest, mountain, plains, sky, swamp, or underground as your favored terrain. When in that terrain, you can ignore the effects of non-magical diffcult terrain. If you have the wild stride class feature, you gain a second benefit while in your favored terrain, depending on your choice.',NULL,NULL,NULL,NULL),
  (496,1,'172','Hunter’s Aim','When you focus on aiming, your attack becomes particularly accurate. Make a ranged weapon Strike against your hunted prey. On this Strike, you gain a +2 circumstance bonus to the attack roll and ignore your prey’s concealed condition.',2,NULL,NULL,NULL),
  (497,1,'172','Monster Warden','You understand how to defend yourself and others against your prey. When you grant bonuses from Monster Hunter, you and your allies also each gain a +1 circumstance bonus to your next saving throw against that particular creature and to your AC against that creature’s next attack against you.',NULL,NULL,NULL,NULL),
  (498,1,'172','Quick Draw','You draw your weapon and attack with the same motion. You Interact to draw a weapon, then Strike with that weapon.',1,NULL,NULL,NULL),
  (499,1,'172','Wild Empathy','You have a connection to the creatures of the natural world that allows you to communicate with them on a rudimentary level. You can use Diplomacy to Make an Impression on animals and to make very simple Requests of them. In most cases, wild animals will give you time to make your case.',NULL,NULL,NULL,NULL),
  (500,1,'172','Companion’s Cry','You can urge your companion to do its utmost. You can spend 2 actions to Command an Animal instead of 1 when commanding your animal companion. If you do, your animal companion uses an additional action.',NULL,NULL,NULL,NULL),
  (501,1,'172','Disrupt Prey','Make a melee Strike against your prey. If the attack is a critical hit, you disrupt the triggering action.',4,NULL,36,NULL),
  (502,1,'172','Far Shot','Your experience in the field has taught you how to focus your aim at a distance, increasing your accuracy. Double your weapons’ range increments.',NULL,NULL,NULL,NULL),
  (503,1,'172','Favored Enemy','You have studied a specific type of wild creature and can hunt it more easily. When you gain this feat, choose animals, beasts, dragons, or both fungi and plants as your favored enemy. When you roll initiative and can see an enemy that belongs to the chosen category, you can Hunt Prey as a free action, designating that enemy. You can use this free action even if you haven’t identified the creature yet with Recall Knowledge. The benefit doesn’t apply against favored enemies disguised as other creatures, and the GM determines whether it applies against a creature disguised as a favored enemy.',NULL,NULL,NULL,NULL),
  (504,1,'172','Running Reload','You can reload your weapon on the move. You Stride, Step, or Sneak, then Interact to reload.',1,NULL,NULL,NULL),
  (505,1,'172','Scout’s Warning','You visually or audibly warn your allies of danger, granting them each a +1 circumstance bonus to their initiative rolls. Depending on whether you use gestures or call out, this action gains either the visual or auditory trait, respectively.',4,NULL,37,NULL),
  (506,1,'172','Snare Specialist','You specialize in creating quick traps to obstruct your enemies on the battlefield. If your proficiency rank in Crafting is expert, you gain the formulas for three common or uncommon snares (page 589). If your rank is master, you gain 6. If your rank is legendary, you gain 9. Each day during your daily preparations, you can prepare four snares from your formula book for quick deployment; if they normally take 1 minute to Craft, you can Craft them with 3 Interact actions. The number of snares increases to six if you have master proficiency in Crafting and eight if you have legendary proficiency in Crafting. Snares prepared in this way don’t cost you any resources to Craft.',NULL,NULL,NULL,NULL),
  (507,1,'172','Twin Parry (Ranger)','You can use two weapons to deflect attacks. You gain a +1 circumstance bonus to AC until the start of your next turn, or a +2 circumstance bonus if either weapon has the parry trait. You lose this circumstance bonus if you no longer meet this feat’s requirement.',1,NULL,NULL,26),
  (508,1,'173','Mature Animal Companion (Ranger)','Your animal companion grows up, becoming a mature animal companion and gaining additional capabilities (page 214). If you have the Hunt Prey action, your animal companion assaults the prey even without your orders. During an encounter, even if you don’t use the Command an Animal action, your animal companion can still use 1 action that round on your turn to Stride toward or Strike your prey.',NULL,NULL,NULL,NULL),
  (509,1,'173','Quick Snares','You can rig a snare in only moments. You can Craft snares that normally take 1 minute to Craft with 3 Interact actions, even if you haven’t prepared them.',NULL,NULL,NULL,NULL),
  (510,1,'173','Skirmish Strike','Your feet and weapon move in tandem. Either Step and then Strike, or Strike and then Step.',1,NULL,NULL,NULL),
  (511,1,'173','Snap Shot','You’ve learned to react with ranged weapons when a creature is in close quarters. You can use a reaction that normally allows you to make a melee weapon Strike to instead make a ranged weapon Strike. You must be Striking an adjacent target. If necessary for the reaction’s trigger, you treat your ranged weapon as if it had a reach of 5 feet. If the reaction has other requirements, such as wielding a specific kind of weapon, Snap Shot doesn’t allow you to ignore them; it allows you only to replace a melee weapon Strike with a ranged weapon Strike.',NULL,NULL,NULL,NULL),
  (512,1,'173','Swift Tracker','Your keen eyes catch signs of passage even when you’re moving. You can move at your full Speed while you Track. If you have master proficiency in Survival, you don’t need to attempt a new Survival check every hour while Tracking. If you have legendary proficiency in Survival, you can use another exploration activity while Tracking. If you roll Survival for initiative while tracking your hunted prey, when you start your first turn of the encounter, you can Stride toward your hunted prey as a free action.',NULL,NULL,NULL,NULL),
  (514,1,'174','Deadly Aim','You aim for your prey’s weak spots, making your shot more challenging but dealing more damage if you hit. Make a ranged Strike against your hunted prey at a –2 penalty. You gain a +4 circumstance bonus to damage on that Strike. This bonus increases to +6 at 11th level and +8 at 15th level.',1,NULL,NULL,NULL),
  (515,1,'174','Hazard Finder','You have an intuitive ability to sense hazards. You gain a +1 circumstance bonus to Perception checks to find traps and hazards, to AC against their attacks, and to saves against their effects. You can find hazards that would normally require you to Search even if you aren’t Searching.',NULL,NULL,NULL,NULL),
  (516,1,'174','Powerful Snares','Your snares are particularly difficult for enemies to avoid. When you set a snare, the saving throw DC for that snare is equal to its normal DC or your class DC, whichever is higher.',NULL,NULL,NULL,NULL),
  (517,1,'174','Terrain Master','You adapt to your surroundings in any natural terrain. You can spend 1 hour practicing in your current terrain in order to make it your favored terrain, replacing your current favored terrain temporarily. If you spend a full day out of the new favored terrain, your favored terrain reverts back to your original choice when you took the Favored Terrain feat.',NULL,NULL,NULL,NULL),
  (518,1,'174','Warden’s Boon','By pointing out vulnerabilities, you grant the benefits listed in Hunt Prey and your hunter’s edge benefit to an ally until the end of their next turn. Depending on whether you call out or use gestures, this action gains either the auditory or visual trait.',1,NULL,NULL,NULL),
  (519,1,'174','Camouflage','You alter your appearance to blend in to the wilderness. In natural terrain, you can Sneak even if you’re observed.',NULL,NULL,NULL,NULL),
  (520,1,'175','Incredible Companion (Ranger)','Your animal companion continues to grow and develop. It becomes a nimble or savage animal companion (your choice), gaining additional capabilities determined by the type of companion (page 214).',NULL,NULL,NULL,NULL),
  (521,1,'175','Master Monster Hunter','You have a nearly encyclopedic knowledge of all creatures of the world. You can use Nature to Recall Knowledge to identify any creature. In addition, you gain the benefits of Monster Hunter (and Monster Warden, if you have it) on a success as well as a critical success.',NULL,NULL,NULL,NULL),
  (522,1,'175','Penetrating Shot','You shoot clear through an intervening creature to hit your prey. Choose a target that is giving lesser cover to your hunted prey. Make a single ranged Strike with the required weapon against the chosen target and your hunted prey. This attack ignores any lesser cover the chosen target provides your hunted prey. Roll damage only once, and apply it to each creature you hit. A Penetrating Shot counts as two attacks for your multiple attack penalty.',2,NULL,NULL,18),
  (523,1,'175','Twin Riposte','A clever parry with one weapon leaves your opponent open to an attack with the other weapon. Make a melee Strike or use a Disarm action against the triggering opponent.',5,NULL,27,52),
  (524,1,'175','Warden’s Step','You can guide your allies to move quietly through the wilderness. When you Sneak during exploration in natural terrain, you can designate any number of your allies to gain the benefits as if they were using that activity during that exploration. This requires no action on their part.',NULL,NULL,NULL,NULL),
  (525,1,'175','Distracting Shot','The sheer power of your attacks, or the overwhelming number of them, leaves an enemy flustered. If you critically hit your hunted prey with a ranged weapon, or hit it at least twice on the same turn with a ranged weapon, it’s flat-footed until the start of your next turn.',NULL,NULL,NULL,NULL),
  (526,1,'175','Double Prey','You can focus on two foes at once, hunting both of them down. When you use the Hunt Prey action, you can pick two creatures as your prey.',NULL,NULL,NULL,NULL),
  (527,1,'175','Lightning Snares','You can rig a trap with incredible speed. When you create a snare that normally takes 1 minute to Craft, you can Craft it using a single Interact action instead.',NULL,NULL,NULL,NULL),
  (528,1,'175','Second Sting','You read your prey’s movements and transform them into openings, so failures with one weapon set up glancing blows with the other. Make a melee Strike with one of the required weapons against your hunted prey. The Strike gains the following failure effect. Failure: You deal the damage the other required weapon would have dealt on a hit, excluding all damage dice. (This removes dice from weapon runes, spells, and special abilities, not just weapon damage dice).',1,NULL,NULL,17),
  (529,1,'175','Side by Side (Ranger)','You and your animal companion fight in tandem, distracting your foes and keeping them off balance. Whenever you and your animal companion are adjacent to the same foe, you are both flanking that foe with each other, regardless of your actual positions.',NULL,NULL,NULL,NULL),
  (530,1,'175','Sense the Unseen (Ranger)','When you look for foes, you can catch even the slightest cues, such as their minute movements or the shifting of air currents on your skin. Even though you failed at the triggering check, you automatically sense any undetected creatures in the area where you’re Seeking, making them merely hidden to you.',5,NULL,38,NULL),
  (531,1,'175','Shared Prey','Hunting as a duo, you and your ally both single out your prey. When you use Hunt Prey and select only one prey, you can grant your Hunt Prey benefits and hunter’s edge to an ally in addition to gaining them yourself. The ally retains these benefits until you use Hunt Prey again.',NULL,NULL,NULL,NULL),
  (532,1,'176','Stealthy Companion','You’ve trained your animal companion to blend in to its surroundings. Your animal companion gains the benefit of the Camouflage feat. If your companion is a specialized ambusher, its proficiency rank for Stealth increases to master (or legendary if it was already master).',NULL,NULL,NULL,NULL),
  (533,1,'176','Targeting Shot','You carefully track your prey’s position and defenses, allowing you to follow up around obstacles that block your shot. Make a ranged weapon Strike against your hunted prey. You ignore the target’s concealed condition and all cover.',1,NULL,NULL,NULL),
  (534,1,'176','Warden’s Guidance','You can convey your prey’s location to your allies, no matter how well hidden it is. As long as your hunted prey is observed by you, all your allies who roll failures and critical failures when Seeking it get a success instead. Your allies need to be able to see or hear you to gain this benefit. You have to be able to call out or use gestures for your allies to get this benefit.',NULL,NULL,NULL,NULL),
  (535,1,'176','Greater Distracting Shot','Even a single missile can throw off your enemy’s balance, and more powerful attacks leave it flustered for longer. If you hit your hunted prey with a ranged weapon, it’s flat-footed until the start of your next turn. If you critically hit your prey or hit it twice on the same turn with a ranged weapon, it’s flat-footed until the end of your next turn instead.',NULL,NULL,NULL,NULL),
  (536,1,'176','Improved Twin Riposte (Ranger)','At the start of each of your turns, you gain an additional reaction that you can use only to perform a Twin Riposte against your hunted prey. You can use this extra reaction even if you are not benefiting from Twin Parry.',NULL,NULL,NULL,NULL),
  (537,1,'176','Legendary Monster Hunter','Your knowledge of monsters is so incredible that it reveals glaring flaws in your prey. Your bonus from Monster Hunter (and the bonus from Monster Warden if you have it) increases from +1 to +2 for you and any allies who benefit.',NULL,NULL,NULL,NULL),
  (538,1,'176','Specialized Companion (Ranger)','Your animal companion has become cunning enough to become specialized. Your animal companion gains one specialization of your choice. (See the Animal Companion section on page 214.)',NULL,NULL,NULL,NULL),
  (539,1,'177','Ubiquitous Snares','You can prepare a seemingly impossible number of snares in advance, and you’re ready to spring them on unsuspecting foes. Double the number of prepared snares from Snare Specialist.',NULL,NULL,NULL,NULL),
  (540,1,'177','Impossible Flurry','You forgo precision to attack at an impossible speed. Make three melee Strikes with each of the required weapons. All of these Strikes take the maximum multiple attack penalty, as if you had already made two or more attacks this turn.',3,NULL,NULL,17),
  (542,1,'177','Manifold Edge','You’ve learned every possible edge to use against your foes. When you use Hunt Prey, you can gain a hunter’s edge benefit other than the one you selected at 1st level. If you do, you don’t gain the additional benefit from masterful hunter.',NULL,NULL,NULL,NULL),
  (543,1,'177','Masterful Companion','Your animal companion shares your incredible hunting skills, allowing it to take down your shared prey with ease. When you Hunt Prey, your animal companion gains the masterful hunter benefit associated with your hunter’s edge, rather than just your original hunter’s edge benefit.',NULL,NULL,NULL,NULL),
  (544,1,'177','Perfect Shot','After watching the motions of combat with incredible intensity and precision, you fire at your prey at the perfect moment to deliver maximum pain. Make a ranged Strike with the required weapon against your hunted prey. If you hit, the Strike deals maximum damage. After the Strike, your turn ends.',3,NULL,NULL,53),
  (545,1,'177','Shadow Hunter','You blend in to your surroundings so well that others have trouble telling you apart from the terrain. While in natural terrain, you’re always concealed from all foes if you choose to be, except for your hunted prey.',NULL,NULL,NULL,NULL),
  (546,1,'177','Legendary Shot','You focus on your hunted prey, perceiving angles, air resistance, and every variable that would affect your ranged attack. If you have master proficiency with your ranged weapon, you can ignore the penalty for attacking up to five range increments away when attacking your hunted prey.',NULL,NULL,NULL,NULL),
  (547,1,'177','To the Ends of the Earth','Your ability to track your prey has surpassed explanation, allowing you to trace your prey’s movements and predict its location with ease. When you use Hunt Prey on a creature within 100 feet, you can follow that creature’s movements, allowing you to know the creature’s exact location no matter how far away it becomes, as long as it remains your prey. You must be legendary in Nature to track your prey’s location across teleportation or planar travel. This feat gains the detection, divination, and primal traits if you’re legendary in Nature.',NULL,NULL,NULL,NULL),
  (548,1,'177','Triple Threat','You can divide your attention three ways when hunting. When you use Hunt Prey, you can designate three creatures as prey, designate two creatures as prey and share the effect with one ally (as Shared Prey), or designate one creature as prey and share the effect with two allies.',NULL,NULL,NULL,NULL),
  (549,1,'177','Ultimate Skirmisher','You are so skilled at navigating the wild, your movement is completely unaffected by terrain. You ignore the effects of all difficult terrain, greater difficult terrain, and hazardous terrain, and you don’t trigger traps and hazards that are triggered by moving into an area (such as trip wires and pressure plates), unless you want to.',NULL,NULL,NULL,NULL),
-- Rogue Class Feats
  (550,1,'183','Nimble Dodge','You deftly dodge out of the way, gaining a +2 circumstance bonus to AC against the triggering attack.',5,NULL,39,54),
  (551,1,'183','Trap Finder','You have an intuitive sense that alerts you to the dangers and presence of traps. You gain a +1 circumstance bonus to Perception checks to find traps, to AC against attacks made by traps, and to saves against traps. Even if you aren’t Searching, you get a check to find traps that normally require you to be Searching. You still need to meet any other requirements to find the trap. You can disable traps that require a proficiency rank of master in Thievery. If you have master proficiency in Thievery, you can disable traps that require a proficiency rank of legendary instead, and your circumstance bonuses against traps increase to +2.',NULL,NULL,NULL,NULL),
  (552,1,'183','Twin Feint','You make a dazzling series of attacks with both weapons, using the first attack to throw your foe offguard against a second attack at a different angle. Make one Strike with each of your two melee weapons, both against the same target. The target is automatically flat-footed against the second attack. Apply your multiple attack penalty to the Strikes normally.',2,NULL,NULL,17),
  (553,1,'183','You’re Next','After downing a foe, you menacingly remind another foe that you’re coming after them next. Attempt an Intimidation check with a +2 circumstance bonus to Demoralize a single creature that you can see and that can see you. If you have legendary proficiency in Intimidation, you can use this as a free action with the same trigger.',5,NULL,40,NULL),
  (554,1,'183','Brutal Beating','The brutality of your critical hits shakes your foes’ confidence. Whenever your Strike is a critical hit and deals damage, the target is frightened 1.',NULL,NULL,NULL,NULL),
  (555,1,'183','Distracting Feint','Your Feints are far more distracting than normal, drawing your foes’ attention and allowing you and your allies to take greater advantage. While a creature is flat-footed by your Feint, it also takes a –2 circumstance penalty to Perception checks and Reflex saves.',NULL,NULL,NULL,NULL),
  (556,1,'184','Minor Magic','You’ve dabbled in a variety of tricks, gaining minor magical abilities from a particular tradition. Choose arcane, divine, occult, or primal magic, and gain two cantrips from the common cantrips available to that tradition.',NULL,NULL,NULL,NULL),
  (557,1,'184','Mobility','You move in a way that denies your enemies the opportunity to retaliate. When you take a Stride action to move half your Speed or less, that movement does not trigger reactions. You can use Mobility when Climbing, Flying, or Swimming instead of Striding if you have the corresponding movement type.',NULL,NULL,NULL,NULL),
  (559,1,'184','Unbalancing Blow','Interweaving your most powerful attacks in a graceful fiow, you temporarily unbalance your foes. Whenever your Strike is a critical hit and deals damage, the target is flat-footed against your attacks until the end of your next turn.',NULL,NULL,NULL,NULL),
  (560,1,'184','Battle Assessment','With careful observation during battle, you identify an enemy’s strengths and weaknesses. The GM rolls a secret Perception check for you against the Deception or Stealth DC (whichever is higher) of an enemy of your choice who is not concealed from you, hidden from you, or undetected by you, and who is engaged in combat. The GM might apply a penalty for the distance between you and the enemy. The enemy is then temporarily immune to your Battle Assessment for 1 day.',1,NULL,NULL,NULL),
  (561,1,'184','Dread Striker','You capitalize on your enemies’ fear to slip past their defenses. Any creature that has the frightened condition is also flat-footed against your attacks.',NULL,NULL,NULL,NULL),
  (562,1,'185','Magical Trickster','Whether you’re using magic items, wielding innate magic, or dabbling in spellcasting, you can sneak spells past your foes’ defenses as easily as any blade. When you succeed at a spell attack roll against a flat-footed foe’s AC and the spell deals damage, you can add your sneak attack damage to the damage roll. If your single spell leads to multiple separate damage rolls, apply your sneak attack damage only once per target.',NULL,NULL,NULL,NULL),
  (563,1,'185','Poison Weapon','You apply a poison to the required weapon. If your next attack with that weapon before the end of your next turn hits and deals damage, it applies the effects of the poison, provided that poison can be delivered by contact or injury. If you critically fail the attack roll, the poison is wasted as normal. Special: During your daily preparations, you can prepare a number of simple injury poisons equal to your rogue level. These poisons deal 1d4 poison damage. Only you can apply these poisons properly, and they expire the next time you prepare.',1,NULL,NULL,55),
  (564,1,'185','Reactive Pursuit','You keep pace with a retreating foe. You Stride, but you must end your movement adjacent to the triggering enemy. Your move does not trigger reactions from the triggering enemy. You can use Reactive Pursuit to Burrow, Climb, Fly, or Swim instead of Stride if you have the corresponding movement type.',5,NULL,41,NULL),
  (565,1,'185','Sabotage','You subtly damage others’ equipment. Choose one item that a creature within your reach wields or carries. The item must have moving parts that you could possibly sabotage (a shortbow could be sabotaged, but a longsword could not). Attempt a Thievery check against the Reflex DC of the creature. Damage dealt by Sabotage can’t take the item below its Break Threshold. Critical Success: You deal damage equal to four times your Thievery proficiency bonus.  Success: You deal damage equal to double your Thievery proficiency bonus.  Critical: Failure Temporarily immune to your Sabotage for 1 day.',1,NULL,NULL,56),
  (567,1,'186','Gang Up','You and your allies harry an opponent in concert. Any enemy is flat-footed against your melee attacks due to flanking as long as the enemy is within both your reach and your ally’s. Your allies must still flank an enemy for it to be flat-footed to them.',NULL,NULL,NULL,NULL),
  (568,1,'186','Light Step','You aren’t bothered by tricky footing. When you Stride or Step, you can ignore difficult terrain.',NULL,NULL,NULL,NULL),
  (570,1,'186','Twist the Knife','After stabbing your opponent in a weak spot, you tear the wound open. You deal persistent bleed damage to the target equal to your number of sneak attack damage dice.',1,NULL,NULL,57),
  (572,1,'186','Delay Trap','You can jam the workings of a trap to delay its effects. Attempt a Thievery check to Disable a Device on the trap; the DC to do so is increased by 5, and the effects are as follows.  Critical Success: You prevent the trap from being triggered, or you delay the activation until the start or end of your next turn (your choice).  Success: You prevent the trap from being triggered, or you delay the activation until the end of your next turn (whichever is worse for you; GM’s choice).  Failure: No effect. Critical Failure: You’re flat-footed until the start of your next turn.',5,NULL,42,NULL),
  (573,1,'187','Improved Poison Weapon','You deliver poisons in ways that maximize their harmful effects. When you apply a simple poison with Poison Weapon, the poison deals 2d4 poison damage instead of 1d4 poison damage. You don’t waste a poison you apply with Poison Weapon on a critically failed attack roll.',NULL,NULL,NULL,NULL),
  (574,1,'187','Nimble Roll','You throw yourself into a roll to escape imminent danger. You can use Nimble Dodge before attempting a Reflex save in addition to its original trigger. If you do, the circumstance bonus applies to your Reflex save against the triggering effect.',NULL,NULL,NULL,NULL),
  (575,1,'187','Opportune Backstab','When your enemy is hit by your ally, you capitalize upon the distraction. Make a Strike against the triggering creature.',5,NULL,43,NULL),
  (576,1,'187','Sidestep','You deftly step out of the way of an attack, letting the blow continue to the creature next to you. You redirect the attack to a creature of your choice that is adjacent to you and within the reach of the triggering attack. The attacker rerolls the Strike’s attack roll against the new target.',5,NULL,44,NULL),
  (577,1,'187','Sly Striker','Your attacks deal more damage, even against creatures that aren’t flat-footed. When you succeed or critically succeed at a Strike against a creature that isn’t flat-footed, you also deal 1d6 precision damage. This applies only if you’re using a weapon or unarmed attack you could deal sneak attack damage with. At 14th level, if you would normally deal 3d6 or more sneak attack damage to flat-footed creatures, you deal 2d6 precision damage to creatures that aren’t flat-footed. When you use Nimble Dodge and the triggering attack fails or critically fails, or when you succeed or critically succeed at the saving throw, you can also Stride up to 10 feet as part of the reaction. If you do, the reaction gains the move trait. You can use Nimble Roll while Flying or Swimming instead of Striding if you have the corresponding movement type.',NULL,NULL,NULL,NULL),
  (578,1,'187','Precise Debilitation','You carefully aim and gracefully deliver your debilitations. Add the following debilitations to the list you can choose from when you use Debilitating Strike. Debilitation: The target takes an additional 2d6 precision damage from your attacks. Debilitation: The target becomes flat-footed.',NULL,NULL,NULL,NULL),
  (579,1,'187','Sneak Savant','It is almost impossible to spot you without taking effort to look. When you roll a failure on a Sneak action, you get a success instead. You can still critically fail.',NULL,NULL,NULL,NULL),
  (580,1,'187','Tactical Debilitations','You learn new debilitations that grant you tactical advantages against your foes. Add the following debilitations to the list you can choose from when you use Debilitating Strike.',NULL,NULL,NULL,NULL),
  (581,1,'187','Vicious Debilitations','The debilitations you dish out seriously impair your foes. Add the following debilitations to the list you can choose from when you use Debilitating Strike. Debilitation: The target gains weakness 5 to your choice of bludgeoning, piercing, or slashing damage. Debilitation: The target becomes clumsy 1.',NULL,NULL,NULL,NULL),
  (582,1,'187','Critical Debilitations','Your debilitations are especially effective on your most powerful attacks. Whenever you critically succeed at an attack roll against an enemy and use Debilitating Strike, add the following debilitation to the list you can choose from. Debilitation: The target attempts a Fortitude save against your class DC with the following effects. Critical Success: The target is unaffected.  Success: The target is slowed 1 until the end of your next turn.  Failure: The target is slowed 2 until the end of your next turn.  Critical Failure: The target is paralyzed until the end of your next turn.',NULL,NULL,NULL,NULL),
  (583,1,'188','Fantastic Leap','You launch yourself through the air at a foe. Attempt a High Jump or Long Jump. If you attempt a High Jump, determine the distance you can travel using the scale of a Long Jump. At the end of your jump, you can make a melee Strike. After your Strike, you fall to the ground if you’re in the air. If the distance of your fall is no more than the height of your jump, you take no damage and land upright.',2,NULL,NULL,NULL),
  (584,1,'188','Felling Shot','Your ranged attacks can shoot an unprepared foe right out of the air. Make a Strike with a ranged weapon or a thrown weapon against a flat-footed creature. If the Strike is a success and deals damage, the target must attempt a Reflex save against your class DC with the following effects. Success: The target is unaffected. Failure: The target falls up to 120 feet. If it hits the ground, it takes no damage from the fall. Critical Failure: As failure, and the target can’t fiy, jump, levitate, or otherwise leave the ground until the end of your next turn.',2,NULL,NULL,NULL),
  (585,1,'188','Reactive Interference','Grabbing a sleeve, swiping with your weapon, or creating another obstruction, you reflexively foil an enemy’s response. If the triggering creature’s level is equal to or lower than yours, you disrupt the triggering reaction. If the triggering creature’s level is higher than yours, you must make an attack roll against its AC. On a success, you disrupt the reaction.',5,NULL,45,NULL),
  (586,1,'188','Spring from the Shadows','Leaping out from hiding, you assail your target when they least expect it. You Stride up to your Speed, but you must end your movement next to an enemy you’re hidden from or undetected by. You then Strike that enemy; you remain hidden from or undetected by that creature until after you Strike. You can use Spring from the Shadows while Burrowing, Climbing, Flying, or Swimming instead of Striding if you have the corresponding movement type.',1,NULL,NULL,NULL),
  (587,1,'188','Defensive Roll','Dropping into a roll to disperse the force of the blow, you can partially evade a lethal attack and stay conscious. You take half damage from the triggering attack.',4,4,46,NULL),
  (588,1,'188','Instant Opening','You distract your opponent with a few choice words or a rude gesture. Choose a target within 30 feet. It’s flat-footed against your attacks until the end of your next turn. Depending on the way you describe your distraction, this action gains either the auditory or visual trait.',1,NULL,NULL,NULL),
  (589,1,'188','Leave an Opening','When you hit hard enough, you leave an opening so your ally can jump in on the action. Whenever you critically hit a flat-footed opponent with a melee attack and deal damage, the target triggers an Attack of Opportunity reaction from one ally of your choice who has that reaction, as if the enemy had used a manipulate action.',NULL,NULL,NULL,NULL),
  (590,1,'188','Sense the Unseen (Rogue)','When you look for foes, you can catch even the slightest cues. Even though you failed at the triggering check, you automatically sense any undetected creatures in the area where you’re Seeking, making them merely hidden to you.',5,NULL,38,NULL),
  (591,1,'188','Blank Slate','Your deceptions confound even the most powerful mortal divinations. Detection, revelation, and scrying effects pass right over you, your possessions, and your auras, detecting nothing unless the detecting effect has a counteract level of 20 or higher. For example, detect magic would still detect other magic in the area but not any magic on you, true seeing wouldn’t reveal you, locate or scrying wouldn’t find you, and so on.',NULL,NULL,NULL,NULL),
  (592,1,'188','Cloud Step','Using fantastic acrobatic skill, you can walk for brief stretches across insubstantial surfaces. When you Stride, you can move across water, air, and solid surfaces that can hold only limited weight as if they were normal ground. If you Stride over a trap with a weight-sensitive pressure plate, you don’t trigger it. At the end of your turn, you sink, fall, break fragile surfaces, or trigger traps as normal for your current location.',NULL,NULL,NULL,NULL),
  (593,1,'188','Cognitive Loophole','You can find a loophole in a mental effect to temporarily overcome it. Until the end of your next turn, you ignore a single mental effect that meets the requirement. You can suppress a particular effect using Cognitive Loophole only once. Special You can use this reaction even if the mental effect is preventing you from using reactions.',5,NULL,47,58),
  (594,1,'189','Dispelling Slice','Your sneak attack slices through the threads binding magic to a target. Make a Strike against a flat-footed creature (your choice). If your Strike deals sneak attack damage, you attempt to counteract a single spell active on the target. Your counteract level is equal to your rogue level, and your counteract check modifier is equal to your class DC – 10.',2,NULL,NULL,NULL),
  (595,1,'189','Perfect Distraction','You use clever tactics to mislead your foes as you sneak away. You Sneak while leaving a decoy behind. The decoy acts as the spell mislead, though you aren’t invisible, just undetected. You can continue to concentrate to move your decoy, as with the spell, whether or not you remain hidden throughout the duration. Once you use Perfect Distraction, you need to spend 10 minutes to set up another decoy before you can use it again.',1,NULL,NULL,NULL),
  (596,1,'189','Implausible Infiltration','You find tiny holes or imperfections that no one else could see and try to somehow fit yourself through them, possibly moving directly through the wall or floor from one side to the other. Your movement attempt fails if the wall or floor is made of something other than wood, plaster, or stone; is thicker than 10 feet; or contains even a thin layer of metal. If you have a climb Speed, you can use this ability to attempt to move through a ceiling.',2,NULL,NULL,59),
  (597,1,'189','Powerful Sneak','You have learned to exploit your enemies’ lowered defenses. When you succeed or critically succeed at a Strike using your Strength modifier on the attack roll and you would deal sneak attack damage, you can change the additional damage from sneak attack into ordinary damage of the same type as your Strike, rather than precision damage.',NULL,NULL,NULL,NULL),
  (598,1,'189','Trickster’s Ace','Whether from jury-rigged magic items, stolen magical essence, or other means, you have a contingency in your back pocket for desperate situations. When the trigger occurs, you cause the spell to come into effect. The spell targets only you, no matter how many creatures it would affect normally. If you define particularly complicated conditions, as determined by the GM, the trigger might fail. Once the contingency is triggered, the spell is expended until your next daily preparations.',5,NULL,48,60),
  (599,1,'189','Hidden Paragon','When you put your mind to slipping out of sight, you disappear completely. You become invisible for 1 minute, even if you use a hostile action. Not even glitterdust, see invisibility, or similar effects can reveal you, though creatures can still use the Seek action to locate you as normal.',5,5,49,NULL),
  (600,1,'189','Impossible Striker','Your attacks are swift and deadly beyond explanation. Nothing can prevent you from making a sneak attack, even if your opponent can see every blow coming. Instead of dealing the damage from Sly Striker, you can deal your full sneak attack damage to a target even if the target isn’t flat-footed.',NULL,NULL,NULL,NULL),
  (601,1,'189','Reactive Distraction','You reactively switch with your decoy to foil your foe. You use Perfection Distraction, even if you were observed, as long as you end the movement of your Sneak while concealed or in a location with cover or greater cover. Your decoy is targeted by the attack or effect instead of you. In the case of an area effect, if your Sneak doesn’t move you out of the area, both you and the decoy are targeted by the effect.',5,NULL,50,61),
-- Sorcerer Class Feats
  (602,1,'198','Counterspell (Spontaneous)','When a foe Casts a Spell you know and you can see its manifestations, you can use your own magic to disrupt it. You expend one of your spell slots to counter the triggering creature’s casting of a spell that you have in your repertoire. You lose your spell slot as if you had cast the triggering spell. You then attempt to counteract the triggering spell (page 458). Special This feat has the trait corresponding to the tradition of spells you cast (arcane, divine, natural, or occult).',5,NULL,51,62),
  (603,1,'198','Dangerous Sorcery','Your legacy grants you great destructive power. When you Cast a Spell from your spell slots, if the spell deals damage and doesn’t have a duration, you gain a status bonus to that spell’s damage equal to the spell’s level.',NULL,NULL,NULL,NULL),
  (604,1,'198','Familiar (Sorcerer)','An animal serves you and assists your spellcasting. You gain a familiar (rules for familiars arefound on page 217).',NULL,NULL,NULL,NULL),
  (607,1,'198','Cantrip Expansion (Sorcerer)','You better understand the basic power of your bloodline. Add two additional cantrips from your spell list to your repetoire.',NULL,NULL,NULL,NULL),
  (608,1,'198','Enhanced Familiar (Sorcerer)','You infuse your familiar with additional magical energy. You can select four familiar or master abilities each day, instead of two.',NULL,NULL,NULL,NULL),
  (609,1,'199','Arcane Evolution','Your arcane legacy grants you an exceptional aptitude for intellectual and academic pursuits. You become trained in one skill of your choice. Additionally, you keep a book of arcane spells similar to a wizard’s spellbook. You add all the spells in your spell repertoire to this book for free, and you can add additional arcane spells to the book by paying the appropriate cost and using your Arcana skill, similarly to how a wizard can Learn Spells to add those spells to his spellbook. During your daily preparations, choose any one spell from your book of arcane spells. If it isn’t in your spell repertoire, add it to your spell repertoire until the next time you prepare. If it’s already in your spell repertoire, add it as an additional signature spell for that day.',NULL,NULL,NULL,NULL),
  (610,1,'199,210','Bespell Weapon','You siphon the residual energy from the last spell you cast into one weapon you’re wielding. Until the end of your turn, the weapon deals an extra 1d6 damage of a type depending on the school of the spell you just cast. Abjuration: force damage, Conjuration or Transmutation: the same type as the weapon, Divination, Enchantment, or Illusion: mental damage, Evocation: a type the spell dealt, or force damage if the spell didn’t deal damage, Necromancy: negative damage',4,2,NULL,63),
  (611,1,'199','Divine Evolution','The divine might provided by your bloodline fiows through you. You gain an additional spell slot of your highest level, which you can use only to cast your choice of heal or harm. You can cast either of these spells using that spell slot, even if they aren’t in your spell repertoire.',NULL,NULL,NULL,NULL),
  (612,1,'199','Occult Evolution','Glimpses of the obscure secrets of the universe loan you power. You become trained in one skill of your choice. Additionally, once per day, you can spend 1 minute to choose one mental occult spell you don’t know and add it to your spell repertoire. You lose this temporary spell the next time you make your daily preparations (though you can use this ability to add it again later).',NULL,NULL,NULL,NULL),
  (613,1,'199','Primal Evolution','You can call upon the creatures of the wild for aid. You gain an additional spell slot of your highest level, which you can use only to cast summon animal or summon plants and fungi. You can cast either of these spells using that spell slot, even if it they aren’t in your spell repertoire.',NULL,NULL,NULL,NULL),
  (614,1,'200','Advanced Bloodline','You have studied your bloodline to learn the secrets of its magic. You gain the advanced bloodline spell associated with your bloodline. Increase the number of Focus Points in your focus pool by 1.',NULL,NULL,NULL,NULL),
  (615,1,'200','Steady Spellcasting (Sorcerer)','You are confident in your spellcasting technique, and you are more easily able to retain your concentration when you Cast a Spell. If a reaction would disrupt your spellcasting action, attempt a DC 15 fiat check. If you succeed, your action isn’t disrupted.',NULL,NULL,NULL,NULL),
  (616,1,'200','Bloodline Resistance','Your magical blood makes you more resistant to magic. You gain a +1 status bonus to saving throws against spells and magical effects.',NULL,NULL,NULL,NULL),
  (617,1,'200','Crossblooded Evolution','Odd interactions in your bloodline provide you with unexpected spells. You can have one spell in your spell repertoire from a tradition other than the one that matches your bloodline. You cast that spell as a spell from your bloodline’s tradition. You can swap which spell you add and from which tradition as you could any other sorcerer spell, but you can’t have more than one spell from another tradition in your spell repertoire at the same time using this feat.',NULL,NULL,NULL,NULL),
  (618,1,'200','Greater Bloodline','Further communion with the legacy of your bloodline has uncovered greater secrets. You gain the greater bloodline spell associated with your bloodline. Increase the number of Focus Points in your focus pool by 1.',NULL,NULL,NULL,NULL),
  (619,1,'200','Overwhelming Energy (Sorcerer)','You alter your spells to overcome resistances. If the next action you use is to Cast a Spell, the spell ignores an amount of the target’s resistance to acid, cold, electricity, fire, or sonic damage equal to your level. This applies to all damage the spell deals, including persistent damage and damage caused by an ongoing effect of the spell, such as the wall created by wall of fire. A creature’s immunities are unaffected.',1,NULL,NULL,NULL),
  (620,1,'201','Quickened Casting (Sorcerer)','In a mentally strenuous process, you modify the casting of a spell to take less time. If your next action is to cast a Sorcerer cantrip or a Sorcerer spell that is at least 2 levels lower than the highest level Sorcerer spell you can cast, reduce the number of actions to cast it by 1 (minimum 1 action).',NULL,NULL,NULL,NULL),
  (621,1,'201','Bloodline Focus','Your focus recovers faster. If you have spent at least 2 Focus Points since the last time you Refocused, you recover 2 Focus Points when you Refocus instead of 1.',NULL,NULL,NULL,NULL),
  (622,1,'201','Magic Sense','You have a literal sixth sense for ambient magic in your vicinity. You can sense the presence of magic auras as though you were always using a 1st-level detect magic spell. This detects magic in your field of vision only. When you Seek, you gain the benefits of a 3rd-level detect magic spell on things you see (in addition to the normal benefits of Seeking). You can turn this sense off and on with a free action at the start or the end of your turn. Special (Wizard) This feat has the Arcane trait.',NULL,NULL,NULL,NULL),
  (623,1,'201','Interweave Dispel','You weave dispelling energy into a spell, sending both effects at a foe. If your next action is to cast a single-target spell against a creature, and you either hit the foe with the spell attack roll or the foe fails its saving throw, you can cast dispel magic on the foe as a free action, expending a spell slot as normal and targeting one spell effect affecting the foe.',1,NULL,NULL,NULL),
  (624,1,'201','Reflect Spell','When you successfully use Counterspell to counteract a spell that affects targeted creatures or an area, you can turn that spell’s effect back on its caster. When reflected, the spell affects only the original caster, even if it’s an area spell or it would normally affect more than one creature. The original caster can attempt a save and use other defenses against the reflected spell as normal.',NULL,NULL,NULL,NULL),
  (626,1,'201','Greater Mental Evolution','Your bloodline’s deep connection to mental essence greatly enhances your spell repertoire. Add one spell to your spell repertoire for each spell level you can cast.',NULL,NULL,NULL,NULL),
  (627,1,'201','Greater Vital Evolution','Vital power surges through you like a font of energy. Twice per day, you can cast a spell after you’ve run out of spell slots of the appropriate spell level; the two spells you cast with this feat must be of different spell levels.',NULL,NULL,NULL,NULL),
  (628,1,'201','Bloodline Wellspring','Your blood’s power replenishes your focus. If you have spent at least 3 Focus Points since the last time you Refocused, you recover 3 Focus Points when you Refocus instead of 1.',NULL,NULL,NULL,NULL),
  (629,1,'201','Greater Crossblooded Evolution','Your bloodline is extraordinarily complex. You can have up to three spells from other traditions in your spell repertoire, rather than just one. These spells must each be of a different spell level, but they don’t need to be from the same tradition.',NULL,NULL,NULL,NULL),
  (630,1,'201','Bloodline Conduit','Your inborn magical nature lets you redirect ambient energies to fuel your spells. If your next action is to Cast a Spell of 5th level or lower that has no duration, you don’t expend the spell’s slot when you cast it.',1,3,NULL,NULL),
  (631,1,'201','Bloodline Perfection','You command the ultimate powers of your bloodline and tradition. You gain an additional 10th-level spell slot.',NULL,NULL,NULL,NULL),
  (632,1,'201','Metamagic Mastery','Altering your spells doesn’t take any longer than casting them normally. You can use metamagic single actions as free actions.',NULL,NULL,NULL,NULL),
-- Wizard Class Feats
  (633,1,'209','Counterspell (Prepared)','When a foe Casts a Spell and you can see its manifestations, you can use your own magic to disrupt it. You expend a prepared spell to counter the triggering creature’s casting of that same spell. You lose your spell slot as if you had cast the triggering spell. You then attempt to counteract the triggering spell (page 458).',5,NULL,52,NULL),
  (634,1,'209','Eschew Materials','You can use clever workarounds to replicate the arcane essence of certain materials. When Casting a Spell that requires material components, you can provide these material components without a spell component pouch by drawing intricate replacement sigils in the air. Unlike when providing somatic components, you still must have a hand completely free. This doesn’t remove the need for any materials listed in the spell’s cost entry.',NULL,NULL,NULL,NULL),
  (635,1,'209','Familiar (Wizard)','You make a pact with creature that serves you and assists your spellcasting. You gain a familiar (page 217).',NULL,NULL,NULL,NULL),
  (636,1,'209','Hand of the Apprentice','You can magically hurl your weapon at your foe. You gain the hand of the apprentice universalist spell. Universalist spells are a type of focus spell, much like school spells. You start with a focus pool of 1 Focus Point. See Arcane Schools on page 207 for more information about focus spells.',NULL,NULL,NULL,NULL),
  (639,1,'210','Cantrip Expansion (Wizard)','Dedicated study allows you to prepare a wider range of simple spells. You can prepare two additional cantrips each day.',NULL,NULL,NULL,NULL),
  (640,1,'210','Conceal Spell','Hiding your gestures and incantations within other speech and movement, you attempt to conceal the fact that you are Casting a Spell. If the next action you use is to Cast a Spell, attempt a Stealth check against one or more observers’ Perception DCs; if the spell has verbal components, you must also attempt a Deception check against the observers’ Perception DC. If you succeed at your check (or checks) against an observer’s DC, that observer doesn’t notice you’re casting a spell, even though material, somatic, and verbal components are usually noticeable and spells normally have sensory manifestations that would make spellcasting obvious to those nearby. This ability hides only the spell’s spellcasting actions and manifestations, not its effects, so an observer might still see a ray streak out from you or see you vanish into thin air.',1,NULL,NULL,NULL),
  (641,1,'210','Enhanced Familiar (Wizard)','You infuse your familiar with additional magical energy. You can select four familiar or master abilities each day, instead of two. Special If your arcane thesis is improved familiar attunement, your familiar’s base number of familiar abilities, before adding any extra abilities from the arcane thesis is four.',NULL,NULL,NULL,NULL),
  (643,1,'210','Linked Focus','You have linked your bonded item to the well of energy that powers your school spells. When you Drain your Bonded Item to cast a spell of your arcane school, you also regain 1 Focus Point.',NULL,6,NULL,NULL),
  (644,1,'210','Silent Spell','You’ve learned how to cast many of your spells without speaking the words of power you would normally need to provide. If the next action you use is Casting a Spell that has a verbal component and at least one other component, you can remove the verbal component. This makes the spell quieter and allows you to cast it in areas where sound can’t carry. However, the spell still has visual manifestations, so this doesn’t make the spell any less obvious to someone who sees you casting it. When you use Silent Spell, you can choose to gain the benefits of Conceal Spell, and you don’t need to attempt a Deception check because the spell has no verbal components.',1,NULL,NULL,NULL),
  (645,1,'210','Spell Penetration','You’ve studied ways of overcoming the innate magical resistance that dragons, otherworldly beings, and certain other powerful creatures have. Any creature that has a status bonus to saving throws against magic reduces that bonus by 1 against your spells.',NULL,NULL,NULL,NULL),
  (647,1,'211','Advanced School Spell','You gain access to a powerful new school spell depending on your arcane school. If you’re an abjurer, you gain energy absorption; if you’re a conjurer, you gain dimensional steps; if you’re a diviner, you gain vigilant eye; if you’re an enchanter, you gain dread aura; if you’re an evoker, you gain elemental tempest; if you’re an illusionist, you gain invisibility cloak; if you’re a necromancer, you gain life siphon; and if you’re a transmuter, you gain shifting form. Increase the number of Focus Points in your focus pool by 1.',NULL,NULL,NULL,NULL),
  (648,1,'211','Bond Conservation','By carefully manipulating the arcane energies stored in your bonded item as you drain it, you can conserve just enough power to cast another, slightly weaker spell. If the next action you use is to Cast a Spell using the energy from Drain Bonded Item, you gain an extra use of Drain Bonded Item. You must use this extra use of Drain Bonded Item before the end of your next turn or you lose it, and you can use this additional use only to cast a spell 2 or more levels lower than the first spell cast with Drain Bonded Item.',1,NULL,NULL,64),
  (649,1,'211','Universal Versatility','You can access the fundamental abilities of any school of magic. During your daily preparations, choose one of the eight school spells gained by 1st-level specialist wizards. You can use that school spell until your next daily preparations. When you Refocus, you can choose a different school spell from among those eight school spells, replacing the previous one. Increase the number of Focus Points in your focus pool by 1.',NULL,NULL,NULL,NULL),
  (650,1,'211','Overwhelming Energy (Wizard)','With a complex gesture, you alter the energy of your spell to overcome resistances. If the next action you use is to Cast a Spell, the spell ignores an amount of the target’s resistance to acid, cold, electricity, fire, or sonic damage equal to your level. This applies to all damage the spell deals, including persistent damage and damage caused by an ongoing effect of the spell, such as the wall created by wall of fire. A creature’s immunities are unaffected.',1,NULL,NULL,NULL),
  (651,1,'211','Quickened Casting (Wizard)','In a mentally strenuous process, you modify the casting of a spell to take less time. If your next action is to cast a Wizard cantrip or a Wizard spell that is at least 2 levels lower than the highest level Wizard spell you can cast, reduce the number of actions to cast it by 1 (minimum 1 action).',NULL,NULL,NULL,NULL),
  (652,1,'211','Scroll Savant','During your daily preparations, you can create two temporary scrolls containing arcane spells from your spellbook. These scrolls follow the normal rules for scrolls (page 564), with some additional restrictions. Each scroll must be of a different spell level, and both spell levels must be 2 or more levels lower than your highest-level spell. Any scrolls you create this way become non-magical the next time you make your daily preparations. A temporary scroll has no value. If you have master proficiency in arcane spell DCs, you can create three temporary scrolls during your daily preparations, and if you have legendary proficiency, you can create four temporary scrolls.',NULL,NULL,NULL,NULL),
  (653,1,'211','Clever Counterspell','You creatively apply your prepared spells to Counterspell a much wider variety of your opponents’ magic. Instead of being able to counter a foe’s spell with Counterspell only if you have that same spell prepared, you can use Counterspell as long as you have the spell the foe is casting in your spellbook. When you use Counterspell in this way, the prepared spell you expend must share a trait other than its tradition with the triggering spell. At the GM’s discretion, you can instead use a spell that has an opposing trait or that otherwise logically would counter the triggering spell (such as using a cold or water spell to counter fireball or using remove fear to counter a fear spell). Regardless of what spell you expend, you take a –2 penalty to your counteract check, though the GM can waive this penalty if the expended spell is especially appropriate.',NULL,NULL,NULL,NULL),
  (655,1,'211','Bonded Focus','Your connection to your bonded item increases your focus pool. If you have spent at least 2 Focus Points since the last time you Refocused and your bonded item is in your possession, you recover 2 Focus Points when you Refocus instead of 1.',NULL,NULL,NULL,NULL),
  (657,1,'212','Superior Bond','When you draw upon your bonded item, you can leave a bit of energy within it for later use. You can use Drain Bonded Item one additional time per day, but only to cast a spell 2 or more levels lower than your highest-level spell.',NULL,NULL,NULL,NULL),
  (659,1,'212','Spell Tinker','You’ve learned to alter choices you make when casting spells on yourself. After casting a spell on only yourself that offers several choices of effect (such as resist energy, spell immunity, or a polymorph spell that offers several potential forms), you can alter the choice you made when Casting the Spell (for instance, choosing a different type of damage for resist energy). However, your tinkering weakens the spell’s integrity, reducing its remaining duration by half. You can’t use this feat if the benefits of the spell have already been used up or if the effects of the first choice would persist in any way after switching (for instance, if one of the choices was to create a consumable item you already used, or to heal you), or if the feat would create an effect more powerful than that offered by the base spell. The GM is the final arbiter of what Spell Tinker can be applied to.',2,NULL,NULL,NULL),
  (660,1,'212','Infinite Possibilities','You’ve found a way to prepare a spell slot that exists in your mind as many different possibilities at once. Once during your daily preparations, you can use a spell slot to hold that infinite potential, rather than using it to prepare a spell. You can use this spell slot to cast any spell from your spellbook that’s at least 2 levels lower than the slot you designate; the spell acts in all ways as a spell of 2 levels lower. You don’t have any particular spell prepared in that slot until you cast it.',NULL,NULL,NULL,NULL),
  (661,1,'212','Reprepare Spell','You’ve discovered how to reuse some of your spell slots over and over. You can spend 10 minutes to prepare a spell that you already cast today, regaining access to that spell slot. The spell must be of 4th level or lower and one that does not have a duration. You can reprepare a spell in this way even if you’ve already reprepared that spell previously in the same day. If you have the spell substitution arcane thesis, you can instead prepare a different spell in an expended slot, as long as the new spell doesn’t have a duration. Once you’ve reprepared a spell in that slot even once, you can use your arcane thesis to substitute only spells without durations into that spell slot.',NULL,NULL,NULL,NULL),
  (662,1,'212','Archwizard’s Might','You have mastered the greatest secrets of arcane magic. You gain an additional 10th-level spell slot.',NULL,NULL,NULL,NULL),
  (664,1,'212','Spell Combination','You can merge spells, producing multiple effects with a single casting. One slot of each level of spell you can cast, except 2nd level and 1st level, becomes a spell combination slot (this doesn’t apply to cantrips). When you prepare your spells, you can fill a combination slot with a combination of two spells. Each spell in the combination must be 2 or more spell levels below the slot’s level, and both must target only one creature or object or have the option to target only one creature or object. Each spell in the combination must also have the same means of determining whether it has an effect—both spells must require a ranged spell attack roll, require the same type of saving throw, or automatically affect the target. When you cast a combined spell, it affects only one target, even if the component spells normally affect more than one. If any spell in the combination has further restrictions (such as targeting only living creatures), you must abide by all restrictions. The combined spell uses the shorter of the component spells’ ranges. Resolve a combined spell as if were a single spell, but apply the effects of both component spells. For example, if the spell’s target succeeded at the save against a combined spell, it would apply the success effect of each spell, and if it critically failed, it would apply the critical failure effect of both spells.',NULL,NULL,NULL,NULL),
-- Alchemist Dedication Feats
  (665,1,'220','Alchemist Dedication','You put your alchemical interest into practice. You become trained in alchemical bombs and Crafting; if you were already trained in Crafting, you instead become trained in a skill of your choice. You become trained in alchemist class DC.',NULL,NULL,NULL,NULL),
  (666,1,'220','Basic Concoction','You gain a 1st- or 2nd-level alchemist feat.',NULL,NULL,NULL,NULL),
  (667,1,'220','Quick Alchemy','You gain the Quick Alchemy action.',NULL,NULL,NULL,NULL),
  (668,1,'220','Advanced Conoction','You gain one alchemist feat. For the purpose of meeting its prerequisites, your alchemist level is equal to half your character level.',NULL,NULL,NULL,NULL),
  (669,1,'220','Expert Alchemy','Your advanced alchemy level increases to 3. At 10th level, it increases to 5.',NULL,NULL,NULL,NULL),
  (670,1,'220','Mastery Alchemy','Your advanced alchemy level increases to 7. For every level you gain beyond 12th, your advanced alchemy level increases by 1.',NULL,NULL,NULL,NULL),
-- Barbarian Dedication Feats
  (671,1,'221','Barbarian Dedication','You become trained in Athletics; if you were already trained in Athletics, you instead become trained in a skill of your choice. You become trained in barbarian class DC. You can use the Rage action.',NULL,NULL,NULL,NULL),
  (672,1,'221','Barbarian Resiliency','You gain 3 additional Hit Points for each barbarian archetype class feat you have. As you continue selecting barbarian archetype class feats, you continue to gain additional Hit Points in this way.',NULL,NULL,NULL,NULL),
  (673,1,'221','Basic Fury','You gain a 1st- or 2nd-level barbarian feat.',NULL,NULL,NULL,NULL),
  (674,1,'221','Advanced Fury','You gain one barbarian feat. For the purpose of meeting its prerequisites, your barbarian level is equal to half your character level.',NULL,NULL,NULL,NULL),
  (675,1,'221','Instinct Ability','You gain the instinct ability for the instinct you chose for Barbarian Dedication.',NULL,NULL,NULL,NULL),
  (676,1,'221','Juggernaut’s Fortitude','Your proficiency rank in Fortitude saves increases to master.',NULL,NULL,NULL,NULL),
-- Bard Dedication Feats
  (677,1,'222','Bard Dedication','You cast spells like a bard and gain the Cast a Spell activity. You gain a spell repertoire with two common cantrips from the occult spell list, or any other cantrips you learn or discover. You’re trained in spell attack rolls and spell DCs for occult spells. Your key spellcasting ability for bard archetype spells is Charisma, and they are occult bard spells. You become trained in Occultism and Performance; for each of these skills in which you were already trained, you instead become trained in a skill of your choice.',NULL,NULL,NULL,NULL),
  (678,1,'222','Basic Bard Spellcasting','You gain the basic spellcasting benefits (page 219). Each time you gain a spell slot of a new level from the bard archetype, add a common occult spell or another spell you learned or discovered to your repertoire, of the appropriate spell level.',NULL,NULL,NULL,NULL),
  (679,1,'222','Basic Muse’s Whispers','You gain a 1st- or 2nd-level bard feat.',NULL,NULL,NULL,NULL),
  (680,1,'222','Advanced Muse’s Whispers','You gain one bard feat. For the purpose of meeting its prerequisites, your bard level is equal to half your character level.',NULL,NULL,NULL,NULL),
  (681,1,'222','Counter Perform','You gain the counter performance composition spell. If you don’t already have one, you gain a focus pool of 1 Focus Point, which you can Refocus by engaging your muse. (For more on composition spells, see page 97.)',NULL,NULL,NULL,NULL),
  (682,1,'222','Inspirational Performance','You gain the inspire courage composition cantrip.',NULL,NULL,NULL,NULL),
  (683,1,'222','Occult Breadth','Your repertoire expands, and you can cast more occult spells each day. Increase the number of spells in your repertoire and the number of spell slots you gain from bard archetype feats by 1 for each spell level other than your two highest spell levels.',NULL,NULL,NULL,NULL),
  (684,1,'222','Expert Bard Spellcasting','You gain the expert spellcasting benefits.',NULL,NULL,NULL,NULL),
  (685,1,'222','Master Bard Spellcasting','You gain the master spellcasting benefits.',NULL,NULL,NULL,NULL),
-- Champion Dedication Feats
  (686,1,'223','Champion Dedication','Choose a deity and cause as you would if you were a champion. You become trained in light, medium, and heavy armor. You become trained in Religion and your deity’s associated skill; for each of these skills in which you were already trained, you instead become trained in a skill of your choice. You become trained in champion class DC.',NULL,NULL,NULL,NULL),
  (687,1,'223','Basic Devotion','You gain a 1st- or 2nd-level champion feat.',NULL,NULL,NULL,NULL),
  (688,1,'223','Champion Resiliencey','You gain 3 additional Hit Points for each champion archetype class feat you have. As you continue selecting champion archetype class feats, you continue to gain additional Hit Points in this way.',NULL,NULL,NULL,NULL),
  (689,1,'223','Healing Touch','You gain the appropriate devotion spell for your cause ( lay on hands for the paladin, redeemer, and liberator). If you don’t already have one, you gain a focus pool of 1 Focus Point, which you can Refocus by praying or serving your deity. (For more on devotion spells, see page 107.)',NULL,NULL,NULL,NULL),
  (690,1,'223','Advanced Devotion','You gain one champion feat. For the purpose of meeting its prerequisites, your champion level is equal to half your character level.',NULL,NULL,NULL,NULL),
  (691,1,'223','Champion’s Reaction','You can use the champion’s reaction associated with your cause.',NULL,NULL,NULL,NULL),
  (692,1,'223','Divine Ally','You gain a divine ally of your choice (page 108).',NULL,NULL,NULL,NULL),
  (693,1,'223','Diverse Armor Expert','Your proficiency ranks for light armor, medium armor, heavy armor, and unarmored defense increase to expert.',NULL,NULL,NULL,NULL),
-- Cleric Dedication Feats
  (694,1,'224','Cleric Dedication','You cast spells like a cleric. You gain access to the Cast a Spell activity. You can prepare two common cantrips each day from the divine spell list in this book or any other cantrips you learn or discover. You’re trained in spell attack rolls and spell DCs for divine spells. Your key spellcasting ability for cleric archetype spells is Wisdom, and they are divine cleric spells. Choose a deity as you would if you were a cleric. You become bound by that deity’s anathema. You become trained in Religion and your deity’s associated skill; for each of these skills in which you were already trained, you instead become trained in a skill of your choice. You don’t gain any other abilities from your choice of deity.',NULL,NULL,NULL,NULL),
  (695,1,'224','Basic Cleric Spellcasting','You gain the basic spellcasting benefits. You can prepare your deity’s spells in your spell slots of the appropriate level from the cleric archetype.',NULL,NULL,NULL,NULL),
  (696,1,'224','Basic Dogma','You gain a 1st- or 2nd-level cleric feat.',NULL,NULL,NULL,NULL),
  (697,1,'224','Advanced Dogma','You gain one cleric feat. For the purpose of meeting its prerequisites, your cleric level is equal to half your character level.',NULL,NULL,NULL,NULL),
  (698,1,'224','Divine Breadth','You can cast more divine spells each day. Increase the spell slots you gain from cleric archetype feats by 1 for each spell level other than your two highest spell levels.',NULL,NULL,NULL,NULL),
  (699,1,'224','Expert Cleric Spellcasting','You gain the expert spellcasting benefits.',NULL,NULL,NULL,NULL),
  (700,1,'224','Master Cleric Spellcasting','You gain the master spellcasting benefits.',NULL,NULL,NULL,NULL),
-- Druid Dedication Feats
  (701,1,'225','Druid Dedication','You cast spells like a druid. You gain access to the Cast a Spell activity. You can prepare two common cantrips each day from the primal spell list in this book or any other cantrips you learn or discover. You’re trained in spell attack rolls and spell DCs for primal spells. Your key spellcasting ability for druid archetype spells is Wisdom, and they are primal druid spells. You learn the Druidic language.',NULL,NULL,NULL,NULL),
  (702,1,'225','Basic Druid Spellcasting','You gain the basic spellcasting benefits.',NULL,NULL,NULL,NULL),
  (703,1,'225','Basic Wilding','You gain a 1st- or 2nd-level druid feat.',NULL,NULL,NULL,NULL),
  (704,1,'225','Order Spell','You gain the initial order spell from your order. If you don’t already have one, you gain a focus pool of 1 Focus Point, which you can Refocus by being one with nature. (For more on order spells, see page 131.)',NULL,NULL,NULL,NULL),
  (705,1,'225','Advanced Wilding','You gain one druid feat. For the purpose of meeting its prerequisites, your druid level is equal to half your character level.',NULL,NULL,NULL,NULL),
  (706,1,'225','Primal Breadth','Increase the spell slots you gain from druid archetype feats by 1 for each spell level other than your two highest spell levels.',NULL,NULL,NULL,NULL),
  (707,1,'225','Expert Druid Spellcasting','You gain the expert spellcasting benefits.',NULL,NULL,NULL,NULL),
  (708,1,'225','Master Druid Spellcasting','You gain the master spellcasting benefits.',NULL,NULL,NULL,NULL),
-- Fighter Dedication Feats
  (709,1,'226','Fighter Dedication','You become trained in simple weapons and martial weapons. You become trained in your choice of Acrobatics or Athletics; if you are already trained in both of these skills, you instead become trained in a skill of your choice. You become trained in fighter class DC. Special You cannot select another dedication feat until you have gained two other feats from the fighter archetype.',NULL,NULL,NULL,NULL),
  (710,1,'226','Basic Maneuver','You gain a 1st- or 2nd-level fighter feat.',NULL,NULL,NULL,NULL),
  (711,1,'226','Fighter Resiliency','You gain 3 additional Hit Points for each fighter archetype class feat you have. As you continue selecting fighter archetype class feats, you continue to gain additional Hit Points in this way.',NULL,NULL,NULL,NULL),
  (712,1,'226','Opportunist','You gain the Attack of Opportunity reaction.',NULL,NULL,NULL,NULL),
  (713,1,'226','Advanced Maneuver','You gain a fighter feat. For the purpose of meeting its prerequisites, your fighter level is equal to half your character level.',NULL,NULL,NULL,NULL),
  (714,1,'226','Diverse Weapon Expert','Your proficiency ranks for simple weapons and martial weapons increase to expert, and your proficiency rank for advanced weapons increases to trained.',NULL,NULL,NULL,NULL),
-- Monk Dedication Feats
  (715,1,'227','Monk Dedication','You become trained in unarmed attacks and gain the powerful fist class feature (page 156). You become trained in your choice of Acrobatics or Athletics; if you are already trained in both of these skills, you become trained in a skill of your choice. You become trained in monk class DC.',NULL,NULL,NULL,NULL),
  (716,1,'227','Basic Kata','You gain a 1st- or 2nd-level monk feat.',NULL,NULL,NULL,NULL),
  (717,1,'227','Monk Resiliency','You gain 3 additional Hit Points for each monk archetype class feat you have. As you continue selecting monk archetype class feats, you continue to gain additional Hit Points in this way.',NULL,NULL,NULL,NULL),
  (718,1,'227','Advanced Kata','You gain one monk feat. For the purpose of meeting its prerequisites, your monk level is equal to half your character level.',NULL,NULL,NULL,NULL),
  (719,1,'227','Monk Moves','You gain a +10-foot status bonus to your Speed when you’re not wearing armor.',NULL,NULL,NULL,NULL),
  (720,1,'227','Monk’s Flurry','You gain the Flurry of Blows action.',NULL,NULL,NULL,NULL),
  (721,1,'227','Perfection’s Path','Choose one saving throw (Fortitude, Reflex, or Will) in which you are an expert. Your proficiency rank in the chosen saving throw increases to master.',NULL,NULL,NULL,NULL),
-- Ranger Dedication Feats
  (722,1,'228','Ranger Dedication','You become trained in Survival; if you were already trained in Survival, you instead become trained in another skill of your choice. You become trained in ranger class DC. You can use the Hunt Prey action.',NULL,NULL,NULL,NULL),
  (723,1,'228','Basic Hunter’s Trick','You gain a 1st- or 2nd-level ranger feat.',NULL,NULL,NULL,NULL),
  (724,1,'228','Ranger Resiliency','You gain 3 additional Hit Points for each ranger archetype class feat you have. As you continue selecting ranger archetype class feats, you continue to gain additional Hit Points in this way.',NULL,NULL,NULL,NULL),
  (725,1,'228','Advanced Hunter’s Trick','You gain one ranger feat. For the purpose of meeting its prerequisites, your ranger level is equal to half your character level.',NULL,NULL,NULL,NULL),
  (726,1,'228','Master Spotter','Your proficiency rank in Perception increases to master.',NULL,NULL,NULL,NULL),
-- Rogue Dedication Feats
  (727,1,'229','Rogue Dedication','You gain a skill feat and the rogue’s surprise attack class feature (page 181). You become trained in light armor. In addition, you become trained in Stealth or Thievery plus one skill of your choice; if you are already trained in both Stealth and Thievery, you become trained in an additional skill of your choice. You become trained in rogue class DC.',NULL,NULL,NULL,NULL),
  (728,1,'229','Basic Trickery','You gain a 1st- or 2nd-level rogue feat.',NULL,NULL,NULL,NULL),
  (729,1,'229','Sneak Attacker','You gain the sneak attack class feature (page 181), except it deals 1d4 damage, increasing to 1d6 at 6th level. You don’t increase the number of dice as you gain levels.',NULL,NULL,NULL,NULL),
  (730,1,'229','Advanced Trickery','You gain one rogue feat. For the purpose of meeting its prerequisites, your rogue level is equal to half your character level.',NULL,NULL,NULL,NULL),
  (731,1,'229','Skill Mastery','Increase your proficiency rank in one of your skills from expert to master and in another of your skills from trained to expert. You gain a skill feat associated with one of the skills you chose.',NULL,NULL,NULL,NULL),
  (732,1,'229','Uncanny Dodge','You gain the deny advantage class feature (page 181).',NULL,NULL,NULL,NULL),
  (733,1,'229','Evasiveness','Your proficiency rank for Reflex saves increases to master.',NULL,NULL,NULL,NULL),
-- Sorcerer Dedication Feats
  (734,1,'230','Sorcerer Dedication','Choose a bloodline. You become trained in the bloodline’s two skills; for each of these skills in which you were already trained, you become trained in a skill of your choice. You cast spells like a sorcerer. You gain access to the Cast a Spell activity. You gain a spell repertoire with two common cantrips from the spell list associated with your bloodline, or any other cantrips you learn or discover. You’re trained in spell attack rolls and spell DCs for your tradition’s spells. Your key spellcasting ability for sorcerer archetype spells is Charisma, and they are sorcerer spells of your bloodline’s tradition. You don’t gain any other abilities from your choice of bloodline.',NULL,NULL,NULL,NULL),
  (735,1,'230','Basic Sorcerer Spellcasting','You gain the basic spellcasting benefits. Each time you gain a spell slot of a new level from the sorcerer archetype, add a spell of the appropriate spell level to your repertoire: a common spell of your bloodline’s tradition, one of your bloodline’s granted spells, or another spell you have learned or discovered.',NULL,NULL,NULL,NULL),
  (736,1,'230','Basic Blood Potency','You gain a 1st- or 2nd-level sorcerer feat.',NULL,NULL,NULL,NULL),
  (737,1,'230','Basic Bloodline Spell','You gain your bloodline’s initial bloodline spell. If you don’t already have one, you also gain a focus pool of 1 Focus Point, which you can Refocus without any special effort. (For more on bloodline spells, see page 194.)',NULL,NULL,NULL,NULL),
  (738,1,'230','Advanced Blood Potency','You gain one sorcerer feat. For the purpose of prerequisites, your sorcerer level is half your character level.',NULL,NULL,NULL,NULL),
  (739,1,'230','Bloodline Breadth','Your repertoire expands, and you can cast more spells of your bloodline’s tradition each day. Increase the number of spells in your repertoire and number of spell slots you gain from sorcerer archetype feats by 1 for each spell level other than your two highest spell levels.',NULL,NULL,NULL,NULL),
  (740,1,'230','Expert Sorcerer Spellcasting','You gain the expert spellcasting benefits.',NULL,NULL,NULL,NULL),
  (741,1,'230','Master Sorcerer Spellcasting','You gain the master spellcasting benefits.',NULL,NULL,NULL,NULL),
-- Wizard Dedication Feats
  (742,1,'231','Wizard Dedication','You cast spells like a wizard, gaining a spellbook with four common arcane cantrips of your choice. You gain the Cast a Spell activity. You can prepare two cantrips each day from your spellbook. You’re trained in arcane spell attack rolls and spell DCs. Your key spellcasting ability for wizard archetype spells is Int, and they are arcane wizard spells. You become trained in Arcana; if you were already trained in Arcana, you instead become trained in a skill of your choice.',NULL,NULL,NULL,NULL),
  (743,1,'231','Arcane School Spell','Select one arcane school of magic. You gain the school’s initial school spell. If you don’t already have one, you gain a focus pool of 1 Focus Point, which you can Refocus by studying. (For more on arcane schools, see page 204.)',NULL,NULL,NULL,NULL),
  (744,1,'231','Basic Arcana','You gain a 1st- or 2nd-level wizard feat of your choice.',NULL,NULL,NULL,NULL),
  (745,1,'231','Basic Wizard Spellcasting','You gain the basic spellcasting benefits. Each time you gain a spell slot of a new level from the wizard archetype, add two common spells of that level to your spellbook.',NULL,NULL,NULL,NULL),
  (746,1,'231','Advanced Arcana','You gain one wizard feat. For the purpose of meeting its prerequisites, your wizard level is equal to half your character level.',NULL,NULL,NULL,NULL),
  (747,1,'231','Arcane Breadth','You can cast more arcane spells each day. Increase the spell slots you gain from wizard archetype feats by 1 for each spell level other than your two highest spell levels.',NULL,NULL,NULL,NULL),
  (748,1,'231','Expert Wizard Spellcasting','You gain the expert spellcasting benefits.',NULL,NULL,NULL,NULL),
  (749,1,'231','Master Wizard Spellcasting','You gain the master spellcasting benefits.',NULL,NULL,NULL,NULL),
-- General/Skill Feats
  (750,1,'258','Additional Lore','Your knowledge has expanded to encompass a new field. Choose an additional Lore skill subcategory. You become trained in it. At 3rd, 7th, and 15th levels, you gain an additional skill increase you can apply only to the chosen Lore subcategory.',NULL,NULL,NULL,NULL),
  (751,1,'258','Adopted Ancestry','You’re fully immersed in another ancestry’s culture and traditions, whether born into them, earned through rite of passage, or bonded through a deep friendship or romance. Choose a common ancestry. You can select ancestry feats from the ancestry you chose, in addition to your character’s own ancestry, as long as the ancestry feats don’t require any physiological feature that you lack, as determined by the GM.',NULL,NULL,NULL,NULL),
  (752,1,'258','Alchemical Crafting','You can use the Craft activity to create alchemical items. When you select this feat, you immediately add the formulas for four common 1st-level alchemical items to your formula book.',NULL,NULL,NULL,NULL),
  (753,1,'258','Ancestral Paragon','Whether through instinct, study, or magic, you feel a deeper connection to your ancestry. You gain a 1st-level ancestry feat.',NULL,NULL,NULL,NULL),
  (754,1,'258','Arcane Sense','Your study of magic allows you to instinctively sense its presence. You can cast 1st-level detect magic at will as an arcane innate spell. If you’re a master in Arcana, the spell is heightened to 3rd level; if you’re legendary, it is heightened to 4th level.',NULL,NULL,NULL,NULL),
  (755,1,'258','Armor Proficiency','You become trained in light armor. If you already were trained in light armor, you gain training in medium armor. If you were trained in both, you become trained in heavy armor.',NULL,NULL,NULL,NULL),
  (756,1,'258','Assurance','Even in the worst circumstances, you can perform basic tasks. Choose a skill you’re trained in. You can forgo rolling a skill check for that skill to instead receive a result of 10 + your proficiency bonus (do not apply any other bonuses, penalties, or modifiers).',NULL,NULL,NULL,NULL),
  (757,1,'258','Automatic Knowledge','You know basic facts off the top of your head. Choose a skill you’re an expert in that has the Recall Knowledge action and for which you have the Assurance feat. You can use the Recall Knowledge action with that skill as a free action once per round. If you do, you must use Assurance on the skill check.',NULL,NULL,NULL,NULL),
  (758,1,'258','Bargain Hunter','You can Earn Income (page 236) using Diplomacy, spending your days hunting for bargains and reselling at a profit. You can also spend time specifically sniffing out a great bargain on an item; this works as if you were using Earn Income with Diplomacy, except instead of gaining money, you purchase the item at a discount equal to the money you would have gained, gaining the item for free if your earned income equals or exceeds its cost. Finally, if you select Bargain Hunter during character creation at 1st level, you start play with an additional 2 gp.',NULL,NULL,NULL,NULL),
  (759,1,'258','Battle Cry','When you roll initiative, you can yell a mighty battle cry and Demoralize an observed foe as a free action. If you’re legendary in Intimidation, you can use a reaction to Demoralize your foe when you critically succeed at an attack roll.',NULL,NULL,NULL,NULL),
  (760,1,'258','Battle Medicine','You can patch up yourself or an adjacent ally, even in combat. Attempt a Medicine check with the same DC as for Treat Wounds and provide the corresponding amount of healing. As with Treat Wounds, you can attempt checks against higher DCs if you have the minimum proficiency rank. The target is then temporarily immune to your Battle Medicine for 1 day.',1,NULL,NULL,NULL),
  (761,1,'258','Bizarre Magic','You can draw upon strange variations in your spellcasting, whether or not you can cast occult spells. The DCs to Recognize Spells you cast and Identify Magic you use increase by 5.',NULL,NULL,NULL,NULL),
  (762,1,'259','Bonded Animal','You forge strong connections with animals. You can spend 7 days of downtime trying to bond with a normal animal (not a companion or other special animal). After this duration, attempt a DC 20 Nature check. If successful, you bond with the animal. The animal is permanently helpful to you, unless you do something egregious to break your bond. A helpful animal is easier to direct, as described under Command an Animal on page 249. Bonding with a new animal ends any previous bond you had. You can’t have both a bonded animal and an animal companion (though you can have both a bonded animal and a familiar).',NULL,NULL,NULL,NULL),
  (763,1,'259','Breath Control','You have incredible breath control, which grants you advantages when air is hazardous or sparse. You can hold your breath for 25 times as long as usual before suffocating. You gain a +1 circumstance bonus to saving throws against inhaled threats, such as inhaled poisons, and if you roll a success on such a saving throw, you get a critical success instead.',NULL,NULL,NULL,NULL),
  (764,1,'259','Canny Acumen','Your avoidance or observation is beyond the ken of most in your profession. Choose Fortitude saves, Reflex saves, Will saves, or Perception. You become an expert in your choice. At 17th level, you become a master in your choice.',NULL,NULL,NULL,NULL),
  (765,1,'259','Cat Fall','Your catlike aerial acrobatics allow you to cushion your falls. Treat falls as 10 feet shorter. If you’re an expert in Acrobatics, treat falls as 25 feet shorter. If you’re a master in Acrobatics, treat them as 50 feet shorter. If you’re legendary in Acrobatics, you always land on your feet and don’t take damage, regardless of the distance of the fall.',NULL,NULL,NULL,NULL),
  (766,1,'259','Charming Liar','Your charm allows you to win over those you lie to. When you get a critical success using the Lie action, the target’s attitude toward you improves by one step, as though you’d succeeded at using Diplomacy to Make an Impression. This works only once per conversation, and if you critically succeed against multiple targets using the same result, you choose one creature’s attitude to improve. You must be lying to impart seemingly important information, inflate your status, or ingratiate yourself, which trivial or irrelevant lies can’t achieve.',NULL,NULL,NULL,NULL),
  (767,1,'260','Cloud Jump','Your unparalleled athletic skill allows you to jump impossible distances. Triple the distance you Long Jump (so you could jump 60 feet on a successful DC 20 check). When you High Jump, use the calculation for a Long Jump but don’t triple the distance. When you Long Jump or High Jump, you can also increase the number of actions you use (up to the number of actions you have remaining in your turn) to jump even further. For each extra action, add your Speed to the maximum distance you jump.',NULL,NULL,NULL,NULL),
  (768,1,'260','Combat Climber','Your techniques allow you to fight as you climb. You’re not flat-footed while Climbing and can Climb with a hand occupied. You must still use another hand and both legs to Climb.',NULL,NULL,NULL,NULL),
  (769,1,'260','Confabulator','Even when caught in falsehoods, you pile lie upon lie. Reduce the circumstance bonus a target gains for your previous attempts to Create a Diversion or Lie to it from +4 to +2. If you’re a master in Deception, reduce the bonus to +1, and if you’re legendary, your targets don’t get these bonuses at all.',NULL,NULL,NULL,NULL),
  (770,1,'260','Connections','You have social connections you can leverage to trade favors or meet important people. When you’re in an area with connections (typically a settlement where you’ve spent downtime building connections, or possibly another area in the same nation), you can attempt a Society check to arrange a meeting with an important political figure or ask for a favor in exchange for a later favor of your contact’s choice. The GM decides the DC based on the difficulty of the favor and the figure’s prominence.',NULL,NULL,NULL,NULL),
  (771,1,'260','Continual Recovery','You zealously monitor a patient’s progress to administer treatment faster. When you Treat Wounds, your patient becomes immune for only 10 minutes instead of 1 hour. This applies only to your Treat Wounds activities, not any other the patient receives.',NULL,NULL,NULL,NULL),
  (772,1,'260','Courtly Graces','You were raised among the nobility or have learned proper etiquette and bearing, allowing you to present yourself as a noble and play games of influence and politics. You can use Society to Make an Impression on a noble, as well as with Impersonate to pretend to be a noble if you aren’t one. If you want to impersonate a specific noble, you still need to use Deception to Impersonate normally, and to Lie when necessary.',NULL,NULL,NULL,NULL),
  (773,1,'260','Craft Anything','You can find ways to craft just about anything, despite restrictions. As long as you have the appropriate Crafting skill feat (such as Magical Crafting for magic items) and meet the item’s level and proficiency requirement, you ignore just about any other requirement, such as being of a specific ancestry or providing spells. The only exceptions are requirements that add to the item’s cost, including castings of spells that themselves have a cost, and requirements of special items such as the philosopher’s stone that have exclusive means of access and Crafting. The GM decides whether you can ignore a requirement.',NULL,NULL,NULL,NULL),
  (774,1,'260','Diehard','It takes more to kill you than most. You die from the dying condition at dying 5, rather than dying 4.',NULL,NULL,NULL,NULL),
  (775,1,'260','Divine Guidance','You’re so immersed in divine scripture that you find meaning and guidance in your texts in any situation. Spend 10 minutes Deciphering Writing on religious scriptures of your deity or philosophy while thinking about a particular problem or conundrum you face, and then attempt a Religion check (DC determined by the GM). If you succeed, you unearth a relevant passage, parable, or aphorism that can help you move forward or change your thinking to help solve your conundrum. For example, the GM might provide you with a cryptic poem or hint that can guide you to the next step of solving your problem.',NULL,NULL,NULL,NULL),
  (776,1,'260','Dubious Knowledge','You’re a treasure trove of information, but not all of it comes from reputable sources. When you fail a Recall Knowledge check using any skill, you learn a bit of true knowledge and a bit of erroneous knowledge, but you don’t have any way to differentiate which is which.',NULL,NULL,NULL,NULL),
  (777,1,'260','Expeditious Search','You have a system that lets you search at great speed, finding details and secrets twice as quickly as others can. When Searching, you take half as long as usual to Search a given area. This means that while exploring, you double the Speed you can move while ensuring you’ve Searched an area before walking into it (up to half your Speed). If you’re legendary in Perception, you instead Search areas four times as quickly.',NULL,NULL,NULL,NULL),
  (778,1,'261','Experienced Professional','You carefully safeguard your professional endeavors to prevent disaster. When you use Lore to Earn Income, if you roll a critical failure, you instead get a failure. If you’re an expert in Lore, you gain twice as much income from a failed check to Earn Income, unless it was originally a critical failure.',NULL,NULL,NULL,NULL),
  (779,1,'261','Experienced Smuggler','You often smuggle things past the authorities. When the GM rolls your Stealth check to see if a passive observer notices a small item you have concealed, the GM uses the number rolled or 10—whichever is higher—as the result of your die roll, adding it to your Stealth modifier to determine your Stealth check result. If you’re a master in Stealth, the GM uses the number rolled or 15, and if you’re legendary in Stealth, you automatically succeed at hiding a small concealed item from passive observers. This provides no benefits when a creature attempts a Perception check while actively searching you for hidden items. Due to your smuggling skill, you’re more likely to find more lucrative smuggling jobs when using Underworld Lore to Earn Income.',NULL,NULL,NULL,NULL),
  (780,1,'261','Experienced Tracker','Tracking is second nature to you, and when necessary you can follow a trail without pause. You can Track while moving at full Speed by taking a –5 penalty to your Survival check. If you’re a master in Survival, you don’t take the –5 penalty. If you’re legendary in Survival, you no longer need to roll a new Survival check every hour when tracking, though you still need to roll whenever there are significant changes in the trail.',NULL,NULL,NULL,NULL),
  (781,1,'261','Fascinating Performance','When you Perform, compare your result to the Will DC of one observer. If you succeed, the target is fascinated by you for 1 round. If the observer is in a situation that demands immediate attention, such as combat, you must critically succeed to fascinate it and the Perform action gains the incapacitation trait. You must choose which creature you’re trying to fascinate before you roll your check, and the target is then temporarily immune for 1 hour. If you’re an expert in Performance, you can fascinate up to four observers; if you’re a master, you can fascinate up to 10 observers; and if you’re legendary, you can fascinate any number of observers at the same time.',NULL,NULL,NULL,NULL),
  (782,1,'261','Fast Recovery','Your body quickly bounces back from afflictions. You regain twice as many Hit Points from resting. Each time you succeed at a Fortitude save against an ongoing disease or poison, you reduce its stage by 2, or by 1 against a virulent disease or poison. Each critical success you achieve against an ongoing disease or poison reduces its stage by 3, or by 2 against a virulent disease or poison. In addition, you reduce the severity of your drained condition by 2 when you rest for a night instead of by 1.',NULL,NULL,NULL,NULL),
  (783,1,'261','Feather Step','You step carefully and quickly. You can Step into difficult terrain.',NULL,NULL,NULL,NULL),
  (784,1,'261','Fleet','You move more quickly on foot. Your Speed increases by 5 feet.',NULL,NULL,NULL,NULL),
  (785,1,'261','Foil Senses','You are adept at foiling creatures’ special senses and cautious enough to safeguard against them at all times. Whenever you use the Avoid Notice, Hide, or Sneak actions, you are always considered to be taking precautions against special senses (see the Detecting with Other Senses sidebar on page 465).',NULL,NULL,NULL,NULL),
  (786,1,'261','Forager','While using Survival to Subsist, if you roll any result worse than a success, you get a success. On a success, you can provide subsistence living for yourself and four additional creatures, and on a critical success, you can take care of twice as many creatures as on a success. Each time your proficiency rank in Survival increases, double the number of additional creatures you can take care of on a success (to eight if you’re an expert, 16 if you’re a master, or 32 if you’re legendary). You can choose to care for half the number of additional creatures and provide a comfortable living instead of subsistence living. Multiple smaller creatures or creatures with significantly smaller appetites than a human are counted as a single creature for this feat, and larger creatures or those with significantly greater appetites each count as multiple creatures. The GM determines how much a non-human creature needs to eat. ',NULL,NULL,NULL,NULL),
  (787,1,'261','Glad-Hand','First impressions are your strong suit. When you meet someone in a casual or social situation, you can immediately attempt a Diplomacy check to Make an Impression on that creature rather than needing to converse for 1 minute. You take a -5 penalty to the check. If you fail or critically fail, you can engage in 1 minute of conversation and attempt a new check at the end of that time rather than accepting the failure or critical failure result.',NULL,NULL,NULL,NULL),
  (788,1,'262','Group Coercion','When you Coerce, you can compare your Intimidation check result to the Will DCs of two targets instead of one. It’s possible to get a different degree of success for each target. The number of targets you can Coerce in a single action increases to four if you’re an expert, 10 if you’re a master, and 25 if you’re legendary.',NULL,NULL,NULL,NULL),
  (789,1,'262','Group Impression','When you Make an Impression, you can compare your Diplomacy check result to the Will DCs of two targets instead of one. It’s possible to get a different degree of success for each target. The number of targets increases to four if you’re an expert, 10 if you’re a master, and 25 if you’re legendary.',NULL,NULL,NULL,NULL),
  (790,1,'262','Hefty Hauler','You can carry more than your frame implies. Increase your maximum and encumbered Bulk limits by 2.',NULL,NULL,NULL,NULL),
  (791,1,'262','Hobnobber','You are skilled at learning information through conversation. The Gather Information exploration activity takes you half as long as normal (typically reducing the time to 1 hour). If you’re a master in Diplomacy and you Gather Information at the normal speed, when you attempt to do so and roll a critical failure, you get a failure instead. There is still no guarantee that a rumor you learn with Gather Information is accurate.',NULL,NULL,NULL,NULL),
  (792,1,'262','Impeccable Crafter','You craft flawless creations with great efficiency. Whenever you roll a success at a Crafting check to make an item of the type you chose with Specialty Crafting, you get a critical success instead.',NULL,NULL,NULL,NULL),
  (793,1,'262','Impressive Performance','Your performances inspire admiration and win you fans. You can Make an Impression using Performance instead of Diplomacy.',NULL,NULL,NULL,NULL),
  (794,1,'262','Incredible Initiative','You react more quickly than others can. You gain a +2 circumstance bonus to initiative rolls.',NULL,NULL,NULL,NULL),
  (795,1,'262','Incredible Investiture','You have an incredible ability to invest more magic items. Increase your limit on invested items from 10 to 12.',NULL,NULL,NULL,NULL),
  (796,1,'262','Intimidating Glare','You can Demoralize with a mere glare. When you do, Demoralize loses the auditory trait and gains the visual trait, and you don’t take a penalty if the creature doesn’t understand your language.',NULL,NULL,NULL,NULL),
  (797,1,'262','Intimidating Prowess','In situations where you can physically menace the target when you Coerce or Demoralize, you gain a +1 circumstance bonus to your Intimidation check and you ignore the penalty for not sharing a language. If your Strength score is 20 or higher and you are a master in Intimidation, this bonus increases to +2.',NULL,NULL,NULL,NULL),
  (798,1,'262','Inventor','You are a genius at Crafting, easily able to determine how things are made and create new inventions. You can spend downtime to invent a common formula that you don’t know. This works just like the Craft activity: you spend half the Price of the formula up front, attempt a Crafting check, and on a success either finish the formula by paying the difference or work for longer to decrease the Price. The difference is that you spend the additional time in research, design, and development, rather than in creating an item. Once it’s complete, you add the new formula you invented to your formula book.',NULL,NULL,NULL,NULL),
  (799,1,'262','Kip Up','You stand up. This movement doesn’t trigger reactions.',4,NULL,NULL,NULL),
  (800,1,'262','Lasting Coercion','When you successfully Coerce someone, the maximum time they comply increases to a week, still determined by the GM. If you’re legendary, the maximum increases to a month.',NULL,NULL,NULL,NULL),
  (801,1,'262','Legendary Codebreaker','Your skill with languages and codes is so great that you can decipher information with little more than a quick read through a text. You can Decipher Writing using Society while reading at normal speed. If you slow down and spend the full amount of time that’s ordinarily required and roll a success, you get a critical success; if you critically succeed while spending the normal amount of time, you gain a nearly word-for-word understanding of the document.',NULL,NULL,NULL,NULL),
  (802,1,'263','Legendary Linguist','You’re so skilled with languages you can create a pidgin instantly. You can always talk to any creature that has a language—even a language you don’t know —by creating a new pidgin language that uses simplified terms and conveys basic concepts. To do so, you must first understand at least what medium of communication the creature uses (speech, sign language, and so on).',NULL,NULL,NULL,NULL),
  (803,1,'263','Legendary Medic','You’ve discovered medical breakthroughs or techniques that achieve miraculous results. Once per day for each target, you can spend 1 hour treating that target and attempt a Medicine check to remove a disease or the blinded, deafened, doomed, or drained condition. Use the DC of the disease or of the spell or effect that created the condition. If the effect’s source is an artifact, above 20th level, or similarly powerful, increase the DC by 10.',NULL,NULL,NULL,NULL),
  (804,1,'263','Legendary Negotiation','You can negotiate incredibly quickly in adverse situations. You attempt to Make an Impression and then Request your opponent cease their current activity and engage in negotiations. You take a –5 penalty to your Diplomacy check. The GM sets the DC of the Request based on the circumstances—it’s generally at least a very hard DC of the creature’s level. Some creatures might simply refuse, and even those who agree to parley might ultimately find your arguments lacking and return to violence.',3,NULL,NULL,NULL),
  (805,1,'263','Legendary Performer','Your fame has spread throughout the lands. NPCs who succeed at a DC 10 Society check to Recall Knowledge have heard of you and usually have an attitude toward you one step better than normal, depending on your reputation and the NPC’s disposition. For instance, if you’re well-known for cruel and demanding behavior, creatures might be intimidated by you, rather than be friendly toward you. When you Earn Income with Performance, you attract higher-level audiences than your location would allow, as audiences flock to see you. For instance, rulers and angels might travel to your small tower in the woods to hear you perform. Typically, this increases the audiences available by 2 levels or more, determined by the GM.',NULL,NULL,NULL,NULL),
  (806,1,'263','Legendary Professional','Your fame has spread throughout the lands (for instance, if you have Warfare Lore, you might be a legendary general or tactician). This works as Legendary Performer, except you gain higher-level jobs when you Earn Income with Lore.',NULL,NULL,NULL,NULL),
  (807,1,'263','Legendary Sneak','You’re always sneaking unless you choose to be seen, even when there’s nowhere to hide. You can Hide and Sneak even without cover or being concealed. When you employ an exploration tactic other than Avoiding Notice, you also gain the benefits of Avoiding Notice unless you choose not to. See page 479 for more information about exploration tactics.',NULL,NULL,NULL,NULL),
  (808,1,'263','Legendary Survivalist','You can survive indefinitely without food or water and can endure severe, extreme, and incredible cold and heat without taking damage from doing so.',NULL,NULL,NULL,NULL),
  (809,1,'263','Legendary Thief','Your ability to Steal defies belief. You can attempt to Steal something that is actively wielded or that would be extremely noticeable or time consuming to remove (like worn shoes or armor). You must do so slowly and carefully, spending at least 1 minute (and significantly longer for items that are normally time consuming to remove, like armor). Throughout this duration you must have some means of staying hidden, such as the cover of darkness or a bustling crowd. You take a –5 penalty to your Thievery check. Even if you succeed, if the item is extremely prominent—like a suit of full plate armor—onlookers will quickly notice it’s gone after you steal it.',NULL,NULL,NULL,NULL),
  (810,1,'263','Lengthy Diversion','When you critically succeed to Create a Diversion, you continue to remain hidden after the end of your turn. This effect lasts for an amount of time that depends on the diversion and situation, as determined by the GM (minimum 1 additional round).',NULL,NULL,NULL,NULL),
  (811,1,'263','Lie To Me','You can use Deception to weave traps to trip up anyone trying to deceive you. If you can engage in conversation with someone trying to Lie to you, use your Deception DC if it is higher than your Perception DC to determine whether they succeed. This doesn’t apply if you don’t have a back-and-forth dialogue, such as when someone attempts to Lie during a long speech.',NULL,NULL,NULL,NULL),
  (812,1,'263','Magical Crafting','You can Craft magic items, though some have other requirements, as listed in Chapter 11. When you select this feat, you gain formulas for four common magic items of 2nd level or lower.',NULL,NULL,NULL,NULL),
  (813,1,'264','Magical Shorthand','Learning spells comes easily to you. If you’re an expert in a tradition’s associated skill, you take 10 minutes per spell level to learn a spell of that tradition, rather than 1 hour per spell level. If you fail to learn the spell, you can try again after 1 week or after you gain a level, whichever comes first. If you’re a master in the tradition’s associated skill, learning a spell takes 5 minutes per spell level, and if you’re legendary, it takes 1 minute per spell level. You can use downtime to learn and inscribe new spells. This works as if you were using Earn Income with the tradition’s associated skill, but instead of gaining money, you choose a spell available to you to learn and gain a discount on learning it, learning it for free if your earned income equals or exceeds its cost.',NULL,NULL,NULL,NULL),
  (814,1,'264','Multilingual','You easily pick up new languages. You learn two new languages, chosen from common languages, uncommon languages, and any others you have access to. You learn an additional language if you are or become a master in Society and again if you are or become legendary.',NULL,NULL,NULL,NULL),
  (815,1,'264','Natural Medicine','You can apply natural cures to heal your allies. You can use Nature instead of Medicine to Treat Wounds. If you’re in the wilderness, you might have easier access to fresh ingredients, allowing you to gain a +2 circumstance bonus to your check to Treat Wounds using Nature, subject to the GM’s determination.',NULL,NULL,NULL,NULL),
  (816,1,'264','Nimble Crawl','You can Crawl incredibly swiftly—up to half your Speed, rather than 5 feet. If you’re a master in Acrobatics, you can Crawl at full Speed, and if you’re legendary, you aren’t flat-footed while prone.',NULL,NULL,NULL,NULL),
  (817,1,'264','Oddity Identification','You have a sense for spells that twist minds or reveal secrets. You gain a +2 circumstance bonus to Occultism checks to Identify Magic with the mental, possession, prediction, or scrying traits.',NULL,NULL,NULL,NULL),
  (818,1,'264','Pickpocket','You can Steal or Palm an Object that’s closely guarded, such as in a pocket, without taking the –5 penalty. You can’t steal objects that would be extremely noticeable or time consuming to remove (like worn shoes or armor or actively wielded objects). If you’re a master in Thievery, you can attempt to Steal from a creature in combat or otherwise on guard. When doing so, Stealing requires 2 manipulate actions instead of 1, and you take a –5 penalty.',NULL,NULL,NULL,NULL),
  (819,1,'264','Planar Survival','You can Subsist using Survival on different planes, even those without resources or natural phenomena you normally need. For instance, you can forage for food even if the plane lacks food that could normally sustain you. A success on your check to Subsist can also reduce the damage dealt by the plane, at the GM’s discretion.',NULL,NULL,NULL,NULL),
  (820,1,'264','Powerful Leap','When you Leap, you can jump 5 feet up with a vertical Leap, and you increase the distance you can jump horizontally by 5 feet.',NULL,NULL,NULL,NULL),
  (821,1,'264','Quick Climber','When Climbing, you move 5 more feet on a success and 10 more feet on a critical success, to a maximum of your Speed. If you’re legendary in Athletics, you gain a climb Speed equal to your Speed.',NULL,NULL,NULL,NULL),
  (822,1,'264','Quick Coercion','You can bully others with just a few choice implications. You can Coerce a creature after 1 round of conversation instead of 1 minute. You still can’t Coerce a creature in the midst of combat, or without engaging in a conversation.',NULL,NULL,NULL,NULL),
  (823,1,'264','Quick Disguise','You can set up a disguise in half the usual time (generally 5 minutes). If you’re a master, it takes one-tenth the usual time (usually 1 minute). If you’re legendary, you can create a full disguise and Impersonate as a 3-action activity.',NULL,NULL,NULL,NULL),
  (824,1,'264','Quick Identification','You can Identify Magic swiftly. You take only 1 minute when using Identify Magic to determine the properties of an item, ongoing effect, or location, rather than 10 minutes. If you’re a master, it takes a 3-action activity, and if you’re legendary, it takes 1 action.',NULL,NULL,NULL,NULL),
  (825,1,'264','Quick Jump','You can use High Jump and Long Jump as a single action instead of 2 actions. If you do, you don’t perform the initial Stride (nor do you fail if you don’t Stride 10 feet).',NULL,NULL,NULL,NULL),
  (826,1,'265','Quick Recognition','You Recognize Spells swiftly. Once per round, you can Recognize a Spell using a skill in which you’re a master as a free action.',NULL,NULL,NULL,NULL),
  (827,1,'265','Quick Repair','You take 1 minute to Repair an item. If you’re a master in Crafting, it takes 3 actions. If you’re legendary, it takes 1 action.',NULL,NULL,NULL,NULL),
  (828,1,'265','Quick Squeeze','You Squeeze 5 feet per round (10 feet on a critical success). If you’re legendary in Acrobatics, you Squeeze at full Speed.',NULL,NULL,NULL,NULL),
  (829,1,'265','Quick Swim','You Swim 5 feet farther on a success and 10 feet farther on a critical success, to a maximum of your Speed. If you’re legendary in Athletics, you gain a swim Speed equal to your Speed.',NULL,NULL,NULL,NULL),
  (830,1,'265','Quick Unlock','You can Pick a Lock using 1 action instead of 2.',NULL,NULL,NULL,NULL),
  (831,1,'265','Quiet Allies','You’re skilled at moving with a group. When you are Avoiding Notice and your allies Follow the Expert, you and those allies can roll a single Stealth check, using the lowest modifier, instead of rolling separately. This doesn’t apply for initiative rolls.',NULL,NULL,NULL,NULL),
  (832,1,'265','Rapid Mantel','You easily pull yourself onto ledges. When you Grab an Edge, you can pull yourself onto that surface and stand. You can use Athletics instead of a Reflex save to Grab an Edge.',NULL,NULL,NULL,NULL),
  (833,1,'265','Read Lips','You can read lips of others nearby who you can clearly see. When you’re at your leisure, you can do this automatically. In encounter mode or when attempting a more difficult feat of lipreading, you’re fascinated and flat-footed during each round in which you focus on lip movements, and you must succeed at a Society check (DC determined by the GM) to successfully read someone’s lips. In either case, the language read must be one that you know. If you are deaf or hard of hearing and have Read Lips, you recognize the lip movements for the spoken form of your languages. You can also speak the spoken form of your languages clearly enough for others to understand you.',NULL,NULL,NULL,NULL),
  (834,1,'265','Recognize Spell','If you are trained in the appropriate skill for the spell’s tradition and it’s a common spell of 2nd level or lower, you automatically identify it (you still roll to attempt to get a critical success, but can’t get a worse result than success). The highest level of spell you automatically identify increases to 4 if you’re an expert, 6 if you’re a master, and 10 if you’re legendary. The GM rolls a secret Arcana, Nature, Occultism, or Religion check, whichever corresponds to the tradition of the spell being cast. If you’re not trained in the skill, you can’t get a result better than failure. Critical Success: You correctly recognize the spell and gain a +1 circumstance bonus to your saving throw or your AC against it.  Success: You correctly recognize the spell. Failure: You fail to recognize the spell. Critical Failure: You misidentify the spell as another spell entirely, of the GM’s choice.',5,NULL,53,NULL),
  (835,1,'266','Ride','When you Command an Animal you’re mounted on to take a move action (such as Stride), you automatically succeed instead of needing to attempt a check. Any animal you’re mounted on acts on your turn, like a minion. If you Mount an animal in the middle of an encounter, it skips its next turn and then acts on your next turn. Page 249 has more on Command an Animal.',NULL,NULL,NULL,NULL),
  (836,1,'266','Robust Recovery','You learned folk medicine to help recover from diseases and poison, and using it diligently has made you especially resilient. When you Treat a Disease or a Poison, or someone else uses one of these actions on you, increase the circumstance bonus granted on a success to +4, and if the result of the patient’s saving throw is a success, the patient gets a critical success.',NULL,NULL,NULL,NULL),
  (837,1,'266','Scare to Death','You can frighten foes so much, they might die. Attempt an Intimidation check against the Will DC of a living creature within 30 feet of you that you sense or observe and who can sense or observe you. If the target can’t hear you or doesn’t understand the language you are speaking, you take a –4 circumstance penalty. The creature is temporarily immune for 1 minute.',1,NULL,NULL,NULL),
  (838,1,'266','Shameless Request','You can downplay the consequences or outrageousness of your requests using sheer brazenness and charm. When you Request something, you reduce any DC increases for making an outrageous request by 2, and if you roll a critical failure for your Request, you get a failure instead. While this means you can never cause your target to reduce their attitude toward you by making a Request, they eventually tire of requests, even though they still have a positive attitude toward you.',NULL,NULL,NULL,NULL),
  (839,1,'266','Shield Block','You snap your shield in place to ward off a blow. Your shield prevents you from taking an amount of damage up to the shield’s Hardness. You and the shield each take any remaining damage, possibly breaking or destroying the shield.',5,NULL,54,NULL),
  (840,1,'266','Sign Language','You learn the sign languages associated with the languages you know, allowing you to sign and understand signs. Sign languages typically require both hands to convey more complex concepts, and they are visual rather than auditory. Sign language is difficult to understand during combat due to the level of attention needed, unlike basic gestures like pointing at a foe to suggest a target. Sign language is hard to use in areas of low visibility, just like speech is difficult in a noisy environment.',NULL,NULL,NULL,NULL),
  (841,1,'266','Skill Training','You become trained in the skill of your choice.',NULL,NULL,NULL,NULL),
  (842,1,'266','Slippery Secrets','You elude and evade attempts to uncover your true nature or intentions. When a spell or magical effect tries to read your mind, detect whether you are lying, or reveal your alignment, you can attempt a Deception check against the spell or effect’s DC. If you succeed, the effect reveals nothing.',NULL,NULL,NULL,NULL),
  (843,1,'266','Snare Crafting','You can use the Craft activity to create snares, using the rules from page 244. When you select this feat, you add the formulas for four common snares to your formula book.',NULL,NULL,NULL,NULL),
  (844,1,'266','Specialty Crafting','Your training focused on Crafting one particular kind of item. Select one of the specialties listed on page 267; you gain a +1 circumstance bonus to Crafting checks to Craft items of that type. If you are a master in Crafting, this bonus increases to +2. If it’s unclear whether the specialty applies, the GM decides. Some specialties might apply only partially. For example, if you were making a morningstar and had specialty in woodworking, the GM might give you half your bonus because the item requires both blacksmithing and woodworking. TODO table here???',NULL,NULL,NULL,NULL),
  (845,1,'267','Steady Balance','You can keep your balance easily, even in adverse conditions. Whenever you roll a success using the Balance action, you get a critical success instead. You’re not flat-footed while attempting to Balance on narrow surfaces and uneven ground. Thanks to your incredible balance, you can attempt an Acrobatics check instead of a Reflex save to Grab an Edge.',NULL,NULL,NULL,NULL),
  (846,1,'267','Streetwise','You know about life on the streets and feel the pulse of your local settlement. You can use your Society modifier instead of your Diplomacy modifier to Gather Information. In any settlement you frequent regularly, you can use the Recall Knowledge action with Society to know the same sorts of information that you could discover with Diplomacy to Gather Information. The DC is usually significantly higher, but you know the information without spending time gathering it. If you fail to recall the information, you can still subsequently attempt to Gather Information normally.',NULL,NULL,NULL,NULL),
  (847,1,'267','Student of the Canon','You’ve researched many faiths enough to recognize notions about them that are unlikely to be true. If you roll a critical failure at a Religion check to Decipher Writing of a religious nature or to Recall Knowledge about the tenets of faiths, you get a failure instead. When attempting to Recall Knowledge about the tenets of your own faith, if you roll a failure, you get a success instead, and if you roll a success, you get a critical success instead.',NULL,NULL,NULL,NULL),
  (848,1,'267','Subtle Theft','When you successfully Steal something, observers (creatures other than the creature you stole from) take a –2 circumstance penalty to their Perception DCs to detect your theft. Additionally, if you first Create a Diversion using Deception, taking a single Palm an Object or Steal action doesn’t end your undetected condition.',NULL,NULL,NULL,NULL),
  (849,1,'267','Survey Wildlife','You can study details in the wilderness to determine the presence of nearby creatures. You can spend 10 minutes assessing the area around you to find out what creatures are nearby, based on nests, scat, and marks on vegetation. Attempt a Survival check against a DC determined by the GM based on how obvious the signs are. On a success, you can attempt a Recall Knowledge check with a –2 penalty to learn more about the creatures just from these signs. If you’re a master in Survival, you don’t take the penalty.',NULL,NULL,NULL,NULL),
  (850,1,'267','Swift Sneak','You can move your full Speed when you Sneak. You can use Swift Sneak while Burrowing, Climbing, Flying, or Swimming instead of Striding if you have the corresponding movement type.',NULL,NULL,NULL,NULL),
  (851,1,'267','Terrain Expertise','Your experience in navigating a certain type of terrain makes you supremely confident while doing so. You gain a +1 circumstance bonus to Survival checks in one of the following types of terrain, chosen when you select this feat: aquatic, arctic, desert, forest, mountain, plains, sky, swamp, or underground.',NULL,NULL,NULL,NULL),
  (852,1,'267','Terrain Stalker','Select one type of difficult terrain from the following list: rubble, snow, or underbrush. While undetected by all non-allies in that type of terrain, you can Sneak without attempting a Stealth check as long as you move no more than 5 feet and do not move within 10 feet of an enemy at any point during your movement. This also allows you to automatically approach creatures to within 15 feet while Avoiding Notice during exploration as long as they aren’t actively Searching or on guard.',NULL,NULL,NULL,NULL),
  (853,1,'268','Terrified Retreat','When you critically succeed at the Demoralize action, if the target’s level is lower than yours, the target is fleeing for 1 round.',NULL,NULL,NULL,NULL),
  (854,1,'268','Titan Wrestler','You can attempt to Disarm, Grapple, Shove, or Trip creatures up to two sizes larger than you, or up to three sizes larger than you if you’re legendary in Athletics.',NULL,NULL,NULL,NULL),
  (855,1,'268','Toughness','You can withstand more punishment than most before succumbing. Increase your maximum Hit Points by your level. You reduce the DC of recovery checks by 1 (page 459).',NULL,NULL,NULL,NULL),
  (856,1,'268','Train Animal','You spend time teaching an animal to do a certain action. You can either select a basic action the animal already knows how to do (typically those listed in the Command an Animal action on page 249) or attempt to teach the animal a new basic action. The GM determines the DC of any check required and the amount of time the training takes (usually at least a week). It’s usually impossible to teach an animal a trick that uses critical thinking. If you’re expert, master, or legendary in Nature, you might be able to train more unusual creatures, at the GM’s discretion. Success: The animal learns the action. If it was an action the animal already knew, you can Command the Animal to take that action without attempting a Nature check. If it was a new basic action, add that action to the actions the animal can take when Commanded, but you must still roll. Failure: The animal doesn’t learn the trick.',NULL,NULL,NULL,NULL),
  (857,1,'268','Trick Magic Item','You examine a magic item you normally couldn’t use in an effort to fool it and activate it temporarily. For example, this might allow a fighter to cast a spell from a wand or allow a wizard to cast a spell that’s not on the arcane list using a scroll. You must know what activating the item does, or you can’t attempt to trick it.',1,NULL,NULL,NULL),
  (858,1,'268','Underwater Marauder','You’ve learned to fight underwater. You are not flat-footed while in water, and you don’t take the usual penalties for using a bludgeoning or slashing melee weapon in water.',NULL,NULL,NULL,NULL),
  (859,1,'268','Unified Theory','You’ve started to make a meaningful connection about the common underpinnings of the four traditions of magic and magical essences, allowing you to understand them all through an arcane lens. Whenever you use an action or a skill feat that requires a Nature, Occultism, or Religion check, depending on the magic tradition, you can use Arcana instead. If you would normally take a penalty or have a higher DC for using Arcana on other magic (such as when using Identify Magic), you no longer do so.',NULL,NULL,NULL,NULL),
  (860,1,'268','Unmistakable Lore','You never get information about your areas of expertise wrong. When you Recall Knowledge using any Lore subcategory in which you’re trained, if you roll a critical failure, you get a failure instead. If you’re a master in a Lore subcategory, on a critical success, you gain even more information or context than usual.',NULL,NULL,NULL,NULL),
  (861,1,'268','Untrained Improvisation','You’ve learned how to handle situations when you’re out of your depth. Your proficiency bonus to untrained skill checks is equal to half your level instead of +0. If you’re 7th level or higher, the bonus increases to your full level instead. This doesn’t allow you to use the skill’s trained actions.',NULL,NULL,NULL,NULL),
  (862,1,'268','Virtuosic Performer','You have exceptional talent with one type of performance. You gain a +1 circumstance bonus when making a certain type of performance. If you are a master in Performance, this bonus increases to +2. Select one of the following specialties and apply the bonus when attempting Performance checks of that type. If it’s unclear whether the specialty applies, the GM decides.',NULL,NULL,NULL,NULL),
  (863,1,'269','Wall Jump','You can use your momentum from a jump to propel yourself off a wall. If you’re adjacent to a wall at the end of a jump (whether performing a High Jump, Long Jump, or Leap), you don’t fall as long as your next action is another jump. Furthermore, since your previous jump gives you momentum, you can use High Jump or Long Jump as a single action, but you don’t get to Stride as part of the activity. You can use Wall Jump only once in a turn, unless you’re legendary in Athletics, in which case you can use Wall Jump as many times as you can use consecutive jump actions in that turn.',NULL,NULL,NULL,NULL),
  (864,1,'269','Ward Medic','You’ve studied in large medical wards, treating several patients at once and tending to all their needs. When you use Treat Disease or Treat Wounds, you can treat up to two targets. If you’re a master in Medicine, you can treat up to four targets, and if you’re legendary, you can treat up to eight targets.',NULL,NULL,NULL,NULL),
  (865,1,'269','Wary Disarmament','If you trigger a device or set off a trap while disarming it, you gain a +2 circumstance bonus to your AC or saving throw against the device or trap. This applies only to attacks or effects triggered by your failed attempt, not to any later ones, such as additional attacks from a complex trap.',NULL,NULL,NULL,NULL),
  (866,1,'269','Weapon Proficiency','You become trained in all simple weapons. If you were already trained in all simple weapons, you become trained in all martial weapons. If you were already trained in all martial weapons, you become trained in one advanced weapon of your choice.',NULL,NULL,NULL,NULL),
  (867,3,'57','Relentless Stalker','Your hunted prey cannot escape your relentless pursuit. Stride up to your Speed in tandem with the triggering creature, remaining adjacent to the foe throughout its movement until it stops moving or you run out of movement. You can ignore difficult terrain during this movement unless the difficult terrain is caused by a magical effect.',NULL,NULL,NULL,NULL),
  (868,3,'57','Wilderness Spotter','Select one type of terrain from the following list: aquatic, arctic, desert, forest, mountain, plains, sky, swamp, or underground. You can use Survival in place of Perception to roll initiative when in the selected terrain in a natural location (not a structure) even if you weren’t tracking or otherwise using',NULL,NULL,NULL,NULL);
                                                                                                      -- TODO This is failing foreign key constraint, meaning one of the second columns does NOT exist in feats most likely
INSERT INTO featprereqs (featprereqs_id, feat_id, descr)
VALUES
  (1, NULL, 'Ancestry Level 1'),
  (2, NULL, 'Ancestry Level 5'),
  (3, NULL, 'Ancestry Level 9'),
  (4, NULL, 'Ancestry Level 13'),
  (5, NULL, 'Class Level 1'),
  (6, NULL, 'Class Level 2'),
  (7, NULL, 'Class Level 4'),
  (8, NULL, 'Class Level 6'),
  (9, NULL, 'Class Level 8'),
  (10, NULL, 'Class Level 10'),
  (11, NULL, 'Class Level 12'),
  (12, NULL, 'Class Level 14'),
  (13, NULL, 'Class Level 16'),
  (14, NULL, 'Class Level 18'),
  (15, NULL, 'Class Level 20'),
  -- Dwarf
  (16, 3, 'Feat: Rock Runner'),
  (17, 2, 'Feat: Dwarven Weapon Familiarity'),
  -- Elf
  (18, NULL, 'at least 100 years old'),
  (19, 14, 'Feat: Elven Weapon Familiarity'),
  (20, 12, 'Feat: Ancestral Longevity'),
  (21, 22, 'Feat: Expert Longevity'),
  -- Gnome
  (22, 26, 'Feat: Burrow Elocutionist'),
  (23, NULL, 'focus pool'),
  (24, NULL, 'at least one Innate Spell from a Gnome heritage or ancestry feat that shares a tradition with at least one of your focus spells'),
  (25, 30, 'Feat: Gnome Weapon Familiarity'),
  (26, NULL, 'at least one primal innate spell'),
  -- Goblin
  (27, 43, 'Feat: Goblin Weapon Familiarity'),
  (28, 41, 'Feat: Goblin Scuttle'),
  (353, 46, 'Feat: Very Sneaky'),
  -- Halfling
  (29, 55, 'Feat: Halfling Weapon Familiarity'),
  (30, 54, 'Feat: Halfling Luck'),
  (31, 52, 'Feat: Distracting Shadows'),
  --Human
  (32, NULL, 'Spellcasting Class Feature'),
  (33, 66, 'Feat: Adapted Cantrip'),
  (34, NULL, 'can cast 3rd-level Spells'),
  (35, 67, 'Feat: Cooperative Nature'),
  (36, 74, 'Feat: Clever Improviser'),
  (37, 72, 'Feat: Unconventional Weaponry'),
  (38, NULL, 'trained in the weapon you chose for Unconventional Weaponry'),
  (39, NULL, 'low-light vision'),
  (40, 86, 'Feat: Orc Weapon Famailiarity'),
  (41, 85, 'Feat: Orc Superstition'),
  (94, 83, 'Feat: Orc Ferocity'),
  -- Alchemist
  (42, NULL, 'trained in Crafting'),
  (43, 99, 'Feat: Calculated Splash'),
  (44, 103, 'Feat: Debilitating Bomb'),
  (45, 106, 'Feat: Powerful Alchemy'),
  (46, 94, 'Feat: Far Lobber'),
  (47, 111, 'Feat: Merciful Elixir'),
  (48, 110, 'Feat: Greater Debilitating Bomb'),
  (49, 113, 'Feat: Extend Elixir'),
  (50, 109, 'Feat: Expanded Splash'),
  -- Barbarian
  (51, NULL, 'acute vision or darkvision'), --orCondition
  (52, NULL, 'expert in Athletics'),
  (53, NULL, 'Feature: animal instinct'),
  (54, NULL, 'Feature: dragon instinct'),
  (55, NULL, 'Feature: giant instinct'),
  (56, NULL, 'Feature: spirit instinct'),
  (57, NULL, 'master in Athletics'),
  (58, 147, 'Feat: Cleave'),
  (59, 796, 'Feat: Intimidating Glare'), --IS a skill feat
  (60, 149, 'Feat: Giants Stature'),
  (61, 160, 'Feat: Knockdown'),
  (62, 157, 'Feat: Come And Get Me'),
  (63, 156, 'Feat: Thrash'),
  (64, 152, 'Feat: Dragons Rage Wings'),
  (65, 154, 'Feat: Share Rage'),
  -- Bard
  (66, NULL, 'Feature: enigma muse'),
  (67, NULL, 'Feature: maestro muse'),
  (68, NULL, 'Feature: polymath muse'),
  (69, NULL, 'master in Occultism'),
  (70, 184, 'Feat: Esoteric Polymath'),
  (71, NULL, 'legendary in Ocultism'),
  (72, NULL,'trained in Arcana, Nature, or Religion'),
  (73, NULL, 'Feature: magnus opus'),
  (74, 193, 'Feat: Harmonize'),
  -- Champion
  (75, NULL, 'Feature: paladin cause'),
  (76, NULL, 'Feature: liberator cause'),
  (77, NULL, 'Feature: redeemer cause'),
  (78, NULL, 'Feature: tenets of good'),
  (79, NULL, 'Feature: devotion spell (lay on hands)'),
  (80, NULL, 'Feature: divine ally (steed)'),
  (81, NULL, 'Feature: devotion spells'),
  (82, NULL, 'Feature: divine ally (shield)'),
  (83, NULL, 'Feature: divine ally (blade)'),
  (84, 214, 'Feat: Deitys Domain'), --Paren
  (85, 225, 'Feat: Mercy'),
  (86, NULL, 'Feature: divine ally'),
  (87, 228, 'Feat: Loyal Warhouse'),
  (88, 229, 'Feat: Shield Warden'),
  (89, NULL, 'Feature: Champion''s Reaction'), --Paren
  (90, 220, 'Feat: Fiendsbane Oath'),
  (91, 221, 'Feat: Shining Oath'),
  (92, NULL, 'Feature: exalt'),
  (93, 222, 'Feat: Vengeful Oath'),
  (95, 219, 'Feat: Dragonslayer Oath'),
  (96, 238, 'Feat: Imposing Destrier'),
  (97, 240, 'Feat: Radiant Blade Spirit'),
  --Cleric
  (98, NULL, 'diety with a simple favored weapon'),
  (99, NULL, 'trained with your deity''s favored weapon'), --Paren
  (100, NULL, 'Feature: harmful font'),
  (101, NULL, 'Feature: healing font'),
  (102, NULL, 'Feature: harmful font or healing font'),
  (103, NULL, 'good alignment'),
  (104, NULL, 'diety that allows Clerics to have both fonts'),
  (105, NULL, 'evil alignment'),
  (106, 271, 'Feat: Communal Healing'),
  (107, 265, 'Feat: Domain Initiate'),
  (108, NULL, 'chaotic, evil, good, or lawful deity'),
  (109, 272, 'Feat: Emblazon Armament'),
  (110, 268, 'Feat: Holy Castigation'),
  (111, 277, 'Feat: Command Undead'),
  (112, NULL, "expert in dietys favored weapon"), --Paren
  (113, NULL, 'one or more domain spells'),
  (114, 293, 'Feat: Replenishment Of War'),
  (115, 285, 'Feat: Advanced Domain'),
  (116, 286, 'Feat: Align Armament'),
  (117, 295, 'Feat: Domain Focus'),
  (118, 301, 'Feat: Swift Banishment'),
  (119, NULL, 'Feature: miraculous spell'),
  --Druid
  (120, NULL, 'Feature: animal order'),
  (121, NULL, 'Feature: leaf order'),
  (122, NULL, 'Feature: storm order'),
  (123, NULL, 'Feature: wild order'),
  (124, NULL, 'a familiar'),
  (125, NULL, 'Strength 14'),
  (126, 316, 'Feat: Wild Shape'),
  (127, 311, 'Feat: Animal Companion'),
  (128, 319, 'Feat: Order Explorer'),
  (129, NULL, 'tempest surge order spell'),
  (130, 322, 'Feat: Mature Animal Companion'),
  (131, NULL, 'leaf order or Wild Shape'), --orCondition
  (132, 333, 'Feat: Soaring Shape'),
  (133, 326, 'Feat: Green Empathy'),
  (134, 317, 'Feat: Call Of The Wild'),
  (135, 332, 'Feat: Incredible Companion'),
  (136, 334, 'Feat: Wind Caller'),
  (137, 321, 'Feat: Form Control'),
  (138, NULL, 'Strength 18'),
  (139, 342, 'Feat: Primal Focus'), --Note in book there is a typo that calls this Wild Focus in prerequisites for Primal WellSpring
  (140, NULL, 'legendary in Nature'),
  (141, 340, 'Feat: Dragon Shape'),
  --Fighter
  (142, NULL, 'trained in Athletics'),
  (143, NULL, 'Aggressive Block or Brutish Shove'), --orCondition
  (144, 359, 'Feat: Power Attack'),
  (145, 370, 'Feat: Double Shot'),
  (146, NULL, 'master in Perception'),
  (147, 367, 'Feat: Dueling Parry'),
  (148, 839, 'Feat: Shield Block'), --Note fighters get this as a class feature but it is also a feat
  (149, 360, 'Feat: Reactive Shield'),
  (151, 389, 'Feat: Dueling Riposte'),
  (152, 391, 'Feat: Incredible Aim'),
  (153, 145, 'Feat: Attack of Opportunity'), --Note fighters get this as a class feature but it is also a feat for barbarians
  (154, 369, 'Feat: Lunge'),
  (155, 523, 'Feat: Twin Riposte'),
  (156, 356, 'Feat: Double Slice'),
  (157, 383, 'Feat: Reflexive Shield'),
  (158, 387, 'Feat: Triple Shot'),
  (159, 377, 'Feat: Twin Parry'),
  --Monk
  (160, 433, 'Feat: Ki Strike'),
  (161, NULL, 'Feature: flurry Of blows'),
  (162, NULL, 'Feature: ki spells'),
  (163, NULL, 'Feature: incredible movement'),
  (164, 430, 'Feat: Crane Stance'),
  (165, 431, 'Feat: Dragon Stance'),
  (166, 435, 'Feat: Mountain Stance'),
  (167, 436, 'Feat: Tiger Stance'),
  (168, 437, 'Feat: Wolf Stance'),
  (169, 443, 'Feat: Deflect Arrow'),
  (170, 459, 'Feat: Ironblood Stance'),
  (171, 453, 'Feat: Mountain Stronghold'),
  (172, 461, 'Feat: Tangled Forest Stance'),
  (173, 463, 'Feat: Wild Winds Initiate'),
  (174, 472, 'Feat: Stance Savant'),
  (175, 471, 'Feat: Meditative Focus'),
  (176, NULL, 'at least two stances'),
  --Ranger
  (177, 493, 'Feat: Monster Hunter'),
  (178, NULL, 'an animal companion'),
  (179, NULL, 'expert in Crafting'),
  (180, 843, 'Feat: Snare Crafting'), --In skill feats
  (181, 506, 'Feat: Snare Specialist'),
  (182, NULL, 'expert in Survival'),
  (183, 780, 'Feat: Experienced Tracker'), --skill feat
  (354, NULL, 'Feature: weapon specialization'),--354 currently, due to missing it before
  (184, NULL, 'master in Crafting'),
  (185, NULL, 'Feature: wild stride'),
  (186, NULL, 'master in Survival'),
  (187, 495, 'Feat: Favored Terrain'),
  (188, NULL, 'master in Stealth'),
  (189, 508, 'Feat: Mature Animal Compainion (Ranger)'),
  (190, NULL, 'master in Nature'),
  (191, 526, 'Feat: Double Prey'),
  (192, 518, 'Feat: Wardens Boon'),
  (193, 519, 'Feat: Camouflage'),
  (194, 496, 'Feat: Hunters Aim'),
  (195, 525, 'Feat: Distracting Shot'),
  (196, 521, 'Feat: Master Monster Hunter'),
  (197, 520, 'Feat: Incredible Companion(Ranger)'),
  (198, NULL, 'Feature: hunters edge'),
  (199, NULL, 'Feature: masterful hunter'),
  (200, NULL, 'legendary in Perception'),
  (201, 502, 'Feat: Far Shot'),
  (202, NULL, 'legendary in Survival'),
  (203, 531, 'Feat: Shared Prey'),
  --Rogue
  (204, NULL, 'trained in Intimidation'),
  (205, NULL, 'Feature: ruffian racket'),
  (206, NULL, 'Feature: scoundrel racket'),
  (207, NULL, 'Feature: thief racket'),
  (208, 563, 'Feat: Poison Weapon'),
  (209, 550, 'Feat: Nimble Dodge'),
  (210, NULL, 'Feature: sneak attack'),
  (211, NULL, 'Feature: debilitating strike'),
  (212, NULL, 'legendary in Acrobatics'),
  (213, NULL, 'legendary in Deception'),
  (214, 828, 'Feat: Quick Squeeze'), --Skill feat
  (215, NULL, 'legendary in Stealth'),
  (216, 577, 'Feat: Sly Striker'),
  (217, 595, 'Feat: Perfect Distraction'),
  --Sorcerer
  (218, NULL, 'bloodline that grants arcane spells'),
  (219, NULL, 'bloodline that grants divine spells'),
  (220, NULL, 'bloodline that grants occult spells'),
  (221, NULL, 'bloodline that grants primal spells'),
  (222, NULL, 'bloodline spell'),
  (223, NULL, 'dispel magic in your spell repetoire'),
  (224, 602, 'Feat: CounterSpell'),
  (225, NULL, 'Feat: Arcane Evolution or Feat: Occult Evolution'),
  (226, NULL, 'Feat: Divine Evolution or Feat: Primal Evolution'),
  (227, 621, 'Feat: Bloodline Focus'),
  (228, 617, 'Feat: Crossblooded Evolution'),
  (229, NULL, 'Feature: bloodline paragon'),
  --Wizard
  (230, NULL, 'Feature: arcane bond'),
  (231, NULL, 'Feature: arcane school'),
  (232, 640, 'Feat: Conceal Spell'),
  (233, NULL, 'Feature: universalist wizard'),
  (234, 636, 'Feat: Hand of the Apprentice'),
  (235, 633, 'Feat: Counterspell'),
  -- TODO (236, 826, 'Feat: Quick Recognize'),typo in book should be Quick Recognition
  (237, NULL, 'Feature: archwizards spellcraft'),
  --Alchemist Dedication
  (238, NULL, 'Intelligence 14'),
  (239, 665, 'Feat: Alchemist Dedication'),
  (240, 666, 'Feat: Basic Concoction'),
  (241, 669, 'Feat: Expert Alchemy'),
  --Barbarian Dedication
  (242, NULL, 'Constitution 14'),
  (243, 672, 'Feat: Barbarian Dedication'),
  (244, NULL, 'class granting no more Hit Points per level than 10 + your constituion modifier'),
  (245, 673, 'Feat: Basic Fury'),
  (246, NULL, 'expert in Fortitude saves'),
  --Bard Dedication
  (247, NULL, 'Charisma 14'),
  (248, 677, 'Feat: Bard Dedication'),
  (249, 679, "Feat: Basic Muse's Whispers"),
  (250, 678, 'Feat: Basic Bard Spellcasting'),
  (251, 684, 'Feat: Expert Bard Spellcasting'),
  (252, NULL, 'legendary in Occultism'),
  --Champion Dedication
  (253, 868, 'Feat: Champion Dedication'),
  (254, NULL, 'class granting no more Hit Points per level than 8 + your Constitution modifier'),
  (255, 687, 'Feat: Basic Devotion'),
  (256, NULL, 'expert in unarmored defense or one or more types of armor'),
  --Cleric Dedication
  (257, NULL, 'Wisdom 14'),
  (258, 694, 'Feat: Cleric Dedication'),
  (259, 696, 'Feat: Basic Dogma'),
  (260, 695, 'Feat: Basic Cleric Spellcasting'),
  (261, NULL, 'master in Religion'),
  (262, 699, 'Feat: Expert Cleric Spellcasting'),
  (263, NULL, 'legendary in Religion'),
  --Druid Dedication
  (264, NULL, 'Feat: Druid Dedication'),
  (265, 703, 'Feat: Basic Wilding'),
  (266, 702, 'Feat: Basic Druid Spellcasting'),
  (267, 707, 'Feat: Expert Druid Spellcasting'),
  --Fighter Dedication
  (268, NULL, 'Dexterity 14'),
  (269, 709, 'Feat: Fighter Dedication'),
  (270, 710, 'Feat: Basic Maneuver'),
  (271, NULL, 'expert in any kind of weapon or unarmed attack'),
  --Monk Dedication
  (272, 715, 'Feat: Monk Dedication'),
  (273, 716, 'Feat: Basic Kata'),
  (274, NULL, 'expert in at least one saving throw'),
  --Ranger Dedication
  (275, 722, 'Feat: Ranger Dedication'),
  (276, 723, 'Feat: Basic Hunters Trick'),
  (277, NULL, 'expert in Perception'),
  --Rogue Dedication
  (278, 727, 'Feat: Rogue Dedication'),
  (279, 728, 'Feat: Basic Trickery'),
  (280, NULL, 'trained in at least one skill and expert in at least one skill'),
  (281, NULL, 'expert in Reflex saves'),
  --Sorcerer Dedication
  (282,734 , 'Feat: Sorcerer Dedication'),
  (283, 736, 'Feat: Basic Blood Potency'),
  (284, 735, 'Feat: Basic Sorcerer Spellcasting'),
  (285, NULL, 'master in Arcana, Nature, Occultism, Religion, depending on bloodline'),
  (286, 740, 'Feat: Expert Sorcerer Spellcasting'),
  (287, NULL, 'legendary in Arcana, Nature, Occultism, Religion, depending on bloodline'),
  -- Wizard Dedication
  (288, 742, 'Feat: Wizard Dedication'),
  (289, 744, 'Feat: Basic Arcana'),
  (290, 745, 'Feat: Basic Wizard Spellcasting'),
  (291, NULL, 'master in Arcana'),
  (292, 748, 'Feat: Expert Wizard Spellcasting'),
  (293, NULL, 'Feat: legendary in Arcana'),
  --Feats Section
  (294, NULL, 'Class Level 3 '),
  (295, NULL, 'trained in Lore'),
  (296, NULL, 'trained in Arcana'),
  (297, NULL, 'trained in at least one skill'),
  (298, NULL, 'expert in a skill with the Recall Knowledge action'),
  (299, NULL, 'Assurance in that skill'),
  (300, NULL, 'trained in Diplomacy'),
  (301, NULL, 'Class Level 7'),
  (302, NULL, 'Class Level 15'),
  (303, NULL, 'master in Intimidation'),
  (304, NULL, 'trained in Medicine'),
  (305, NULL, 'trained in Acrobatics'),
  (306, NULL, 'trained in Deception'),
  (307, NULL, 'legendary in Athletics'),
  (308, NULL, 'expert in Nature'),
  (309, NULL, 'expert in Deception'),
  (310, NULL, 'expert in Society'),
  (311, 772, 'Feat: Courtly Graces'),
  (312, NULL, 'expert in Medicine'),
  (313, NULL, 'trained in Society'),
  (314, NULL, 'legendary in Crafting'),
  (315, NULL, 'trained in a skill with the Recall Knowledge action'),
  (316, NULL, 'trained in Stealth'),
  (317, NULL, 'trained in Survival'),
  (318, NULL, 'Feat: trained in Performance'),
  (319, 844, 'Feat: Specialty Crafting'),
  (320, NULL, 'Class Level 11'),
  (321, NULL, 'Charisma 16'),
  (322, NULL, 'Strength 16'),
  (323, NULL, 'expert in Intimidation'),
  (324, NULL, 'master in Acrobatics'),
  (325, NULL, 'legendary in Society'),
  (326, 814, 'Feat: Multilingual'),
  (327, NULL, 'legendary in Medicine'),
  (328, NULL, 'legendary in Diplomacy'),
  (329, NULL, 'legendary in Performance'),
  (330, 862, 'Feat: Virtuosic Performer'),
  (331, NULL, 'legendary in Lore'),
  (332, NULL, 'legendary in Sneak'),
  (333, 850, 'Feat: Swift Sneak'),
  (334, NULL, 'legendary in Thievery'),
  (335, 818, 'Feat: Pickpocket'),
  (336, NULL, 'trained in Nature'),
  (337, NULL, 'expert in Acrobatics'),
  (338, NULL, 'trained in Occultism'),
  (339, NULL, 'trained in Thievery'),
  (340, NULL, 'trained in Arcana, Nature, Occultism, or Religion'),
  (341, NULL, 'master in Arcana, Nature, Occultism, or Religion'),
  (342, 834, 'Feat: Recognize Spell'),
  (343, NULL, 'master in Thievery'),
  (344, NULL, 'expert in Stealth'),
  (345, NULL, 'legendary in Intimidation'),
  (346, NULL, 'master in Diplomacy'),
  (347, NULL, 'Intelligence 12'),
  (348, NULL, 'master in Deception'),
  (349, NULL, 'trained in Religion'),
  (350, NULL, 'legendary in Arcana'),
  (351, NULL, 'expert in Lore'),
  (352, NULL, 'expert in Thievery'),
  (236, 826, 'Feat: Quick Recognition'),
  (355, NULL, 'expert in Arcana. Nature, Occultism, or Religion'),
  (356, NULL, 'expert in Diplomacy');

BEGIN TRANSACTION;
-- Dwarf
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (1, 1); -- Dwarven Lore
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (2, 1); -- Dwarven Weapon Familiarity
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (3, 1); -- Rock Runner
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (4, 1); -- Stonecunning
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (5, 1); -- Unburdened Iron
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (6, 1); -- Vengeful Hatred
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (7, 2); -- Boulder Roll
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (7, 16); -- Boulder Roll
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (8, 2); -- Dwarven Weapon Cunning
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (8, 17); -- Dwarven Weapon Cunning
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (9, 3); -- Mountain's Stoutness
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (10, 3); -- Stonewalker
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (11, 4); -- Dwarven Weapon Expertise
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (11, 17); -- Dwarven Weapon Expertise
-- Elf
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (12, 1); -- Ancestral Longevity
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (12, 18); -- Ancestral Longevity
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (13, 1); -- Elven Lore
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (14, 1); -- Elven Weapon Familiarity
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (15, 1); -- Forlorn
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (16, 1); -- Nimble Elf
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (17, 1); -- Otherworldly Magic
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (18, 1); -- Unwavering Mien
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (19, 2); -- Ageless Patience
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (20, 2); -- Elven Weapon Elegance
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (20, 19); -- Elven Weapon Elegance
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (21, 3); -- Elf Step
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (22, 3); -- Expert Longevity
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (22, 20); -- Expert Longevity
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (23, 4); -- Universal Longevity
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (23, 21); -- Universal Longevity
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (24, 4); -- Elven Weapon Expertise
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (24, 19); -- Elven Weapon Expertise
-- Gnome
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (25, 1); -- Animal Accomplice
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (26, 1); -- Burrow Elocutionist
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (27, 1); -- Fey Fellowship
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (28, 1); -- First World Magic
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (29, 1); -- Gnome Obsession
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (30, 1); -- Gnome Weapon Familiarity
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (31, 1); -- Illusion Sense
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (32, 2); -- Animal Elocutionist
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (32, 22); -- Animal Elocutionist
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (33, 2); -- Energized Font
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (33, 23); -- Energized Font
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (33, 24); -- Energized Font
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (34, 2); -- Gnome Weapon Innovator
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (34,  25); -- Gnome Weapon Innovator
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (35, 3); -- First World Adept
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (35, 26); -- First World Adept
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (36, 3); -- Vivacious Conduit
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (37, 4); -- Gnome Weapon Expertise
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (37,  25); -- Gnome Weapon Expertise
--Goblin
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (38, 1); -- Burn It!
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (39, 1); -- City Scavenger
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (40, 1); -- Goblin Lore
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (41, 1); -- Goblin Scuttle
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (42, 1); -- Goblin Song
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (43, 1); -- Goblin Weapon Familiarity
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (44, 1); -- Junk Tinker
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (45, 1); -- Rough Rider
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (46, 1); -- Very Sneaky
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (47, 2); -- Goblin Weapon Frenzy
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (47, 27); -- Goblin Weapon Frenzy
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (48, 3); -- Cave Climber
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (49, 3); -- Skittering Scuttle
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (49, 28); -- Skittering Scuttle
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (50, 4); -- Goblin Weapon Expertise
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (50, 27); -- Goblin Weapon Expertise
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (51, 4); -- Very, Very Sneaky
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (51, 353); -- Very, Very Sneaky
-- Halfling
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (52, 1); -- Distracting Shadows
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (53, 1); -- Halfling Lore
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (54, 1); -- Halfling Luck
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (55, 1); -- Halfling Weapon Familiarity
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (56, 1); -- Sure Feet
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (57, 1); -- Titan Slinger
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (58, 1); -- Unfettered Halfling
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (59, 1); -- Watchful Halfling
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (60, 2); -- Cultural Adaptability
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (61, 2); -- Halfling Weapon Trickster
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (61, 29); -- Halfling Weapon Trickster
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (62, 3); -- Guiding Luck
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (62, 30); -- Guiding Luck
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (63, 3); -- Irrepressible
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (64, 4); -- Ceaseless Shadows
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (64, 31); -- Ceaseless Shadows
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (65, 4); -- Halfling Weapon Expertise
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (65, 29); -- Halfling Weapon Expertise
-- Human
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (66, 1); -- Adapted Cantrip
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (66, 32); -- Adapted Cantrip
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (67, 1); -- Cooperative Nature
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (68, 1); -- General Training
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (69, 1); -- Haughty Obstinacy
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (70, 1); -- Natural Ambition
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (71, 1); -- Natural Skill
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (72, 1); -- Unconventional Weaponry
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (73, 2); -- Adaptive Adept
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (73, 33); -- Adaptive Adept
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (73, 34); -- Adaptive Adept
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (74, 2); -- Clever Improviser
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (75, 3); -- Cooperataive Soul
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (75, 35); -- Cooperataive Soul
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (76, 3); -- Incredible Improvisation
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (76, 36); -- Incredible Improvisation
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (77, 3); -- Multitalented
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (78, 4); -- Unconventional Expertise
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (78, 37); -- Unconventional Expertise
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (78, 38); -- Unconventional Expertise
-- Half-Elf
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (79, 1); -- Elf Atavism
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (80, 2); -- Inspire Imitation
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (81, 2); -- Supernatural Charm
-- Half-Orc
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (82, 1); -- Monstrous Peacemaker
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (83, 1); -- Orc Ferocity
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (84, 1); -- Orc Sight
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (84, 39); -- Orc Sight
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (85, 1); -- Orc Superstition
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (86, 1); -- Orc Weapon Famailiarity
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (87, 2); -- Orc Weapon Carnage
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (87, 40); -- Orc Weapon Carnage
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (88, 2); -- Victorious Vigor
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (89, 3); -- Pervasive Superstition
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (89, 41); -- Pervasive Superstition
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (90, 4); -- Incredible Ferocity
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (90, 94); -- Incredible Ferocity
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (91, 4); -- Orc Weapon Expertise
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (91, 40); -- Orc Weapon Expertise
--Alchemist
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (92, 5); -- Alchemical Familiar
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (93, 5); -- Alchemical Savant
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (93, 42); -- Alchemical Savant
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (94, 5); -- Far Lobber
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (95, 5); -- Quick Bomber
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (96, 6); -- Poison Resistance
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (97, 6); -- Revivifying Mutagen
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (98, 6); -- Smoke Bomb
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (99, 7); -- Calculated Splash
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (100, 7); -- Efficient Alchemy
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (101, 7); -- Enduring Alchemy
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (102, 8); -- Combine Elixirs
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (103, 8); -- Debilitating Bomb
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (104, 8); -- Directional Bombs
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (105, 9); -- Feral Mutagen
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (106, 9); -- Powerful Alchemy
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (107, 9); -- Sticky Bomb
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (108, 10); -- Elastic Mutagen
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (109, 10); -- Expanded Splash
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (109, 43); -- Expanded Splash
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (110, 10); -- Greater Debilitating Bomb
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (110, 44); -- Greater Debilitating Bomb
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (111, 10); -- Merciful Elixir
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (112, 10); -- Potent Poisoner
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (112, 45); -- Potent Poisoner
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (113, 11); -- Extend Elixir
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (114, 11); -- Invincible Mutagen
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (115, 11); -- Uncanny Bombs
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (115, 46); -- Uncanny Bombs
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (116, 12); -- Glib Mutagen
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (117, 12); -- Greater Merciful Elixir
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (117, 47); -- Greater Merciful Elixir
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (118, 12); -- True Debilitating Bomb
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (118, 48); -- True Debilitating Bomb
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (119, 13); -- Eternal Elixir
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (119, 49); -- Eternal Elixir
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (120, 13); -- Exploitive Bomb
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (121, 13); -- Genius Mutagen
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (122, 13); -- Persistent Mutagen
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (122, 49); -- Persistent Mutagen
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (123, 14); -- Improbable Elixirs
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (124, 14); -- Mindblank Mutagen
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (125, 14); -- Miracle Worker
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (126, 14); -- Perfect Debilitation
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (127, 15); -- Craft Philosopher's Stone
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (128, 15); -- Mega Bomb
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (128, 50); -- Mega Bomb
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (129, 15); -- Perfect Mutagen
--Barbarian
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (130, 5); -- Acute Vision
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (131, 5); -- Moment of Clarity
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (132, 5); -- Raging Intimidation
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (133, 5); -- Raging Thrower
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (134, 5); -- Sudden Charge
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (135, 6); -- Acute Scent
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (135, 51); -- Acute Scent
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (136, 6); -- Furious Finish
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (137, 6); -- No Escape
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (138, 6); -- Second Wind
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (139, 6); -- Shake it Off
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (140, 7); -- Fast Movement
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (141, 7); -- Raging Athlete
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (141, 52); -- Raging Athlete
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (142, 7); -- Swipe
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (143, 7); -- Wounded Rage
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (144, 8); -- Animal Skin
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (144, 53); -- Animal Skin
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (145, 8); -- Attack of Opportunity
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (146, 8); -- Brutal Bully
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (146, 52); -- Brutal Bully
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (147, 8); -- Cleave
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (148, 8); -- Dragon's Rage Breath
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (148, 54); -- Dragon's Rage Breath
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (149, 8); -- Giant's Stature
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (149, 55); -- Giant's Stature
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (150, 8); -- Spirits' Interference
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (150, 56); -- Spirits' Interference
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (151, 9); -- Animal Rage
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (151, 53); -- Animal Rage
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (152, 9); -- Furious Bully
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (152, 57); -- Furious Bully
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (153, 9); -- Renewed Vigor
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (154, 9); -- Share Rage
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (155, 9); -- Sudden Leap
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (156, 9); -- Thrash
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (157, 10); -- Come and Get Me
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (158, 10); -- Furious Sprint
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (159, 10); -- Great 58
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (159, 58); -- Great 58
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (160, 10); -- Knockback
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (161, 10); -- Terrifying Howl
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (161, 59); -- Terrifying Howl
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (162, 11); -- Dragon's Rage Wings
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (162, 54); -- Dragon's Rage Wings
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (163, 11); -- Furious Grab
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (164, 11); -- Predator's Pounce
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (164, 53); -- Predator's Pounce
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (165, 11); -- Spirit's Wrath
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (165, 56); -- Spirit's Wrath
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (166, 11); -- Titan's Stature
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (166, 55); -- Titan's Stature
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (166, 60); -- Titan's Stature
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (167, 12); -- Awesome Blow
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (167, 61); -- Awesome Blow
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (168, 12); -- Giant's Lunge
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (168, 55); -- Giant's Lunge
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (169, 12); -- Vengeful Strike
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (169, 62); -- Vengeful Strike
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (170, 12); -- Whirlwind Strike
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (171, 13); -- Collateral Thrash
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (171, 63); -- Collateral Thrash
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (172, 13); -- Dragon Transformation
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (172, 54); -- Dragon Transformation
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (172, 64); -- Dragon Transformation
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (173, 13); -- Reckless Abandon
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (174, 14); -- Brutal Critical
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (175, 14); -- Perfect Clarity
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (176, 14); -- Vicious Evisceration
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (177, 15); -- Contagious Rage
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (177, 65); -- Contagious Rage
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (178, 15); -- Quaking Stomp
-- Bard
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (179, 5); -- Bardic Lore
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (179, 66); -- Bardic Lore
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (180, 5); -- Lingering Composition
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (180, 67); -- Lingering Composition
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (180, 23); -- Lingering Composition
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (181, 5); -- Reach Spell
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (182, 5); -- Versatile Performance
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (182, 68); -- Versatile Performance
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (183, 6); -- Cantrip Expansion (Bard)
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (184, 6); -- Esoteric Polymath
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (184, 68); -- Esoteric Polymath
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (185, 6); -- Inspire Competence
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (185, 67); -- Inspire Competence
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (186, 6); -- Loremaster's Etude
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (186, 66); -- Loremaster's Etude
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (186, 23); -- Loremaster's Etude
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (187, 6); -- Multifarious Muse
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (188, 7); -- Inspire Defense
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (188, 67); -- Inspire Defense
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (189, 7); -- Melodious Spell
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (190, 7); -- Triple Time
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (191, 7); -- Versatile Signature
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (191, 68); -- Versatile Signature
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (192, 8); -- Dirge of Doom
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (193, 8); -- Harmonize
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (193, 67); -- Harmonize
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (194, 8); -- Steady Spellcasting
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (195, 9); -- Eclectic Skill
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (195, 68); -- Eclectic Skill
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (195, 69); -- Eclectic Skill
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (196, 9); -- Inspire Heroics
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (196, 67); -- Inspire Heroics
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (196, 23); -- Inspire Heroics
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (197, 9); -- Know-It-All
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (197, 66); -- Know-It-All
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (198, 10); -- House of Imaginary Walls
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (199, 10); -- Quickened Casting
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (200, 10); -- Unusual Composition
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (200, 68); -- Unusual Composition
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (201, 11); -- Eclectic Polymath
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (201, 70); -- Eclectic Polymath
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (202, 11); -- Inspirational Focus
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (203, 12); -- Allegro
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (204, 12); -- Soothing Ballad
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (204, 23); -- Soothing Ballad
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (205, 12); -- True Hypercognition
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (205, 66); -- True Hypercognition
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (206, 13); -- Effortless Concentration
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (207, 13); -- Studious Capacity
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (207, 66); -- Studious Capacity
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (207, 71); -- Studious Capacity
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (208, 14); -- Deep Lore
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (208, 66); -- Deep Lore
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (208, 71); -- Deep Lore
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (209, 14); -- Eternal Composition
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (209, 67); -- Eternal Composition
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (210, 14); -- Impossible Polymath
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (210, 72); -- Impossible Polymath
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (210, 70); -- Impossible Polymath
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (211, 15); -- Fatal Aria
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (211, 23); -- Fatal Aria
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (212, 15); -- Perfect Encore
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (212, 73); -- Perfect Encore
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (213, 15); -- Symphony of the Muses
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (213, 74); -- Symphony of the Muses
-- Champion
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (214, 5); -- Deity's Domain
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (215, 5); -- Ranged Reprisal
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (215, 75); -- Ranged Reprisal
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (216, 5); -- Unimpeded Step
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (216, 76); -- Unimpeded Step
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (217, 5); -- Weight of Guilt
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (217, 77); -- Weight of Guilt
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (218, 6); -- Divine Grace
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (219, 6); -- Dragonslayer Oath
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (219, 78); -- Dragonslayer Oath
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (220, 6); -- Fiendsbane Oath
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (220, 78); -- Fiendsbane Oath
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (221, 6); -- Shining Oath
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (221, 78); -- Shining Oath
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (222, 6); -- Vengeful Oath
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (222, 75); -- Vengeful Oath
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (223, 7); -- Aura of Courage
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (223, 78); -- Aura of Courage
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (224, 7); -- Divine Health
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (224, 78); -- Divine Health
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (225, 7); -- Mercy
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (226, 8); -- Attack of Opportunity
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (225, 79); -- Mercy
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (227, 8); -- Litany Against Wrath
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (227, 81); -- Litany Against Wrath
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (227, 78); -- Litany Against Wrath
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (228, 8); -- Loyal Warhouse
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (228, 80); -- Loyal Warhouse
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (229, 8); -- Shield Warden
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (229, 82); -- Shield Warden
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (229, 78); -- Shield Warden
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (230, 8); -- Smite Evil
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (230, 83); -- Smite Evil
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (231, 9); -- Advanced Deity's Domain
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (231, 84); -- Advanced Deity's Domain
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (232, 9); -- Greater Mercy
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (232, 85); -- Greater Mercy
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (233, 9); -- Heal Mount
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (233, 80); -- Heal Mount
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (234, 9); -- Quick Block
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (235, 9); -- Second Ally
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (235, 86); -- Second Ally
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (236, 9); -- Sense Evil
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (236, 78); -- Sense Evil
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (237, 10); -- Devoted Focus
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (237, 81); -- Devoted Focus
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (238, 10); -- Imposing Destrier
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (238, 80); -- Imposing Destrier
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (238, 87); -- Imposing Destrier
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (239, 10); -- Litany Against Sloth
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (239, 81); -- Litany Against Sloth
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (239, 78); -- Litany Against Sloth
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (240, 10); -- Radiant Blade Spirit
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (240, 83); -- Radiant Blade Spirit
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (241, 10); -- Shield of Reckoning
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (241, 89); -- Shield of Reckoning
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (241, 82); -- Shield of Reckoning
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (241, 78); -- Shield of Reckoning
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (241, 88); -- Shield of Reckoning
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (242, 11); -- Affliction Mercy
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (242, 85); -- Affliction Mercy
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (243, 11); -- Aura of Faith
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (243, 78); -- Aura of Faith
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (244, 11); -- Blade of Justice
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (244, 75); -- Blade of Justice
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (245, 11); -- Champion's Sacrifice
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (245, 78); -- Champion's Sacrifice
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (246, 11); -- Divine Wall
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (247, 11); -- Lasting Doubt
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (247, 77); -- Lasting Doubt
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (248, 11); -- Liberating Stride
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (248, 76); -- Liberating Stride
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (249, 12); -- Anchoring Aura
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (249, 90); -- Anchoring Aura
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (250, 12); -- Aura of Life
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (250, 91); -- Aura of Life
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (251, 12); -- Aura of Righteousness
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (251, 78); -- Aura of Righteousness
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (252, 12); -- Aura of Vengeance
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (252, 92); -- Aura of Vengeance
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (252, 93); -- Aura of Vengeance
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (253, 12); -- Divine Reflexes
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (254, 12); -- Litany of Righteousness
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (254, 78); -- Litany of Righteousness
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (255, 12); -- Wyrmbane Aura
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (255, 95); -- Wyrmbane Aura
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (256, 13); -- Auspicious Mount
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (256, 80); -- Auspicious Mount
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (256, 96); -- Auspicious Mount
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (257, 13); -- Instrument of Zeal
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (257, 83); -- Instrument of Zeal
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (257, 78); -- Instrument of Zeal
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (258, 13); -- Shield of Grace
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (258, 88); -- Shield of Grace
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (259, 14); -- Celestial Form
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (259, 78); -- Celestial Form
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (260, 14); -- Ultimate Mercy
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (260, 85); -- Ultimate Mercy
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (261, 15); -- Celestial Mount
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (261, 80); -- Celestial Mount
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (261, 78); -- Celestial Mount
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (262, 15); -- Radiant Blade Master
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (262, 83); -- Radiant Blade Master
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (262, 97); -- Radiant Blade Master
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (263, 15); -- Shield Paragon
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (263, 82); -- Shield Paragon
-- Cleric
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (264, 5); -- Deadly Simplicity
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (264, 98); -- Deadly Simplicity
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (264, 99); -- Deadly Simplicity
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (265, 5); -- Domain Initiate
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (266, 5); -- Harming Hands
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (266, 100); -- Harming Hands
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (267, 5); -- Healing Hands
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (267, 101); -- Healing Hands
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (268, 5); -- Holy Castigation
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (268, 103); -- Holy Castigation
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (270, 6); -- Cantrip Expansion (Cleric)
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (271, 6); -- Communal Healing
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (272, 6); -- Emblazon Armament
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (273, 6); -- Sap Life
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (274, 6); -- Turn Undead
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (275, 6); -- Versatile Font
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (275, 102); -- Versatile Font
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (275, 104); -- Versatile Font
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (276, 7); -- Channel Smite
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (276, 102); -- Channel Smite
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (277, 7); -- Command Undead
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (277, 100); -- Command Undead
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (277, 105); -- Command Undead
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (278, 7); -- Directed Channel
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (279, 7); -- Improved Communal Healing
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (279, 106); -- Improved Communal Healing
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (280, 7); -- Necrotic Infusion
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (280, 100); -- Necrotic Infusion
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (280, 105); -- Necrotic Infusion
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (281, 8); -- Cast Down
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (281, 102); -- Cast Down
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (282, 8); -- Divine Weapon
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (283, 8); -- Selective Energy
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (284, 8); -- Steady Spellcasting
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (285, 9); -- Advanced Domain
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (285, 107); -- Advanced Domain
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (286, 9); -- Align Armament
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (286, 108);-- Align Armament
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (287, 9); -- Channeled Succor
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (287, 101); -- Channeled Succor
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (288, 9); -- Cremate Undead
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (289, 9); -- Emblazon Energy
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (289, 109); -- Emblazon Energy
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (290, 10); -- Castigating Weapon
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (290, 110); -- Castigating Weapon
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (291, 10); -- Heroic Recovery
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (291,101); -- Heroic Recovery
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (291,103); -- Heroic Recovery
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (292, 10); -- Improved Command Undead
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (292, 100); -- Improved Command Undead
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (292, 111); -- Improved Command Undead
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (292, 105); -- Improved Command Undead
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (293, 10); -- Replenishment of War
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (293, 112); -- Replenishment of War
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (294, 11); -- Defensive Recovery
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (294, 102); -- Defensive Recovery
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (295, 11); -- Domain Focus
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (295, 113); -- Domain Focus
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (296, 11); -- Emblazon Antimagic
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (296, 109); -- Emblazon Antimagic
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (297, 11); -- Shared Replenishment
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (297, 114); -- Shared Replenishment
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (298, 12); -- Deity's Protection
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (298, 115); -- Deity's Protection
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (299, 12); -- Extend Armament Alignment
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (299, 116); -- Extend Armament Alignment
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (300, 12); -- Fast Channel
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (300, 102); -- Fast Channel
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (301, 12); -- Swift Banishment
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (302, 13); -- Eternal Bane
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (302, 105); -- Eternal Bane
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (303, 13); -- Eternal Blessing
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (303,103); -- Eternal Blessing
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (304, 13); -- Resurrectionist
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (305, 14); -- Domain Wellspring
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (305, 117); -- Domain Wellspring
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (306, 14); -- Echoing Channel
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (307, 14); -- Improved Swift Banishment
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (307, 118); -- Improved Swift Banishment
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (308, 15); -- Avatar's Audience
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (309, 15); -- Maker of Miracles
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (309, 119); -- Maker of Miracles
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (310, 15); -- Metamagic Channel
--Druid
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (311, 5); -- Animal Companion
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (311, 120); -- Animal Companion
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (312, 5); -- Leshy Familiar
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (312, 121); -- Leshy Familiar
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (314, 5); -- Storm Born
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (314, 122); -- Storm Born
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (315, 5); -- Widen Spell
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (316, 5); -- Wild Shape
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (316, 123); -- Wild Shape
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (317, 6); -- Call of the Wild
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (318, 6); -- Enhanced Familiar
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (318, 124); -- Enhanced Familiar
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (319, 6); -- Order Explorer
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (320, 6); -- Poison Resistance
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (321, 7); -- Form Control
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (321, 125); -- Form Control
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (321, 126); -- Form Control
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (322, 7); -- Mature Animal Companion (Druid)
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (322, 127); -- Mature Animal Companion (Druid)
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (323, 7); -- Order Magic
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (323, 128); -- Order Magic
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (324, 7); -- Thousand Faces
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (324, 126); -- Thousand Faces
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (325, 7); -- Woodland Stride
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (325, 121); -- Woodland Stride
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (326, 7); -- Green Empathy
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (326, 121); -- Green Empathy
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (327, 8); -- Insect Shape
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (327, 126); -- Insect Shape
--328 Shared with Bard
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (329, 8); -- Storm Retribution
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (329, 122); -- Storm Retribution
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (329, 129); -- Storm Retribution
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (330, 9); -- Ferocious Shape
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (330, 126); -- Ferocious Shape
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (331, 9); -- Fey Caller
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (332, 9); -- Incredible Companion (Druid)
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (332, 130); -- Incredible Companion (Druid)
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (333, 9); -- Soaring Shape
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (333, 126); -- Soaring Shape
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (334, 9); -- Wind Caller
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (334, 122); -- Wind Caller
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (335, 10); -- Elemental Shape
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (335, 126); -- Elemental Shape
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (336, 10); -- Healing Transformation
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (337, 10); -- Overwhelming Energy
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (338, 10); -- Plant Shape
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (338, 131); -- Plant Shape
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (339, 10); -- Side by Side (Druid)
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (339, 127); -- Side by Side (Druid)
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (340, 11); -- Dragon Shape
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (340, 132); -- Dragon Shape
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (341, 11); -- Green Tongue
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (341, 133); -- Green Tongue
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (342, 11); -- Primal Focus
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (343, 11); -- Primal Summons
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (343, 134); -- Primal Summons
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (344, 12); -- Specialized Companion (Druid)
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (344, 135); -- Specialized Companion (Druid)
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (345, 12); -- Timeless Nature
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (346, 12); -- Verdant Metamorphosis
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (346, 121); -- Verdant Metamorphosis
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (348, 13); -- Impaling Briars
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (348, 121); -- Impaling Briars
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (349, 13); -- Monstrosity Shape
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (349, 126); -- Monstrosity Shape
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (350, 14); -- Invoke Disaster
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (350, 136); -- Invoke Disaster
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (351, 14); -- Perfect Form Control
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (351, 137); -- Perfect Form Control
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (351, 138); -- Perfect Form Control
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (352, 14); -- Primal Wellspring
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (352, 139); -- Primal Wellspring
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (353, 15); -- Hierophant's Power
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (353, 140); -- Hierophant's Power
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (354, 15); -- Leyline Conduit
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (355, 15); -- True Shapeshifter
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (355, 141); -- True Shapeshifter
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (355, 126); -- True Shapeshifter
--Fighter
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (356, 5); -- Double Slice
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (357, 5); -- Exacting Strike
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (358, 5); -- Point-Blank Shot
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (359, 5); -- Power Attack
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (360, 5); -- Reactive Shield
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (361, 5); -- Snagging Strike
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (363, 6); -- Aggressive Block
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (364, 6); -- Assisting Shot
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (365, 6); -- Brutish Shove
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (366, 6); -- Combat Grab
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (367, 6); -- Dueling Parry
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (368, 6); -- Intimidating Strike
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (369, 6); -- Lunge
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (370, 7); -- Double Shot
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (371, 7); -- Dual-Handed Assault
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (372, 7); -- Knockdown
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (372, 142); -- Knockdown
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (373, 7); -- Powerful Shove
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (373, 143); -- Powerful Shove
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (374, 7); -- Quick Reversal
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (375, 7); -- Shielded Stride
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (377, 7); -- Twin Parry
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (378, 8); -- Advanced Weapon Training
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (379, 8); -- Advantageous Assault
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (380, 8); -- Disarming Stance
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (380, 142); -- Disarming Stance
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (381, 8); -- Furious Focus
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (381, 144); -- Furious Focus
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (382, 8); -- Guardian's Deflection
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (383, 8); -- Reflexive Shield
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (384, 8); -- Revealing Stab
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (385, 8); -- Shatter Defenses
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (386, 8);
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (386, 148);
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (387, 8); -- Triple Shot
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (387, 145); -- Triple Shot
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (388, 9); -- Blind-Fight
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (388, 146); -- Blind-Fight
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (389, 9); -- Dueling Riposte
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (389, 147); -- Dueling Riposte
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (390, 9); -- Felling Strike
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (391, 9); -- Incredible Aim
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (392, 9); -- Mobile Shot Stance
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (393, 9); -- Positioning Assault
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (394, 9); -- Quick Shield Block
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (394, 148); -- Quick Shield Block
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (394, 149); -- Quick Shield Block
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (395, 9); -- Sudden Leap
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (396, 10); -- Agile Grace
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (397, 10); -- Certain Strike
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (398, 10); -- Combat Reflexes
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (399, 10); -- Debilitating Shot
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (400, 10); -- Disarming Twist
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (400, 142); -- Disarming Twist
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (401, 10); -- Disruptive Stance
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (402, 10); -- Fearsome Brute
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (403, 10); -- Improved Knockdown
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (403, 61); -- Improved Knockdown
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (404, 10); -- Mirror Shield
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (523, 10); -- Twin Riposte
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (406, 11); -- Brutal Finish
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (407, 11); -- Dueling Dance
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (407, 147); -- Dueling Dance
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (408, 11); -- Flinging Shove
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (408, 143); -- Flinging Shove
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (409, 11); -- Improved Dueling Riposte
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (409, 151); -- Improved Dueling Riposte
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (410, 11); -- Incredible Ricochet
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (410, 152); -- Incredible Ricochet
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (411, 11); -- Lunging Stance
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (411, 153); -- Lunging Stance
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (411, 154); -- Lunging Stance
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (412, 11); -- Paragon's Guard
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (413, 11); -- Spring Attack
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (414, 12); -- Desperate Finisher
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (415, 12); -- Determination
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (416, 12); -- Guiding Finish
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (417, 12); -- Guiding Riposte
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (417, 151); -- Guiding Riposte
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (418, 12); -- Improved Twin Riposte (Fighter)
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (418, 155); -- Improved Twin Riposte (Fighter)
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (419, 12); -- Stance Savant (Fighter)
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (420, 12); -- Two-Weapon Flurry
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (422, 13); -- Graceful Poise
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (422, 156); -- Graceful Poise
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (423, 13); -- Improved Reflexive Shield
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (423, 157); -- Improved Reflexive Shield
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (424, 13); -- Multishot Stance
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (424, 158); -- Multishot Stance
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (425, 13); -- Twinned Defense
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (425, 159); -- Twinned Defense
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (426, 14); -- Impossible Volley
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (427, 14); -- Savage Critical
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (428, 15); -- Boudless Reprisals
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (429, 15); -- Weapon Supremacy
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (430, 5); -- Crane Stance
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (431, 5); -- Dragon Stance
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (432, 5); -- Ki Rush
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (433, 5); -- Ki Strike
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (434, 5); -- Monastic Weaponry
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (435, 5); -- Mountain Stance
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (436, 5); -- Tiger Stance
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (437, 5); -- Wolf Stance
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (438, 6); -- Brawling Focus
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (439, 6); -- Crushing Grab
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (440, 6); -- Dancing Leaf
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (441, 6); -- Elemental Fist
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (441, 160); -- Elemental Fist
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (442, 6); -- Stunning Fist
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (442, 161); -- Stunning Fist
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (443, 7); -- Deflect Arrows
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (444, 7); -- Flurry of Maneuvers
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (444, 52); -- Flurry of Maneuvers
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (445, 7); -- Flying Kick
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (446, 7); -- Guarded Movement
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (447, 7); -- Stand Still
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (448, 7); -- Wholeness of Body
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (448, 162); -- Wholeness of Body
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (449, 8); -- Abundant Step
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (449, 163); -- Abundant Step
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (449, 162); -- Abundant Step
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (450, 8); -- Crane Flutter
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (450, 164); -- Crane Flutter
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (451, 8); -- Dragon Roar
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (451, 165); -- Dragon Roar
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (452, 8); -- Ki Blast
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (452, 162); -- Ki Blast
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (453, 8); -- Mountain Stronghold
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (453, 166); -- Mountain Stronghold
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (454, 8); -- Tiger Slash
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (454, 167); -- Tiger Slash
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (455, 8); -- Water Step
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (456, 8); -- Whirling Throw
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (457, 8); -- Wolf Drag
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (457, 168); -- Wolf Drag
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (458, 9); -- Arrow Snatching
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (458, 169); -- Arrow Snatching
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (459, 9); -- Ironblood Stance
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (460, 9); -- Mixed Maneuver
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (460, 57); -- Mixed Maneuver
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (461, 9); -- Tangled Forest Stance
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (462, 9); -- Wall Run
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (463, 9); -- Wild Winds Initiate
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (463, 162); -- Wild Winds Initiate
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (464, 10); -- Knockback Strike
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (465, 10); -- Sleeper Hold
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (466, 10); -- Wind Jump
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (466, 162); -- Wind Jump
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (467, 10); -- Winding Flow
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (468, 11); -- Diamond Soul
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (469, 11); -- Disrupt Ki
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (470, 11); -- Improved Knockback
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (470, 57); -- Improved Knockback
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (471, 11); -- Meditative Focus
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (471, 162); -- Meditative Focus
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (472, 11); -- Stance Savant (Monk)
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (473, 12); -- Ironblood Surge
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (473, 170); -- Ironblood Surge
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (474, 12); -- Moutain Quake
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (474, 171); -- Moutain Quake
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (475, 12); -- Tangled Forest Rake
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (475, 172); -- Tangled Forest Rake
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (476, 12); -- Timeless Body
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (477, 12); -- Tongue of the Sun and Moon
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (478, 12); -- Wild Winds Gust
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (478, 173); -- Wild Winds Gust
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (479, 13); -- Enlightened Presence
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (480, 13); -- Master of Many Styles
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (480, 174); -- Master of Many Styles
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (481, 13); -- Quivering Palm
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (481, 162); -- Quivering Palm
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (482, 13); -- Shattering Strike
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (483, 14); -- Diamond Fists
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (484, 14); -- Empty Body
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (484, 162); -- Empty Body
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (485, 14); -- Meditative Wellspring
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (485, 175); -- Meditative Wellspring
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (486, 14); -- Swift River
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (487, 15); -- Enduring Quickness
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (488, 15); -- Fuse Stance
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (488, 176); -- Fuse Stance
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (489, 15); -- Impossible Technique
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (490, 5); -- Animal Companion
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (491, 5); -- Crossbow Ace
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (492, 5); -- Hunted Shot
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (493, 5); -- Monster Hunter
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (494, 5); -- Twin Takedown
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (495, 6); -- Favored Terrain
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (496, 6); -- Hunter's Aim
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (497, 6); -- Monster Warden
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (497, 177); -- Monster Warden
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (498, 6); -- Quick Draw
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (499, 6); -- Wild Empathy
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (500, 7); -- Companion's Cry
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (500, 178); -- Companion's Cry
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (501, 7); -- Disrupt Prey
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (502, 7); -- Far Shot
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (503, 7); -- Favored Enemy
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (504, 7); -- Running Reload
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (505, 7); -- Scout's Warning
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (506, 7); -- Snare Specialist
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (506, 179); -- Snare Specialist
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (506, 180); -- Snare Specialist
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (507, 7); -- Twin Parry
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (508, 8); -- Mature Animal Companion (Ranger)
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (508, 127); -- Mature Animal Companion (Ranger)
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (509, 8); -- Quick Snares
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (509, 179); -- Quick Snares
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (509, 181); -- Quick Snares
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (510, 8); -- Skirmish Strike
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (511, 8); -- Snap Shot
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (512, 8); -- Swift Tracker
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (512, 182); -- Swift Tracker
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (512, 183); -- Swift Tracker
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (514, 9); -- Deadly Aim
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (514, 354); -- Deadly Aim
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (515, 9); -- Hazard Finder
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (516, 9); -- Powerful Snares
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (516, 184); -- Powerful Snares
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (516, 181); -- Powerful Snares
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (517, 9); -- Terrain Master
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (517, 185); -- Terrain Master
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (517, 186); -- Terrain Master
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (517, 187); -- Terrain Master
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (518, 9); -- Warden's Boon
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (519, 10); -- Camouflage
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (519, 188); -- Camouflage
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (520, 10); -- Incredible Companion (Ranger)
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (520, 189); -- Incredible Companion (Ranger)
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (521, 10); -- Master Monster Hunter
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (521, 190); -- Master Monster Hunter
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (521, 177); -- Master Monster Hunter
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (522, 10); -- Penetrating Shot
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (523, 10); -- Twin Riposte
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (524, 10); -- Warden's Step
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (524, 188); -- Warden's Step
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (525, 11); -- Distracting Shot
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (526, 11); -- Double Prey
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (527, 11); -- Lightning Snares
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (527, 184); -- Lightning Snares
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (527, 181); -- Lightning Snares
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (528, 11); -- Second Sting
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (529, 11); -- Side by Side (Ranger)
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (529, 178); -- Side by Side (Ranger)
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (530, 12); -- Sense the Unseen
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (531, 12); -- Shared Prey
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (531, 191); -- Shared Prey
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (531, 192); -- Shared Prey
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (532, 12); -- Stealthy Companion
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (532, 193); -- Stealthy Companion
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (533, 12); -- Targeting Shot
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (533, 194); -- Targeting Shot
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (534, 12); -- Warden's Guidance
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (535, 13); -- Greater Distracting Shot
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (535, 195); -- Greater Distracting Shot
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (536, 13); -- Improved Twin Riposte (Ranger)
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (537, 13); -- Legendary Monster Hunter
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (537, 140); -- Legendary Monster Hunter
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (537, 196); -- Legendary Monster Hunter
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (538, 13); -- Specialized Companion (Ranger)
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (538, 197); -- Specialized Companion (Ranger)
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (539, 13); -- Ubiquitous Snares
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (539, 181); -- Ubiquitous Snares
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (540, 14); -- Impossible Flurry
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (542, 14); -- Manifold Edge
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (542, 198); -- Manifold Edge
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (542, 199); -- Manifold Edge
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (543, 14); -- Masterful Companion
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (543, 199); -- Masterful Companion
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (543, 127); -- Masterful Companion
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (544, 14); -- Perfect Shot
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (545, 14); -- Shadow Hunter
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (545, 193); -- Shadow Hunter
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (546, 15); -- Legendary Shot
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (546, 199); -- Legendary Shot
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (546, 200); -- Legendary Shot
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (546, 201); -- Legendary Shot
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (547, 15); -- To the Ends of the Earth
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (547, 202); -- To the Ends of the Earth
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (548, 15); -- Triple Threat
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (548, 203); -- Triple Threat
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (549, 15); -- Ultimate Skirmisher
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (549, 185); -- Ultimate Skirmisher
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (550, 5); -- Nimble Dodge
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (551, 5); -- Trap Finder
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (552, 5); -- Twin Feint
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (553, 5); -- You're Next
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (553, 204); -- You're Next
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (554, 6); -- Brutal Beating
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (554, 205); -- Brutal Beating
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (555, 6); -- Distracting Feint
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (555, 206); -- Distracting Feint
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (556, 6); -- Minor Magic
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (557, 6); -- Mobility
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (559, 6); -- Unbalancing Blow
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (559, 207); -- Unbalancing Blow
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (560, 7); -- Battle Assessment
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (561, 7); -- Dread Striker
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (562, 7); -- Magical Trickster
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (563, 7); -- Poison Weapon
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (564, 7); -- Reactive Pursuit
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (565, 7); -- Sabotage
--INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (566, 7); -- Scout's Warning Note another Scout's warning is in the table before 566 (505)
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (567, 8); -- Gang Up
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (568, 8); -- Light Step
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (570, 8); -- Twist the Knife
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (572, 9); -- Delay Trap
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (573, 9); -- Improved Poison Weapon
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (573, 208); -- Improved Poison Weapon
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (574, 9); -- Nimble Roll
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (574, 209); -- Nimble Roll
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (575, 9); -- Opportune Backstab
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (576, 9); -- Sidestep
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (577, 9); -- Slystriker
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (577, 210); -- Slystriker
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (578, 10); -- Precise Debilitation
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (578, 207); -- Precise Debilitation
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (578, 211); -- Precise Debilitation
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (579, 10); -- Sneak Savant
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (579, 188); -- Sneak Savant
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (580, 10); -- Tactical Debilitations
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (580, 206); -- Tactical Debilitations
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (580, 211); -- Tactical Debilitations
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (581, 10); -- Vicious Debilitations
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (581, 205); -- Vicious Debilitations
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (581, 211); -- Vicious Debilitations
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (582, 11); -- Critical Debilitations
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (582, 211); -- Critical Debilitations
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (583, 11); -- Fantastic Leap
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (584, 11); -- Felling Shot
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (585, 11); -- Reactive Interference
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (586, 11); -- Spring from the Shadows
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (587, 12); -- Defensive Roll
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (588, 12); -- Instant Opening
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (589, 12); -- Leave an Opening
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (590, 12); -- Sense the Unseen
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (591, 12); -- Blank Slate
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (592, 13); -- Cloud Step
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (592, 212); -- Cloud Step
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (593, 13); -- Cognitive Loophole
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (594, 13); -- Dispelling Slice
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (595, 13); -- Perfect Distraction
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (595, 213); -- Perfect Distraction
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (596, 14); -- Implausible Infiltration
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (596, 212); -- Implausible Infiltration
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (596, 214); -- Implausible Infiltration
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (597, 14); -- Powerful Sneak
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (598, 14); -- Trickster's Ace
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (599, 15); -- Hidden Paragon
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (599, 215); -- Hidden Paragon
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (600, 15); -- Impossible Striker
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (600, 216); -- Impossible Striker
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (601, 15); -- Reactive Distraction
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (601, 213); -- Reactive Distraction
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (601, 217); -- Reactive Distraction
-- Sorcerer
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (602, 5); -- Counterspell (Spontaneous)
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (603, 5); -- Dangerous Sorcery
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (604, 5); -- Familiar
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (607, 6); -- Cantrip Expansion (Sorcerer)
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (608, 6); -- Enhanced Familiar
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (608, 124); -- Enhanced Familiar
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (609, 7); -- Arcane Evolution
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (609, 218); -- Arcane Evolution
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (610, 7); -- Bespell Weapon
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (611, 7); -- Divine Evolution
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (611, 219); -- Divine Evolution
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (612, 7); -- Occult Evolution
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (612, 220); -- Occult Evolution
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (613, 7); -- Primal Evolution
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (613, 221); -- Primal Evolution
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (614, 8); -- Advanced Bloodline
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (614, 222); -- Advanced Bloodline
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (615, 8); -- Steady Spellcasting
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (616, 9); -- Bloodline Resistance
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (617, 9); -- Crossblooded Evolution
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (618, 10); -- Greater Bloodline
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (618, 222); -- Greater Bloodline
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (619, 10); -- Overwhelming Energy
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (620, 10); -- Quickened Casting
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (621, 11); -- Bloodline Focus
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (622, 11); -- Magic Sense
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (623, 12); -- Interweave Dispel
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (623, 223); -- Interweave Dispel
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (624, 12); -- Reflect Spell
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (624, 224); -- Reflect Spell
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (626, 13); -- Greater Mental Evolution
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (626, 225); -- Greater Mental Evolution
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (627, 13); -- Greater Vital Evolution
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (627, 226); -- Greater Vital Evolution
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (628, 14); -- Bloodline Wellspring
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (628, 227); -- Bloodline Wellspring
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (629, 14); -- Greater Crossblooded Evolution
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (629, 228); -- Greater Crossblooded Evolution
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (630, 15); -- Bloodline Conduit
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (631, 15); -- Bloodline Perfection
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (631, 229); -- Bloodline Perfection
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (632, 15); -- Metamagic Mastery
-- Wizard
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (633, 5); -- Counterspell (Prepared)
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (634, 5); -- Eschew Materials
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (635, 5); -- Familiar
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (636, 5); -- Hand of the Apprentice
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (639, 6); -- Cantrip Expansion (Wizard)
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (640, 6); -- Conceal Spell
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (641, 6); -- Enhanced Familiar
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (641, 124); -- Enhanced Familiar
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (643, 7); -- Linked Focus
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (643, 230); -- Linked Focus
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (643, 231); -- Linked Focus
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (644, 7); -- Silent Spell
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (644, 232); -- Silent Spell
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (645, 8); -- Spell Penetration
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (647, 9); -- Advanced School Spell
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (647, 231); -- Advanced School Spell
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (648, 9); -- Bond Conservation
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (648, 230); -- Bond Conservation
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (649, 9); -- Universal Versatility
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (649, 233); -- Universal Versatility
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (649, 234); -- Universal Versatility
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (650, 10); -- Overwhelming Energy
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (651, 10); -- Quickened Casting
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (652, 10); -- Scroll Savant
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (652, 179); -- Scroll Savant
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (653, 11); -- Clever Counterspell
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (653, 235); -- Clever Counterspell
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (653, 236); -- Clever Counterspell
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (655, 12); -- Bonded Focus
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (655, 230); -- Bonded Focus
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (657, 12); -- Superior Bond
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (657, 230); -- Superior Bond
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (659, 13); -- Spell Tinker
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (660, 14); -- Infinite Possibilities
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (661, 14); -- Reprepare Spell
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (662, 15); -- Archwizard's Might
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (662, 237); -- Archwizard's Might
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (664, 15); -- Spell Combination
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (665, 6); -- Alchemist Dedication
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (665, 238); -- Alchemist Dedication
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (666, 7); -- Basic Concoction
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (666, 239); -- Basic Concoction
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (667, 7); -- Quick Alchemy
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (667, 239); -- Quick Alchemy
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (668, 8); -- Advanced Conoction
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (668, 240); -- Advanced Conoction
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (669, 8); -- Expert Alchemy
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (669, 239); -- Expert Alchemy
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (669, 179); -- Expert Alchemy
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (670, 11); -- Mastery Alchemy
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (670, 241); -- Mastery Alchemy
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (670, 184); -- Mastery Alchemy
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (671, 6); -- Barbarian Dedication
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (671, 125); -- Barbarian Dedication
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (671, 242); -- Barbarian Dedication
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (672, 7); -- Barbarian Resiliency
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (672, 243); -- Barbarian Resiliency
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (672, 244); -- Barbarian Resiliency
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (673, 7); -- Basic Fury
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (673, 243); -- Basic Fury
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (674, 8); -- Advanced Fury
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (674, 245); -- Advanced Fury
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (675, 8); -- Instinct Ability
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (675, 243); -- Instinct Ability
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (676, 11); -- Juggernaut's Fortitude
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (676, 243); -- Juggernaut's Fortitude
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (676, 246); -- Juggernaut's Fortitude
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (677, 6); -- Bard Dedication
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (677, 247); -- Bard Dedication
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (678, 7); -- Basic Bard Spellcasting
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (678, 248); -- Basic Bard Spellcasting
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (679, 7); -- Basic Muse's Whispers
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (679, 248); -- Basic Muse's Whispers
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (680, 8); -- Advanced Muse's Whispers
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (680, 249); -- Advanced Muse's Whispers
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (681, 8); -- Counter Perform
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (681, 248); -- Counter Perform
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (682, 9); -- Inspirational Performance
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (682, 248); -- Inspirational Performance
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (683, 9); -- Occult Breadth
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (683, 250); -- Occult Breadth
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (684, 11); -- Expert Bard Spellcasting
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (684, 250); -- Expert Bard Spellcasting
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (684, 69); -- Expert Bard Spellcasting
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (685, 14); -- Master Bard Spellcasting
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (685, 251); -- Master Bard Spellcasting
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (685, 252); -- Master Bard Spellcasting
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (686, 6); -- Champion Dedication
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (686, 125); -- Champion Dedication
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (686, 247); -- Champion Dedication
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (687, 7); -- Basic Devotion
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (687, 253); -- Basic Devotion
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (688, 7); -- Champion Resiliencey
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (688, 253); -- Champion Resiliencey
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (688, 254); -- Champion Resiliencey
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (689, 7); -- Healing Touch
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (689, 253); -- Healing Touch
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (690, 8); -- Advanced Devotion
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (690, 255); -- Advanced Devotion
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (691, 8); -- Champion's Reaction
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (691, 253); -- Champion's Reaction
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (692, 8); -- Divine Ally
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (692, 253); -- Divine Ally
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (693, 12); -- Diverse Armor Expert
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (693, 253); -- Diverse Armor Expert
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (693, 256); -- Diverse Armor Expert
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (694, 6); -- Cleric Dedication
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (694, 257); -- Cleric Dedication
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (695, 7); -- Basic Cleric Spellcasting
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (695, 258); -- Basic Cleric Spellcasting
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (696, 7); -- Basic Dogma
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (696, 258); -- Basic Dogma
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (697, 8); -- Advanced Dogma
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (697, 259); -- Advanced Dogma
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (698, 9); -- Divine Breadth
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (698, 260); -- Divine Breadth
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (699, 11); -- Expert Cleric Spellcasting
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (699, 260); -- Expert Cleric Spellcasting
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (699, 261); -- Expert Cleric Spellcasting
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (700, 14); -- Master Cleric Spellcasting
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (700, 262); -- Master Cleric Spellcasting
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (700, 263); -- Master Cleric Spellcasting
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (701, 6); -- Druid Dedication
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (701, 257); -- Druid Dedication
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (702, 7); -- Basic Druid Spellcasting
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (702, 264); -- Basic Druid Spellcasting
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (703, 7); -- Basic Wilding
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (703, 264); -- Basic Wilding
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (704, 7); -- Order Spell
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (704, 264); -- Order Spell
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (705, 8); -- Advanced Wilding
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (705, 265); -- Advanced Wilding
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (706, 9); -- Primal Breadth
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (706, 266); -- Primal Breadth
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (707, 11); -- Expert Druid Spellcasting
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (707, 266); -- Expert Druid Spellcasting
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (707, 190); -- Expert Druid Spellcasting
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (708, 14); -- Master Druid Spellcasting
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (708, 267); -- Master Druid Spellcasting
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (708, 140); -- Master Druid Spellcasting
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (709, 6); -- Fighter Dedication
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (709, 125); -- Fighter Dedication
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (709, 268); -- Fighter Dedication
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (710, 7); -- Basic Maneuver
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (710, 269); -- Basic Maneuver
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (711, 7); -- Fighter Resiliency
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (711, 269); -- Fighter Resiliency
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (711, 254); -- Fighter Resiliency
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (712, 7); -- Opportunist
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (712, 269); -- Opportunist
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (713, 8); -- Advanced Maneuver
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (713, 270); -- Advanced Maneuver
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (714, 11); -- Diverse Weapon Expert
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (714, 269); -- Diverse Weapon Expert
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (714, 271); -- Diverse Weapon Expert
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (715, 6); -- Monk Dedication
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (715, 125); -- Monk Dedication
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (715, 268); -- Monk Dedication
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (716, 7); -- Basic Kata
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (716, 272); -- Basic Kata
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (717, 7); -- Monk Resiliency
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (717, 272); -- Monk Resiliency
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (717, 254); -- Monk Resiliency
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (718, 8); -- Advanced Kata
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (718, 273); -- Advanced Kata
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (719, 9); -- Monk Moves
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (719, 272); -- Monk Moves
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (720, 10); -- Monk's Flurry
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (720, 272); -- Monk's Flurry
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (721, 11); -- Perfection's Path
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (721, 272); -- Perfection's Path
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (721, 274); -- Perfection's Path
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (722, 6); -- Ranger Dedication
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (722, 268); -- Ranger Dedication
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (723, 7); -- Basic Hunter's Trick
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (723, 275); -- Basic Hunter's Trick
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (724, 7); -- Ranger Resiliency
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (724, 275); -- Ranger Resiliency
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (724, 254); -- Ranger Resiliency
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (725, 8); -- Advanced Hunter's Trick
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (725, 276); -- Advanced Hunter's Trick
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (726, 11); -- Master Spotter
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (726, 275); -- Master Spotter
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (726, 277); -- Master Spotter
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (727, 6); -- Rogue Dedication
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (727, 268); -- Rogue Dedication
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (728, 7); -- Basic Trickery
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (728, 278); -- Basic Trickery
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (729, 7); -- Sneak Attacker
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (729, 278); -- Sneak Attacker
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (730, 8); -- Advanced Trickery
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (730, 279); -- Advanced Trickery
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (731, 9); -- Skill Mastery
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (731, 278); -- Skill Mastery
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (731, 280); -- Skill Mastery
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (732, 10); -- Uncanny Dodge
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (732, 278); -- Uncanny Dodge
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (733, 11); -- Evasiveness
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (733, 278); -- Evasiveness
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (733, 281); -- Evasiveness
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (734, 6); -- Sorcerer Dedication
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (734, 247); -- Sorcerer Dedication
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (735, 7); -- Basic Sorcerer Spellcasting
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (735, 282); -- Basic Sorcerer Spellcasting
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (736, 7); -- Basic Blood Potency
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (736, 282); -- Basic Blood Potency
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (737, 7); -- Basic Bloodline Spell
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (737, 282); -- Basic Bloodline Spell
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (738, 8); -- Advanced Blood Potency
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (738, 283); -- Advanced Blood Potency
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (739, 9); -- Bloodline Breadth
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (739, 284); -- Bloodline Breadth
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (740, 11); -- Expert Sorcerer Spellcasting
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (740, 284); -- Expert Sorcerer Spellcasting
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (740, 285); -- Expert Sorcerer Spellcasting
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (741, 14); -- Master Sorcerer Spellcasting
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (741, 286); -- Master Sorcerer Spellcasting
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (741, 287); -- Master Sorcerer Spellcasting
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (742, 6); -- Wizard Dedication
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (742, 238); -- Wizard Dedication
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (743, 7); -- Arcane School Spell
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (743, 288); -- Arcane School Spell
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (744, 7); -- Basic Arcana
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (744, 288); -- Basic Arcana
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (745, 7); -- Basic Wizard Spellcasting
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (745, 288); -- Basic Wizard Spellcasting
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (746, 8); -- Advanced Arcana
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (746, 289); -- Advanced Arcana
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (747, 9); -- Arcane Breadth
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (747, 290); -- Arcane Breadth
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (748, 11); -- Expert Wizard Spellcasting
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (748, 290); -- Expert Wizard Spellcasting
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (748, 291); -- Expert Wizard Spellcasting
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (749, 14); -- Master Wizard Spellcasting
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (749, 292); -- Master Wizard Spellcasting
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (749, 293); -- Master Wizard Spellcasting
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (750, 5); -- Additional Lore
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (750, 295); -- Additional Lore
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (751, 5); -- Adopted Ancestry
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (752, 5); -- Alchemical Crafting
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (752, 42); -- Alchemical Crafting
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (753, 294); -- Ancestral Paragon
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (754, 5); -- Arcane Sense
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (754, 296); -- Arcane Sense
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (755, 5); -- Armor Proficiency
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (756, 5); -- Assurance
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (756, 297); -- Assurance
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (757, 6); -- Automatic Knowledge
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (757, 298); -- Automatic Knowledge
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (757, 299); -- Automatic Knowledge
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (758, 5); -- Bargain Hunter
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (758, 300); -- Bargain Hunter
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (759, 301); -- Battle Cry
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (759, 303); -- Battle Cry
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (760, 5); -- Battle Medicine
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (760, 304); -- Battle Medicine
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (761, 301); -- Bizarre Magic
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (761, 69); -- Bizarre Magic
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (762, 6); -- Bonded Animal
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (762, 308); -- Bonded Animal
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (763, 5); -- Breath Control
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (764, 5); -- Canny Acumen
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (765, 5); -- Cat Fall
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (765, 305); -- Cat Fall
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (766, 5); -- Charming Liar
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (766, 306); -- Charming Liar
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (767, 302); -- Cloud Jump
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (767, 307); -- Cloud Jump
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (768, 5); -- Combat Climber
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (768, 142); -- Combat Climber
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (769, 6); -- Confabulator
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (769, 309); -- Confabulator
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (770, 6); -- Connections
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (770, 310); -- Connections
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (770, 311); -- Connections
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (771, 6); -- Continual Recovery
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (771, 312); -- Continual Recovery
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (772, 5); -- Courtly Graces
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (772, 313); -- Courtly Graces
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (773, 302); -- Craft Anything
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (773, 314); -- Craft Anything
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (774, 5); -- Diehard
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (775, 302); -- Divine Guidance
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (775, 263); -- Divine Guidance
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (776, 5); -- Dubious Knowledge
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (776, 315); -- Dubious Knowledge
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (777, 301); -- Expeditious Search
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (777, 146); -- Expeditious Search
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (778, 5); -- Experienced Professional
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (778, 295); -- Experienced Professional
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (779, 5); -- Experienced Smuggler
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (779, 316); -- Experienced Smuggler
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (780, 5); -- Experienced Tracker
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (780, 317); -- Experienced Tracker
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (781, 5); -- Fascinating Performance
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (781, 318); -- Fascinating Performance
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (782, 5); -- Fast Recovery
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (782, 242); -- Fast Recovery
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (783, 5); -- Feather Step
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (783, 268); -- Feather Step
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (784, 5); -- Fleet
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (785, 301); -- Foil Senses
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (785, 188); -- Foil Senses
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (786, 5); -- Forager
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (786, 317); -- Forager
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (787, 6); -- Glad-Hand
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (787, 356); -- Glad-Hand
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (788, 5); -- Group Coercion
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (788, 204); -- Group Coercion
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (789, 5); -- Group Impression
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (789, 300); -- Group Impression
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (790, 5); -- Hefty Hauler
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (790, 142); -- Hefty Hauler
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (791, 5); -- Hobnobber
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (791, 300); -- Hobnobber
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (792, 301); -- Impeccable Crafter
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (792, 184); -- Impeccable Crafter
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (792, 319); -- Impeccable Crafter
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (793, 5); -- Impressive Performance
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (793, 318); -- Impressive Performance
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (794, 5); -- Incredible Initiative
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (795, 320); -- Incredible Investiture
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (795, 321); -- Incredible Investiture
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (796, 5); -- Intimidating Glare
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (796, 204); -- Intimidating Glare
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (797, 6); -- Intimidating Prowess
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (797, 322); -- Intimidating Prowess
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (797, 323); -- Intimidating Prowess
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (798, 301); -- Inventor
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (798, 184); -- Inventor
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (799, 301); -- Kip Up
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (799, 324); -- Kip Up
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (800, 6); -- Lasting Coercion
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (800, 323); -- Lasting Coercion
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (801, 302); -- Legendary Codebreaker
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (801, 325); -- Legendary Codebreaker
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (802, 302); -- Legendary Linguist
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (802, 325); -- Legendary Linguist
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (802, 326); -- Legendary Linguist
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (803, 302); -- Legendary Medic
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (803, 327); -- Legendary Medic
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (804, 302); -- Legendary Negotiation
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (804, 328); -- Legendary Negotiation
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (805, 302); -- Legendary Performer
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (805, 329); -- Legendary Performer
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (805, 330); -- Legendary Performer
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (806, 302); -- Legendary Professional
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (806, 331); -- Legendary Professional
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (807, 302); -- Legendary Sneak
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (807, 332); -- Legendary Sneak
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (807, 333); -- Legendary Sneak
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (808, 302); -- Legendary Survivalist
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (808, 202); -- Legendary Survivalist
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (809, 302); -- Legendary Thief
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (809, 334); -- Legendary Thief
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (809, 335); -- Legendary Thief
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (810, 6); -- Lengthy Diversion
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (810, 306); -- Lengthy Diversion
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (812, 5); -- Magical Crafting
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (812, 306); -- Magical Crafting
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (813, 6); -- Magical Shorthand
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (813, 355); -- Magical Shorthand
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (814, 5); -- Multilingual
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (814, 313); -- Multilingual
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (815, 5); -- Natural Medicine
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (815, 336); -- Natural Medicine
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (816, 6); -- Nimble Crawl
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (816, 337); -- Nimble Crawl
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (817, 5); -- Oddity Identification
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (817, 338); -- Oddity Identification
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (818, 5); -- Pickpocket
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (818, 339); -- Pickpocket
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (819, 301); -- Planar Survival
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (819, 186); -- Planar Survival
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (820, 6); -- Powerful Leap
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (820, 52); -- Powerful Leap
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (821, 301); -- Quick Climber
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (821, 57); -- Quick Climber
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (822, 5); -- Quick Coercion
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (822, 204); -- Quick Coercion
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (823, 6); -- Quick Disguise
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (823, 309); -- Quick Disguise
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (824, 5); -- Quick Identification
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (824, 340); -- Quick Identification
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (825, 5); -- Quick Jump
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (825, 142); -- Quick Jump
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (826, 301); -- Quick Recognition
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (826, 341); -- Quick Recognition
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (826, 342); -- Quick Recognition
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (827, 5); -- Quick Repair
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (827, 42); -- Quick Repair
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (828, 5); -- Quick Squeeze
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (828, 305); -- Quick Squeeze
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (829, 301); -- Quick Swim
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (829, 57); -- Quick Swim
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (830, 301); -- Quick Unlock
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (830, 343); -- Quick Unlock
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (831, 6); -- Quiet Allies
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (831, 344); -- Quiet Allies
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (832, 6); -- Rapid Mantel
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (832, 52); -- Rapid Mantel
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (833, 5); -- Read Lips
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (833, 313); -- Read Lips
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (834, 5); -- Recognize Spell
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (834, 340); -- Recognize Spell
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (835, 5); -- Ride
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (836, 6); -- Robust Recovery
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (836, 312); -- Robust Recovery
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (837, 302); -- Scare to Death
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (837, 345); -- Scare to Death
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (838, 301); -- Shameless Request
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (838, 346); -- Shameless Request
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (839, 5); -- Shield Block
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (840, 5); -- Sign Language
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (840, 313); -- Sign Language
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (841, 5); -- Skill Training
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (841, 347); -- Skill Training
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (842, 301); -- Slippery Secrets
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (842, 348); -- Slippery Secrets
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (843, 5); -- Snare Crafting
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (843, 42); -- Snare Crafting
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (844, 5); -- Specialty Crafting
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (844, 42); -- Specialty Crafting
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (845, 5); -- Steady Balance
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (845, 305); -- Steady Balance
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (846, 5); -- Streetwise
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (846, 313); -- Streetwise
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (847, 5); -- Student of the Canon
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (847, 349); -- Student of the Canon
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (848, 5); -- Subtle Theft
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (848, 339); -- Subtle Theft
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (849, 5); -- Survey Wildlife
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (849, 317); -- Survey Wildlife
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (850, 301); -- Swift Sneak
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (850, 188); -- Swift Sneak
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (851, 5); -- Terrain Expertise
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (851, 317); -- Terrain Expertise
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (852, 5); -- Terrain Stalker
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (852, 316); -- Terrain Stalker
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (853, 301); -- Terrified Retreat
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (853, 303); -- Terrified Retreat
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (854, 5); -- Titan Wrestler
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (854, 142); -- Titan Wrestler
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (855, 5); -- Toughness
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (856, 5); -- Train Animal
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (856, 336); -- Train Animal
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (857, 5); -- Trick Magic Item
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (857, 340); -- Trick Magic Item
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (858, 5); -- Underwater Marauder
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (858, 142);  -- Underwater Marauder
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (859, 302); -- Unified Theory
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (859, 350); -- Unified Theory
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (860, 6); -- Unmistakable Lore
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (860, 351); -- Unmistakable Lore
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (861, 294); -- Untrained Improvisation
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (862, 5); -- Virtuosic Performer
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (862, 318); -- Virtuosic Performer
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (863, 301); -- Wall Jump
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (863, 57); -- Wall Jump
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (864, 6); -- Ward Medic
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (864, 312); -- Ward Medic
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (865, 6); -- Wary Disarmament
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (865, 352); -- Wary Disarmament
INSERT INTO feats_featprereqs (feat_id, featprereqs_id) VALUES (866, 5); -- Weapon Proficiency
COMMIT;

BEGIN TRANSACTION;
-- TODO run a quick script to comment these
  -- Dwarf Ancestry Trait
INSERT INTO feats_traits (feat_id, trait_id) VALUES (1,79);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (2,79);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (3,79);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (4,79);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (5,79);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (6,79);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (7,79);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (8,79);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (9,79);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (10,79);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (11,79);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (12,80);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (13,80);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (14,80);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (15,80);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (16,80);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (17,80);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (18,80);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (19,80);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (20,80);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (21,80);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (22,80);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (23,80);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (24,80);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (25,81);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (26,81);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (27,81);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (28,81);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (29,81);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (30,81);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (31,81);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (32,81);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (33,81);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (34,81);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (35,81);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (36,81);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (37,81);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (38,82);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (39,82);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (40,82);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (41,82);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (42,82);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (43,82);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (44,82);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (45,82);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (46,82);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (47,82);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (48,82);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (49,82);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (50,82);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (51,82);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (52,85);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (53,85);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (54,30);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (54,85);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (55,85);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (56,85);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (57,85);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (58,85);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (59,85);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (60,85);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (61,85);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (62,85);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (63,85);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (64,85);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (65,85);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (66,86);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (67,86);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (68,86);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (69,86);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (70,86);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (71,86);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (72,86);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (73,86);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (74,86);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (75,86);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (76,86);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (77,86);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (78,86);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (79,83);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (80,83);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (81,83);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (82,84);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (83,182);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (84,84);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (85,14);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (85,182);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (86,182);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (87,182);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (88,182);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (89,182);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (90,182);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (91,182);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (92,91);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (93,91);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (94,91);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (95,91);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (96,91);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (97,91);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (98,1);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (98,91);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (99,91);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (100,91);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (101,91);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (102,1);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (102,91);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (103,1);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (103,91);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (104,91);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (105,91);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (106,91);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (107,1);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (107,91);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (108,91);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (109,91);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (110,91);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (111,1);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (111,91);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (112,91);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (113,91);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (114,91);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (115,91);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (116,91);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (117,91);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (118,91);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (119,91);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (120,1);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (120,91);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (121,91);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (122,91);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (123,91);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (124,91);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (125,91);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (126,91);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (127,91);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (128,1);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (128,91);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (129,91);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (130,92);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (131,92);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (131,14);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (131,59);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (132,92);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (133,92);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (134,92); --Note 134 "Sudden Charge" is shared by Barbarians and Fighter;
INSERT INTO feats_traits (feat_id, trait_id) VALUES (134,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (134,28);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (134,52);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (135,92);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (136,92);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (136,59);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (137,92);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (137,59);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (138,92);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (139,92);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (139,14);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (139,59);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (140,92);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (141,92);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (142,92);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (142,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (142,28);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (143,92);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (143,59);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (144,92);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (144,37);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (144,48);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (144,216);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (144,212);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (145,92);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (146,92);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (147,92);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (147,59);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (148,213);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (148,92);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (148,14);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (148,209);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (148,37);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (148,59);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (149,92);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (149,37);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (149,54);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (149,216);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (149,59);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (149,212);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (150,92);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (150,37);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (150,211);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (150,59);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (151,92);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (151,14);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (151,37);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (151,54);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (151,216);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (151,59);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (151,212);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (152,92);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (153,92);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (153,14);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (153,59);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (154,7);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (154,92);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (154,59);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (154,74);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (155,92);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (155,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (156,92);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (156,59);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (157,92);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (157,14);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (157,59);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (158,92);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (158,59);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (159,92);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (159,59);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (160,92);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (160,59);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (161,7);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (161,92);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (161,59);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (162,92);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (162,37);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (162,48);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (162,216);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (162,59);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (162,212);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (163,92);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (163,59);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (164,92);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (164,28);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (164,37);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (164,59);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (165,6);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (165,92);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (165,14);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (165,37);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (165,52);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (165,59);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (166,92);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (166,37);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (166,54);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (166,212);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (167,92);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (167,14);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (167,59);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (168,92);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (168,14);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (168,37);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (169,92);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (169,59);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (170,92);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (170,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (170,28);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (170,52);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (171,92);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (171,59);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (172,92);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (172,14);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (172,37);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (172,54);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (172,216);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (172,59);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (172,212);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (173,92);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (173,59);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (174,92);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (175,92);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (175,14);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (175,30);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (175,59);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (176,92);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (176,59);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (177,7);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (177,92);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (177,59);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (177,74);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (178,92);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (178,42);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (178,59);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (179,93);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (180,93);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (181,93);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (181,95);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (181,14);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (181,96);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (181,45);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (181,101);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (181,102);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (182,93);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (183,93);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (184,93);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (185,93);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (186,93);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (186,30);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (187,93);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (188,93);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (189,93);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (189,14);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (189,42);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (189,45);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (190,93);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (191,93);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (192,93);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (193,93);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (193,14);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (193,42);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (193,45);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (194,93);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (195,93);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (196,93);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (197,93);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (198,93);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (199,93);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (199,14);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (199,45);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (200,93);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (200,14);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (200,42);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (200,45);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (201,93);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (202,93);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (203,93);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (204,93);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (205,93);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (206,93);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (206,96);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (206,101);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (206,102);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (207,93);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (208,93);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (209,93);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (210,93);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (211,93);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (212,93);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (213,93);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (214,94);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (215,94);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (216,94);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (217,94);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (218,94);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (219,94);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (219,51);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (220,94);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (220,51);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (221,94);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (221,51);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (222,94);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (222,51);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (223,94);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (224,94);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (225,94);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (225,14);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (225,45);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (226,94);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (227,94);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (228,94);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (229,94);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (230,94);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (231,94);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (232,94);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (233,94);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (234,94);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (235,94);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (236,94);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (237,94);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (238,94);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (239,94);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (240,94);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (241,94);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (241,28);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (242,94);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (243,94);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (244,94);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (245,94);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (246,94);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (247,94);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (248,94);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (249,94);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (250,94);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (251,94);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (252,94);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (253,94);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (254,94);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (255,94);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (256,94);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (257,94);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (258,94);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (259,94);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (260,94);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (261,94);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (262,94);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (263,94);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (264,95);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (265,95);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (266,95);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (267,95);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (268,95);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (270,95);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (271,95);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (271,33);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (271,132);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (272,95);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (272,25);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (273,95);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (273,33);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (274,95);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (275,95);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (276,95);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (276,214);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (276,211);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (277,95);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (277,14);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (277,45);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (278,95);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (279,95);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (280,95);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (280,14);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (280,45);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (281,95);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (281,14);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (281,45);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (282,95);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (283,95);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (284,95);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (284,96);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (284,102);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (285,95);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (286,95);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (286,214);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (286,209);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (287,95);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (288,95);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (289,95);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (290,95);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (291,95);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (291,14);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (291,45);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (292,95);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (293,95);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (294,95);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (294,14);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (294,45);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (295,95);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (296,95);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (297,95);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (298,95);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (299,95);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (300,95);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (301,95);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (302,95);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (303,95);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (304,95);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (305,95);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (306,95);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (306,14);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (306,45);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (307,95);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (308,95);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (309,95);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (310,95);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (310,14);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (311,96);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (312,96);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (314,96);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (315,96);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (315,42);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (315,45);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (315,101);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (315,102);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (316,96);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (317,96);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (318,96);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (319,96);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (320,96);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (321,96);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (321,42);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (321,45);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (322,96);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (323,96);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (324,96);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (325,96);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (326,96);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (327,96);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (329,96);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (330,96);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (331,96);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (332,96);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (333,96);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (334,96);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (335,96);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (336,96);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (336,45);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (337,96);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (337,42);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (337,45);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (338,96);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (339,96);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (340,96);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (341,96);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (342,96);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (343,96);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (344,96);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (345,96);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (346,96);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (348,96);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (349,96);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (350,96);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (351,96);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (352,96);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (353,96);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (354,14);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (354,96);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (354,42);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (354,45);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (355,14);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (355,96);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (356,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (357,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (357,58);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (358,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (358,52);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (358,68);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (359,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (359,28);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (360,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (361,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (363,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (364,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (365,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (365,58);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (366,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (366,58);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (367,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (368,23);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (368,27);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (368,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (368,44);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (369,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (370,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (370,28);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (371,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (371,28);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (372,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (372,28);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (373,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (374,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (374,28);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (374,58);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (375,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (377,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (378,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (379,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (379,58);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (380,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (380,68);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (381,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (382,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (383,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (384,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (385,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (385,58);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (386,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (387,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (388,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (388,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (388,100);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (389,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (390,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (391,14);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (391,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (392,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (392,68);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (393,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (393,28);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (394,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (396,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (397,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (397,58);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (398,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (399,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (399,28);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (400,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (400,58);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (401,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (401,68);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (402,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (403,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (404,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (406,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (406,58);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (407,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (407,68);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (408,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (409,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (410,14);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (410,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (410,58);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (411,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (411,68);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (412,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (412,68);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (413,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (413,58);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (414,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (415,14);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (415,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (416,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (416,58);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (417,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (418,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (419,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (420,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (420,28);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (420,58);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (422,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (422,68);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (423,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (424,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (424,68);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (425,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (425,68);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (426,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (426,28);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (426,52);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (426,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (427,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (428,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (429,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (430,98);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (430,68);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (431,98);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (431,68);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (432,98);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (433,98);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (434,98);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (435,98);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (435,68);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (436,98);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (436,68);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (437,98);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (437,68);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (438,98);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (439,98);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (440,98);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (441,98);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (442,98);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (443,98);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (444,98);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (445,98);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (446,98);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (447,98);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (448,98);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (449,98);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (450,98);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (451,7);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (451,23);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (451,27);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (451,44);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (451,98);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (452,98);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (453,98);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (454,98);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (455,98);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (456,98);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (457,98);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (458,98);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (459,98);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (459,68);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (460,98);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (461,98);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (461,68);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (462,98);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (463,98);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (464,14);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (464,98);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (465,6);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (465,34);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (465,98);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (466,98);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (467,98);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (468,98);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (469,98);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (469,131);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (470,98);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (471,98);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (472,98);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (473,98);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (474,98);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (475,98);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (476,98);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (477,98);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (478,122);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (478,14);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (478,209);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (478,42);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (478,98);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (479,23);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (479,44);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (479,98);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (480,98);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (481,98);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (482,98);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (483,98);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (484,98);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (485,98);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (486,98);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (487,98);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (488,98);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (489,30);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (489,98);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (490,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (491,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (492,28);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (492,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (493,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (494,28);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (494,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (495,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (496,14);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (496,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (497,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (498,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (498,100);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (499,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (500,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (501,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (502,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (503,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (504,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (505,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (505,100);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (506,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (507,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (508,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (509,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (510,28);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (510,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (510,100);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (511,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (512,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (514,52);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (514,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (515,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (516,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (517,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (518,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (519,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (520,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (521,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (522,52);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (522,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (523,97);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (523,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (524,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (525,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (526,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (527,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (528,58);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (528,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (529,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (530,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (531,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (532,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (533,14);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (533,58);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (533,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (534,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (535,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (536,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (537,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (538,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (539,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (540,28);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (540,52);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (540,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (542,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (543,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (544,28);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (544,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (545,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (546,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (547,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (548,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (549,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (550,100);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (551,100);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (552,100);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (553,23);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (553,27);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (553,44);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (553,100);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (554,100);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (555,100);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (556,100);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (557,100);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (559,100);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (560,100);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (560,63);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (561,100);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (562,100);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (563,42);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (563,100);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (564,100);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (565,34);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (565,100);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (567,100);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (568,100);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (570,100);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (572,100);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (573,100);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (574,100);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (575,100);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (576,100);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (577,100);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (578,100);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (579,100);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (580,100);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (581,100);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (582,34);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (582,100);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (583,100);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (584,100);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (585,100);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (586,28);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (586,100);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (587,100);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (588,14);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (588,100);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (589,100);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (590,100);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (591,100);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (592,100);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (593,100);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (594,100);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (595,100);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (596,41);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (596,49);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (596,100);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (597,100);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (598,14);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (598,100);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (599,100);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (600,100);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (601,14);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (601,42);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (601,100);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (602,205);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (602,101);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (603,101);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (604,101);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (607,101);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (608,101);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (609,213);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (609,101);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (610,101);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (610,102);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (611,214);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (611,101);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (612,215);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (612,101);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (613,216);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (613,101);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (614,101);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (615,101);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (616,101);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (617,101);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (618,101);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (619,42);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (619,45);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (619,101);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (620,14);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (620,45);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (620,101);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (621,101);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (622,20);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (622,207);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (622,101);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (622,102);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (623,45);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (623,101);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (624,101);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (624,102);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (626,213);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (626,101);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (627,214);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (627,101);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (628,101);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (629,101);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (630,45);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (630,101);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (631,101);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (632,101);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (632,102);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (633,205);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (633,213);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (633,102);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (634,102);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (635,102);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (636,102);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (639,102);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (640,14);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (640,42);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (640,45);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (640,102);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (641,102);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (643,102);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (644,14);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (644,45);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (644,102);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (645,102);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (647,102);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (648,42);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (648,45);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (648,102);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (649,102);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (650,42);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (650,45);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (650,102);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (651,14);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (651,45);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (651,102);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (652,102);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (653,102);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (655,102);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (657,102);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (659,14);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (659,102);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (660,102);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (661,102);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (662,102);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (664,102);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (665,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (665,19);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (665,50);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (666,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (667,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (668,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (669,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (670,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (671,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (671,19);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (671,50);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (672,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (673,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (674,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (675,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (676,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (677,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (677,19);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (677,50);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (678,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (679,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (680,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (681,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (682,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (683,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (684,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (685,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (686,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (686,19);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (686,50);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (687,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (688,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (689,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (690,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (691,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (692,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (693,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (694,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (694,19);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (694,50);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (695,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (696,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (697,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (698,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (699,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (700,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (701,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (701,19);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (701,50);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (702,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (703,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (704,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (705,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (706,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (707,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (708,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (709,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (709,19);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (709,50);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (710,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (711,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (712,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (713,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (714,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (715,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (715,19);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (715,50);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (716,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (717,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (718,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (719,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (720,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (720,28);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (720,98);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (721,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (722,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (722,19);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (722,50);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (722,14);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (722,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (723,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (724,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (725,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (726,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (727,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (727,19);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (727,50);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (728,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (729,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (730,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (731,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (732,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (733,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (734,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (734,19);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (734,50);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (735,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (736,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (737,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (738,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (739,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (740,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (741,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (742,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (742,19);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (742,50);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (743,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (744,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (745,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (746,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (747,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (748,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (749,4);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (750,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (750,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (751,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (752,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (752,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (753,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (754,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (754,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (755,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (756,30);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (756,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (756,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (757,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (757,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (758,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (758,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (759,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (759,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (760,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (760,33);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (760,42);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (760,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (761,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (761,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (762,22);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (762,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (762,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (763,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (764,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (765,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (765,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (766,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (766,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (767,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (767,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (768,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (768,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (769,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (769,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (770,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (770,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (771,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (771,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (772,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (772,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (773,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (773,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (774,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (775,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (775,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (776,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (776,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (777,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (778,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (778,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (779,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (779,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (780,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (780,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (781,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (781,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (782,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (783,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (784,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (785,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (785,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (786,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (786,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (787,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (787,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (788,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (788,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (789,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (789,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (790,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (790,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (791,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (791,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (792,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (792,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (793,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (793,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (794,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (795,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (796,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (796,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (797,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (797,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (798,22);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (798,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (798,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (799,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (799,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (800,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (800,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (801,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (801,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (802,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (803,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (804,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (804,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (805,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (805,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (806,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (806,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (807,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (807,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (808,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (808,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (809,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (809,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (810,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (810,65);
-- TODO BUG SEE ISSUE #45 INSERT INTO feats_traits (feat_id, trait_id) VALUES (811,31);
-- TODO BUG SEE ISSUE #45 INSERT INTO feats_traits (feat_id, trait_id) VALUES (811,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (812,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (812,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (813,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (813,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (814,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (814,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (815,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (815,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (816,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (816,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (817,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (817,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (818,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (818,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (819,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (819,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (820,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (820,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (821,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (821,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (822,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (822,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (823,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (823,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (824,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (824,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (825,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (825,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (826,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (826,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (827,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (827,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (828,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (828,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (829,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (829,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (830,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (830,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (831,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (831,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (832,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (832,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (833,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (833,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (834,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (834,63);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (834,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (835,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (836,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (836,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (837,18);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (837,23);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (837,27);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (837,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (837,34);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (837,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (838,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (838,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (839,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (840,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (840,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (841,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (841,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (842,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (842,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (843,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (843,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (844,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (844,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (845,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (845,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (846,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (846,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (847,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (847,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (848,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (848,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (849,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (849,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (850,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (850,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (851,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (851,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (852,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (852,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (853,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (853,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (854,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (854,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (855,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (856,22);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (856,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (856,42);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (856,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (857,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (857,42);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (857,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (858,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (858,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (859,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (859,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (860,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (861,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (862,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (862,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (863,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (863,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (864,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (864,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (865,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (865,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (866,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (866,65);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (867,49);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (867,99);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (868,31);
INSERT INTO feats_traits (feat_id, trait_id) VALUES (868,65);
COMMIT;
