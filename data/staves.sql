PRAGMA foreign_keys = ON; -- database requires foreign key checking to be turned
                          -- on PER CONNECTION

INSERT INTO staff (
  staff_id,
  ,"name"
  ,"level"
  ,price
  ,bulk
  ,usage
  ,activate
  ,activate_effect
  ,craft_requirements
  ,source_id
  ,source_pages
  ,"description"
)
VALUES
-- Animal Staff --
(1, 'Animal Staff',	4, 90, 1, 'held in one hand', 'Cast a spell', 'You expend a number of charges from the staff to cast a spell from its list.', "Supply one casting of all listed levels of all listed spells.", 1, 592, "This staff is topped with carved animal and monster heads. While wielding the staff, you gain a +2 circumstance bonus to Nature checks to identify animals." -- Assuming the bug is a missing activate and effect line since it is not present --
)
,(2, 'Animal Staff (Greater)', 8, 460, 1, 'held in one hand', 'Cast a spell', 'You expend a number of charges from the staff to cast a spell from its list.', "Supply one casting of all listed levels of all listed spells.", 1, 592, "This staff is topped with carved animal and monster heads. While wielding the staff, you gain a +2 circumstance bonus to Nature checks to identify animals." -- Assuming the bug is a missing activate and effect line since it is not present --
)
,(3, 'Animal Staff (Major)', 12, 900, 1, 'held in one hand', 'Cast a spell', 'You expend a number of charges from the staff to cast a spell from its list.', "Supply one casting of all listed levels of all listed spells.", 1, 592, "This staff is topped with carved animal and monster heads. While wielding the staff, you gain a +2 circumstance bonus to Nature checks to identify animals." -- Assuming the bug is a missing activate and effect line since it is not present --
)
-- Mentalist's Staff --
,(4, "Mentalist's Staff", 4, 230, 1, 'held in one hand', 'Cast a spell', 'You expend a number of charges from the staff to cast a spell from its list.', "Supply one casting of all listed levels of all listed spells.", 1, 593, "This polished wooden staff bears a swirling motif reminiscent of the folds of a brain. While wielding the staff, you gain a +2 circumstance bonus to checks to identify mental magic."
)
,(5, "Mentalist's Staff (Greater)", 8, 900, 1, 'held in one hand', 'Cast a spell', "You expend a number of charges from the staff to cast a spell from its list.", "Supply one casting of all listed levels of all listed spells.", 1, 593, "This polished wooden staff bears a swirling motif reminiscent of the folds of a brain. While wielding the staff, you gain a +2 circumstance bonus to checks to identify mental magic."
)
,(6, "Mentalist's Staff (Major)", 12, 4000, 1, 'held in one hand', 'Cast a spell', 'You expend a number of charges from the staff to cast a spell from its list.', "Supply one casting of all listed levels of all listed spells.", 1, 593, "This polished wooden staff bears a swirling motif reminiscent of the folds of a brain. While wielding the staff, you gain a +2 circumstance bonus to checks to identify mental magic."
)
-- Staff of Abjuration --
,(7, "Staff of Abjuration", 6, 230, 1, 'held in one hand', 'Cast a spell', 'You expend a number of charges from the staff to cast a spell from its list.', "Supply one casting of all listed levels of all listed spells.", 1, 594, "This intricately carved wooden staff is warm to the touch and thrums with inner energy. While wielding the staff, you gain a +2 circumstance bonus to checks to identify abjuration magic."
)
,(8, "Staff of Abjuration (Greater)", 10, 900, 1, 'held in one hand', 'Cast a spell', 'You expend a number of charges from the staff to cast a spell from its list.', "Supply one casting of all listed levels of all listed spells.", 1, 594, "This intricately carved wooden staff is warm to the touch and thrums with inner energy. While wielding the staff, you gain a +2 circumstance bonus to checks to identify abjuration magic."
)
,(9, "Staff of Abjuration (Major)", 14, 4000, 1, 'held in one hand', 'Cast a spell', 'You expend a number of charges from the staff to cast a spell from its list.', "Supply one casting of all listed levels of all listed spells.", 1, 594, "This intricately carved wooden staff is warm to the touch and thrums with inner energy. While wielding the staff, you gain a +2 circumstance bonus to checks to identify abjuration magic."
)
-- Staff of Conjuration --
,(10, "Staff of Conjuration", 6, 230, 1, 'held in one hand', 'Cast a spell', 'You expend a number of charges from the staff to cast a spell from its list.', "Supply one casting of all listed levels of all listed spells.", 1, 594, "This ash staff is decorated with animals; wielding it, you gain a +2 circumstance bonus to checks to identify conjuration magic."
)
,(11, "Staff of Conjuration (Greater)", 10, 900, 1, 'held in one hand', 'Cast a spell', 'You expend a number of charges from the staff to cast a spell from its list.', "Supply one casting of all listed levels of all listed spells.", 1, 594, "This ash staff is decorated with animals; wielding it, you gain a +2 circumstance bonus to checks to identify conjuration magic."
)
,(12, "Staff of Conjuration (Major)", 14, 4000, 1, 'held in one hand', 'Cast a spell', 'You expend a number of charges from the staff to cast a spell from its list.', "Supply one casting of all listed levels of all listed spells.", 1, 594, "This ash staff is decorated with animals; wielding it, you gain a +2 circumstance bonus to checks to identify conjuration magic."
)
-- Staff of Divination --
,(13, "Staff of Divination", 6, 230, 1, 'held in one hand', 'Cast a spell', 'You expend a number of charges from the staff to cast a spell from its list.', "Supply one casting of all listed levels of all listed spells.", 1, 594, "Semiprecious gemstones emerge, seemingly at random, from the surface of this gnarled wooden staff. While wielding it, you gain a +2 circumstance bonus to checks to identify divination magic."
)
,(14, "Staff of Divination (Greater)", 10, 900, 1, 'held in one hand', 'Cast a spell', 'You expend a number of charges from the staff to cast a spell from its list.', "Supply one casting of all listed levels of all listed spells.", 1, 594, "Semiprecious gemstones emerge, seemingly at random, from the surface of this gnarled wooden staff. While wielding it, you gain a +2 circumstance bonus to checks to identify divination magic."
)
,(15, "Staff of Divination (Major)", 14, 4000, 1, 'held in one hand', 'Cast a spell', 'You expend a number of charges from the staff to cast a spell from its list.', "Supply one casting of all listed levels of all listed spells.", 1, 594, "Semiprecious gemstones emerge, seemingly at random, from the surface of this gnarled wooden staff. While wielding it, you gain a +2 circumstance bonus to checks to identify divination magic."
)
-- Staff of Enchantment --

INSERT INTO staff_spell (
  staff_id
  ,"level"
	,spell_id
)
VALUES
-- Anmial Staff --
 (1, 0, 253)
,(1, 1, 273)
,(1, 1, 442)
-- Animal Staff (Greater) --
,(2, 0, 253)
,(2, 1, 273)
,(2, 1, 442)
,(2, 2, 19)
,(2, 2, 415)
,(2, 2, 442)
,(2, 3, 18)
,(2, 3, 442)
-- Animal Staff (Major) --
,(3, 0, 253)
,(3, 1, 273)
,(3, 1, 442)
,(3, 2, 19)
,(3, 2, 415)
,(3, 2, 442)
,(3, 3, 18)
,(3, 3, 442)
,(3, 4, 442)
,(3, 5, 18)
,(3, 5, 299)
,(3, 5, 442)
-- Mentalist's Staff --
,(4, 0, 88)
,(4, 1, 291)
,(4, 1, 322)
-- Mentalist's Staff (Greater) --
,(5, 0, 88)
,(5, 1, 291)
,(5, 1, 322)
,(5, 2, 314)
,(5, 3, 230)
,(5, 3, 322)
-- Mentalist's Staff (Major) --
,(6, 0, 88)
,(6, 1, 291)
,(6, 1, 322)
,(6, 2, 314)
,(6, 3, 230)
,(6, 3, 322)
,(6, 4, 296)
,(6, 4, 466)
,(6, 5, 322)
,(6, 5, 455)
,(6, 5, 456)
-- Staff of Abjuration --
,(7, 0, 399)
,(7, 1, 11)
,(7, 1, 167)
,(7, 2, 112)
,(7, 2, 148)
,(7, 2, 370)
-- Staff of Abjuration (Greater) --
,(8, 0, 399)
,(8, 1, 11)
,(8, 1, 167)
,(8, 2, 112)
,(8, 2, 148)
,(8, 2, 370)
,(8, 3, 11)
,(8, 3, 202)
,(8, 4, 102)
,(8, 4, 112)
,(8, 4, 370)
-- Staff of Abjuration (Major) --
,(9, 0, 399)
,(9, 1, 11)
,(9, 1, 167)
,(9, 2, 112)
,(9, 2, 148)
,(9, 2, 370)
,(9, 3, 11)
,(9, 3, 202)
,(9, 4, 102)
,(9, 4, 112)
,(9, 4, 370)
,(9, 5, 32)
,(9, 5, 148)
,(9, 6, 112)
,(9, 6, 368)
-- Staff of Conjuration --
,(10, 0, 459)
,(10, 1, 444)
,(10, 1, 494)
,(10, 2, 309)
,(10, 2, 323)
,(10, 2, 444)
,(10, 2, 446)
-- Staff of Conjuration (Greater) --
,(11, 0, 459)
,(11, 1, 444)
,(11, 1, 494)
,(11, 2, 309)
,(11, 2, 323)
,(11, 2, 444)
,(11, 2, 446)
,(11, 3, 432)
,(11, 3, 444)
,(11, 3, 446)
,(11, 4, 79)
,(11, 4, 232)
,(11, 4, 444)
,(11, 4, 446)
-- Staff of Conjuration (Major) --
,(12, 0, 459)
,(12, 1, 444)
,(12, 1, 494)
,(12, 2, 309)
,(12, 2, 323)
,(12, 2, 444)
,(12, 2, 446)
,(12, 3, 432)
,(12, 3, 444)
,(12, 3, 446)
,(12, 4, 79)
,(12, 4, 232)
,(12, 4, 444)
,(12, 4, 446)
,(12, 5, 37)
,(12, 5, 444)
,(12, 5, 446)
,(12, 6, 323)
,(12, 6, 444)
,(12, 6, 446)
-- Staff of Divination --
,(13, 0, 97)
,(13, 1, 485)
,(13, 2, 70)
,(13, 2, 87)
,(13, 2, 466)
-- Staff of Divination (Greater) --
,(14, 0, 97)
,(14, 1, 485)
,(14, 2, 70)
,(14, 2, 87)
,(14, 2, 466)
,(14, 3, 60)
,(14, 3, 87)
,(14, 4, 61)
,(14, 4, 70)
,(14, 4, 466)
-- Staff of Divination (Major) --
,(15, 0, 97)
,(15, 1, 485)
,(15, 2, 70)
,(15, 2, 87)
,(15, 2, 466)
,(15, 3, 60)
,(15, 3, 87)
,(15, 4, 61)
,(15, 4, 70)
,(15, 4, 466)
,(15, 5, 348)
,(15, 5, 390)
,(15, 5, 466)
,(15, 5, 484)
-- Staff of Enchantment --
