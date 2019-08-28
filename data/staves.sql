PRAGMA foreign_keys = ON; -- database requires foreign key checking to be turned
                          -- on PER CONNECTION

INSERT INTO staff (
  staff_id,
  "name",
  "level",
  price,
  bulk,
  usage,
  activate,
  activate_effect,
  craft_requirements,
  source_id,
  source_pages,
  "description"
)
VALUES
-- Animal Staff --
(1, 'Animal Staff',	4, 90, 1, 'held in one hand', 'Cast a spell', NULL, NULL, "Supply one casting of all listed levels of all listed spells.", 1, 592, "This staff is topped with carved animal and monster heads. While wielding the staff, you gain a +2 circumstance bonus to Nature checks to identify animals." -- https://2e.aonprd.com/Equipment.aspx?ID=349 -- See if they fix <%ACTIONS#197> unsure what it is --
)
,(2, 'Animal Staff (Greater)', 8, 460, 1, 'held in one hand', 'Cast a spell', NULL, NULL, "Supply one casting of all listed levels of all listed spells.", 1, 592, "This staff is topped with carved animal and monster heads. While wielding the staff, you gain a +2 circumstance bonus to Nature checks to identify animals." -- https://2e.aonprd.com/Equipment.aspx?ID=349 -- See if they fix <%ACTIONS#197> unsure what it is --
)
,(3, 'Animal Staff (Major)', 12, 900, 1, 'held in one hand', 'Cast a spell', NULL, NULL, "Supply one casting of all listed levels of all listed spells.", 1, 592, "This staff is topped with carved animal and monster heads. While wielding the staff, you gain a +2 circumstance bonus to Nature checks to identify animals." -- https://2e.aonprd.com/Equipment.aspx?ID=349 -- See if they fix <%ACTIONS#197> unsure what it is --
)
-- Mentalist's Staff --
,(4, "Mentalist's Staff", 4, 230, 1, 'held in one hand', 'Cast a spell', NULL, NULL, "Supply one casting of all listed levels of all listed spells.", 1, 593, "This polished wooden staff bears a swirling motif reminiscent of the folds of a brain. While wielding the staff, you gain a +2 circumstance bonus to checks to identify mental magic."
)
,(5, "Mentalist's Staff (Greater)", 8, 900, 1, 'held in one hand', 'Cast a spell', NULL, NULL, "Supply one casting of all listed levels of all listed spells.", 1, 593, "This polished wooden staff bears a swirling motif reminiscent of the folds of a brain. While wielding the staff, you gain a +2 circumstance bonus to checks to identify mental magic."
)
(6, "Mentalist's Staff (Major)", 12, 4000, 1, 'held in one hand', 'Cast a spell', NULL, NULL, "Supply one casting of all listed levels of all listed spells.", 1, 593, "This polished wooden staff bears a swirling motif reminiscent of the folds of a brain. While wielding the staff, you gain a +2 circumstance bonus to checks to identify mental magic."
)
INSERT INTO staff_spell (
  staff_spell_id,
  staff_id,
  spell_id,
  "level"
)
VALUES
-- Anmial Staff --
 (1, 0, 253)
,(1, 1, 273)
,(1, 1, 442)
-- Animal Staff (Greater)
,(2, 0, 253)
,(2, 1, 273)
,(2, 1, 442)
,(2, 2, 19)
,(2, 2, 415)
,(2, 2, 442)
,(2, 3, 18)
,(2, 3, 442)
-- Animal Staff (Major)
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
