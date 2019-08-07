:: Delete previous db-file
del pf2.db

:: Loading schema
sqlite3 pf2.db < schema/sources.sql
sqlite3 pf2.db < schema/backgrounds.sql
sqlite3 pf2.db < schema/abilityscores.sql
sqlite3 pf2.db < schema/sizes.sql
sqlite3 pf2.db < schema/langs.sql
sqlite3 pf2.db < schema/traits.sql
sqlite3 pf2.db < schema/feats.sql
sqlite3 pf2.db < schema/senses.sql
sqlite3 pf2.db < schema/ancestries.sql
sqlite3 pf2.db < schema/armor.sql

:: Loading data
sqlite3 pf2.db < data/sources.sql
sqlite3 pf2.db < data/backgrounds.sql
sqlite3 pf2.db < data/abilityscores.sql
sqlite3 pf2.db < data/senses.sql
sqlite3 pf2.db < data/sizes.sql
sqlite3 pf2.db < data/langs.sql
sqlite3 pf2.db < data/traits.sql
sqlite3 pf2.db < data/feats.sql
sqlite3 pf2.db < data/ancestries.sql
sqlite3 pf2.db < data/heritages.sql
sqlite3 pf2.db < data/armor.sql

:: Wait for keypress
pause
