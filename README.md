# Pathfinder 2 Sqlite

This will be a repository for the code necessary to generate a sqlite database
containing the open gaming content for the Pathfinder 2 table-top
role-playing-game system that is available under the Open Gaming License. Pull
requests welcomed!

## Data initially in YAML and then scripts to convert to SQL

Currently, the main data source is found in the `data/yaml` directory, and
running `python3 gendb.py` will generate a `tmp.db` sqlite3 database. I'm still
in progress on converting some prior pure SQL work into the YAML-SQL pipeline,
but that should be done in the next month or so.

Why YAML? Two big reasons: 

1. It's easier to human edit than sql statements and provides a convenient
   "flat" data source for anyone wanting to avoid or has no need for SQL
   queries. It's also easily convertible into json for a document-based NoSQL
   solution.
2. I really dislike JSON for human editing.

## Why sqlite? 

It's an open, permissively licensed, and portable single-file database that does
not require setting up a client/server model. It's also likely that the database
will fit into memory easily so performance issues aren't likely to be a problem.
Also, most use cases of this data will likely be read only, so the sqlite
limitations on concurrent writes won't be an issue either. 

## Stop yacking and tell me how to generate the database from the YAMl!

Ok!

You'll need a working python3 installation and the module `pyyaml** installed. 

You'll also need a working sqlite3 install to browse the database once
generated. You can visit its website at http://sqlite.org. If you are on an
*nix-style operating sytstem, you can install through your operating system's
package manager.

- ****Debian/Ubuntu**: run as root: `apt install sqlite3`

- **Fedora**: run as root: `dnf install sqlite`

- **Windows**: visit the download page at https://www.sqlite.org/download.html

- **MacOs**: visit the download page at https://www.sqlite.org/download.html

### To install pyyaml

Run the correct pip install command: `pip install pyyaml`. Depending on your
operating system, this might be `pip3` or `python3-pip` instead of `pip`.

### Generate the database

From the repository root, navigate to the `bin` directory with a `cd ./bin` and
then run `python3 gendb.py`. The code is not optimized for speed, so depending
on your system and disk I/O, it might take a minute or so. The output file is
currently a `tmp.db` in the repository root. You can then explore the db file
with `sqlite3 tmp.db` called from the repository root directory.

## Where we need the most help right now

### Proofreading Spells.yaml
It's time for everyone to put physical eyes on the `data/yaml/spells.yaml` file
and compare to **the actual print book or PDF** (taking into account any Errata
of course). The scrape could only do so much and there are many small errors
here and there. Please see issue #61.

Once we have the data proofread, I'll write a glue script to get the spell data
into normalized sql form.

### Proofreading Monsters.yaml
It's time for everyone to put physical eyes on the `data/yaml/monsters.yaml` file
and compare to **the actual print book or PDF** (taking into account any Errata
of course). The scrape could only do so much and there are many small errors
here and there.

Once we have the data proofread, I'll write a glue script to get the monster data
into normalized sql form.

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
