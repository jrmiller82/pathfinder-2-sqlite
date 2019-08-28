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
(
	1,
	'Animal Staff',
	4,
	90,
	1,
	'held in one hand',
	'cast a spell',
	NULL,
	NULL,
	"Supply one casting of all listed levels of all listed spells.",
	1,
	592,
	"This staff is topped with carved animal and monster heads. While wielding the staff, you gain a +2 circumstance bonus to Nature checks to identify animals." -- https://2e.aonprd.com/Equipment.aspx?ID=349 -- See if they fix <%ACTIONS#197> unsure what it is --
),
(
	2,
	'Animal Staff (Greater)',
	8,
	460,
	1,
	'held in one hand',
	'cast a spell',
	NULL,
	NULL,
	"Supply one casting of all listed levels of all listed spells.",
	1,
	592,
	"This staff is topped with carved animal and monster heads. While wielding the staff, you gain a +2 circumstance bonus to Nature checks to identify animals." -- https://2e.aonprd.com/Equipment.aspx?ID=349 -- See if they fix <%ACTIONS#197> unsure what it is --
),
(
	3,
	'Animal Staff (Major)',
	12,
	900,
	1,
	'held in one hand',
	'cast a spell',
	NULL,
	NULL,
	"Supply one casting of all listed levels of all listed spells.",
	1,
	592,
	"This staff is topped with carved animal and monster heads. While wielding the staff, you gain a +2 circumstance bonus to Nature checks to identify animals." -- https://2e.aonprd.com/Equipment.aspx?ID=349 -- See if they fix <%ACTIONS#197> unsure what it is --
),
-- Mentalist's Staff --
(

)
INSERT INTO staff_spell (
  staff_spell_id,
  staff_id,
  spell_id,
  "level"
)
VALUES
-- Anmial Staff --
(
	1,
	253,
	0
),
(
	1,
	273,
	1
),
(
	1,
	442,
	1
),
-- Animal Staff (Greater)
(
	2,
	253,
	0
),
(
	2,
	273,
	1
),
(
	2,
	442,
	1
),
(
	2,
	19,
	2
),
(
	2,
	415,
	2
),
(
	2,
	442,
	2
),
(
	2,
	18,
	3
),
(
	2,
	442,
	3
),
-- Animal Staff (Major)
(
	3,
	253,
	0
),
(
	3,
	273,
	1
),
(
	3,
	442,
	1
),
(
	3,
	19,
	2
),
(
	3,
	415,
	2
),
(
	3,
	442,
	2
),
(
	3,
	18,
	3
),
(
	3,
	442,
	3
),
(
	3,
	442,
	4
),
(
	3,
	18,
	5
),
(
	3,
	299,
	5
)
(
	3,
	442,
	5
)