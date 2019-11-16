# Pathfinder 2 Sqlite

This will be a repository for the code necessary to generate a sqlite database
containing the open gaming content for the Pathfinder 2 table-top
role-playing-game system that is available under the Open Gaming License. Pull
requests welcomed!

## Why sqlite? 

It's an open, permissively licensed, and portable single-file database that does
not require setting up a client/server model. It's also likely that the database
will fit into memory easily so performance issues aren't likely to be a problem.
Also, most use cases of this data will likely be read only, so the sqlite
limitations on concurrent writes won't be an issue either. Finally, it's
permissively licensed.

## Where we need the most help right now

### Proofreading Spells.yaml
It's time for everyone to put physical eyes on the `data/yaml/spells.yaml` file
and compare to **the actual print book or PDF** (taking into account any Errata
of course). The scrape could only do so much and there are many small errors
here and there. Please see issue #61.

Once we have the data proofread, I'll write a glue script to get the spell data
into normalized sql form.

### Monsters.yaml basic data entry
Come over to issue #40. We need help getting monsters into our (tentative) yaml
schema that you can see in the Ancient Red Dragon in `data/yaml/monsters.yaml`.
Once we have the data put together I'll write a glue script to get the monster
data into normalized sql form.

## Roadmap

1. Get data in YAML format (~~spells are in JSON for the time being; but will
   get converted over to YAML in the future~~ They are in yaml format and need proofreading! Please see issue #61).
2. Design schema;
3. Write script to generate sqlite database from YAML data (see
   `data/yaml/gendb.py` for work in progress);
4. Metric boatloads of proofreading
5. Drinks for all when finished!

# Conventions in the Code

## Text Encoding

The goal is for all of our stored text in the database to be unicode,
preferably `UTF-8`.

Also, many of the text fields will be in Github-Flavored Markdown.

Text may use the following escape codes:

1. `\n` for Newline
2. `\n\n` for a new paragraph
3. `\t` for Tab
4. `\\` for Backslash

The action symbols can be represented by the following characters:

| Meaning | Character |
|----------|----|
| 1 action | `\|1\|` |
| 2 actions | `\|2\|` |
| 3 actions | `\|3\|` |
| Reaction | `\|R\|` |
| Free action |  `\|F\|` |
| One Minute |  `\|1m\|` |
| Ten Minutes |  `\|10m\|` |
| One Hour |  `\|1h\|` |

## Text Formatting

Text formatting will be according to github-flavored markdown.

## Identical names

In the case of identical names ex. Sudden Charge for Fighter vs Barbarian we will use an identifier in parentheses ex. Sudden Charge (Fighter) vs Sudden Charge (Barbarian) or Lock (Simple) vs Lock (Average).

## Ability Scores in Integer Representation

| Ability Type | Value |
|--------------|-------|
| None         |     0 |
| STR          |     1 |
| DEX          |     2 |
| CON          |     4 |
| INT          |     8 |
| WIS          |    16 |
| CHA          |    32 |
| Free 1       |    64 |
| Free 2       |   128 |

If I wanted to say STR and DEX, I would use a `3`. If I wanted STR, WIS, and
CHA, that would be 1 + 16 + 32 = `49`. This is to give a program-focused data
return in addition to the textual representation.
