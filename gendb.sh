rm pf2.db
echo 'loading schema'
# echo 'schema/sources.sql'
sqlite3 pf2.db < schema/sources.sql
# echo 'schema/backgrounds.sql'
sqlite3 pf2.db < schema/backgrounds.sql
# echo 'schema/abilityscores.sql'
sqlite3 pf2.db < schema/abilityscores.sql
# echo 'schema/sizes.sql'
sqlite3 pf2.db < schema/sizes.sql
# echo 'schema/langs.sql'
sqlite3 pf2.db < schema/langs.sql
# echo 'schema/traits.sql'
sqlite3 pf2.db < schema/traits.sql
# echo 'schema/feats.sql'
sqlite3 pf2.db < schema/feats.sql
# echo 'schema/senses.sql'
sqlite3 pf2.db < schema/senses.sql
# echo 'schema/ancestries.sql'
sqlite3 pf2.db < schema/ancestries.sql
sqlite3 pf2.db < schema/armor.sql
echo 'loading data'
# echo 'data/sources.sql'
sqlite3 pf2.db < data/sources.sql
# echo 'data/backgrounds.sql'
sqlite3 pf2.db < data/backgrounds.sql
# echo 'data/abilityscores.sql'
sqlite3 pf2.db < data/abilityscores.sql
# echo 'data/senses.sql'
sqlite3 pf2.db < data/senses.sql
# echo 'data/sizes.sql'
sqlite3 pf2.db < data/sizes.sql
# echo 'data/langs.sql'
sqlite3 pf2.db < data/langs.sql
# echo 'data/traits.sql'
sqlite3 pf2.db < data/traits.sql
# echo 'data/feats.sql'
sqlite3 pf2.db < data/feats.sql
# echo 'data/ancestries.sql'
sqlite3 pf2.db < data/ancestries.sql
sqlite3 pf2.db < data/armor.sql
# echo 'data/heritages.sql'
sqlite3 pf2.db < data/heritages.sql


