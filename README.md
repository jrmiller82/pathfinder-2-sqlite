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

## Why not JSON? 

Because I'd rather leverage sql's power, than writing internal code to a future
Pathfinder 2 app. Also, because sqlite is pretty much language agnostic at this
point; Pythonistas, Gophers, Rustaceans, and anything in between can access a
sqlite database.

## Roadmap

1. Design schema;
2. Write script to generate sqlite database from sql code;
3. Write sql code; and
4. Drinks for all when finished!

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

| Meaning | Character | Unicode |
| -------- | -- | ------- |
| 1 action | ⑴ | U+2474 |
| 2 actions | ⑵ | U+2475 |
| 3 actions | ⑶ | U+2476 |
| Reaction | 🄡 | U+1F121 |
| Free action | 🄕 | U+1F115 |

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