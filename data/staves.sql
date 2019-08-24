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
	1,
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
	1,
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
	1,
	-- know direction --,
	0
),
(
	2,
	1,
	-- magic fang --,
	1
),
(
	3,
	1,
	-- summon animal --,
	1
),
-- Animal Staff (Greater)
(
	4,
	2,
	-- know direction --,
	0
),
(
	5,
	2,
	-- magic fang --,
	1
),
(
	6,
	2,
	-- summon animal --,
	1
),
(
	7,
	2,
	-- animal messenger --,
	2
),
(
	8,
	2,
	-- speak with animals --,
	2
),
(
	9,
	2,
	-- summon animal --,
	2
),
(
	10,
	2,
	-- animal form --,
	3
),
(
	11,
	2,
	-- summon animal --,
	3
),
-- Animal Staff (Major)
(
	12,
	3,
	-- know direction --,
	0
),
(
	13,
	3,
	-- magic fang --,
	1
),
(
	14,
	3,
	-- summon animal --,
	1
),
(
	15,
	3,
	-- animal messenger --,
	2
),
(
	16,
	3,
	-- speak with animals --,
	2
),
(
	17,
	3,
	-- summon animal --,
	2
),
(
	18,
	3,
	-- animal form --,
	3
),
(
	19,
	3,
	-- summon animal --,
	3
),
(
	20,
	3,
	-- summon animal --,
	4
),
(
	21,
	3,
	-- animal form --,
	5
),
(
	22,
	3,
	-- moon frenzy --,
	5
)
(
	23,
	3,
	-- summon animal --,
	5
)