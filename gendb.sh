rm pf2.db
echo 'loading schema'
echo 'schema/abilityscores.sql'
sqlite3 pf2.db < schema/abilityscores.sql
echo 'schema/ancestries.sql'
sqlite3 pf2.db < schema/ancestries.sql
echo 'loading data'
echo 'data/abilityscores.sql'
sqlite3 pf2.db < data/abilityscores.sql
echo 'data/visions.sql'
sqlite3 pf2.db < data/visions.sql
echo 'data/sizes.sql'
sqlite3 pf2.db < data/sizes.sql
echo 'data/traits.sql'
sqlite3 pf2.db < data/traits.sql
echo 'data/ancestries.sql'
sqlite3 pf2.db < data/ancestries.sql
echo 'data/heritages.sql'
sqlite3 pf2.db < data/heritages.sql


