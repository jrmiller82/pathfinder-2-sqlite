:: Delete previous db-file
del pf2.db

:: Loading schema
sqlite3 pf2.db < schema/ancestries.sql

:: Loading data
sqlite3 pf2.db < data/visions.sql
sqlite3 pf2.db < data/sizes.sql
sqlite3 pf2.db < data/traits.sql
sqlite3 pf2.db < data/ancestries.sql
sqlite3 pf2.db < data/heritages.sql

:: Wait for keypress
pause
