rm pf2.db
echo 'loading schema'
sqlite3 pf2.db < schema/sources.sql
sqlite3 pf2.db < schema/damagetypes.sql
sqlite3 pf2.db < schema/conditions.sql
sqlite3 pf2.db < schema/backgrounds.sql
sqlite3 pf2.db < schema/abilityscores.sql
sqlite3 pf2.db < schema/bulks.sql
sqlite3 pf2.db < schema/sizes.sql
sqlite3 pf2.db < schema/langs.sql
sqlite3 pf2.db < schema/traits.sql
sqlite3 pf2.db < schema/actions.sql
sqlite3 pf2.db < schema/spells.sql
sqlite3 pf2.db < schema/feats.sql
sqlite3 pf2.db < schema/senses.sql
sqlite3 pf2.db < schema/ancestries.sql
sqlite3 pf2.db < schema/armor.sql
sqlite3 pf2.db < schema/gear.sql
sqlite3 pf2.db < schema/weapons.sql
sqlite3 pf2.db < schema/ammunition.sql
echo 'loading data'
sqlite3 pf2.db < data/sources.sql
sqlite3 pf2.db < data/damagetypes.sql
sqlite3 pf2.db < data/conditions.sql
sqlite3 pf2.db < data/backgrounds.sql
sqlite3 pf2.db < data/abilityscores.sql
sqlite3 pf2.db < data/bulks.sql
sqlite3 pf2.db < data/senses.sql
sqlite3 pf2.db < data/sizes.sql
sqlite3 pf2.db < data/langs.sql
sqlite3 pf2.db < data/traits.sql
sqlite3 pf2.db < data/actions.sql
sqlite3 pf2.db < data/spells.sql
sqlite3 pf2.db < data/feats.sql
sqlite3 pf2.db < data/ancestries.sql
sqlite3 pf2.db < data/armor.sql
sqlite3 pf2.db < data/gear.sql
sqlite3 pf2.db < data/heritages.sql
sqlite3 pf2.db < data/weapons.sql
sqlite3 pf2.db < data/ammunition.sql
# Comment out the following three lines if you don't want to generate the spell data.
cd data/third_party_json
python3 spells.py
cd ../..
# Comment out the following when we don't want to generate weapons
cd src/weapons
python3 weapons.py
cd ../..

# TODO Eventually we will stop relying on the spells.py script and I will have
# the actual .sql files for the spell data; I am waiting to see if the
# third-party source improves the data in the next few weeks. If not, we'll
# "divorce" from that data, dump to .sql, and manually manipulate going
# forward. 


