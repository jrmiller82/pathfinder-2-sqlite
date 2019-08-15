rm pf2.db
echo 'loading schema'
sqlite3 pf2.db < schema/sources.sql
echo '1'
sqlite3 pf2.db < schema/conditions.sql
echo '2'
sqlite3 pf2.db < schema/backgrounds.sql
echo '3'
sqlite3 pf2.db < schema/abilityscores.sql
echo '4'
sqlite3 pf2.db < schema/bulk.sql
echo '5'
sqlite3 pf2.db < schema/sizes.sql
echo '6'
sqlite3 pf2.db < schema/langs.sql
echo '7'
sqlite3 pf2.db < schema/traits.sql
echo '8'
sqlite3 pf2.db < schema/actions.sql
echo '9'
sqlite3 pf2.db < schema/spells.sql
echo '10'
sqlite3 pf2.db < schema/feats.sql
echo '11'
sqlite3 pf2.db < schema/senses.sql
echo '12'
sqlite3 pf2.db < schema/ancestries.sql
echo '13'
sqlite3 pf2.db < schema/armor.sql
echo '14'
sqlite3 pf2.db < schema/gear.sql
echo 'loading data'
sqlite3 pf2.db < data/sources.sql
echo '1'
sqlite3 pf2.db < data/conditions.sql
echo '2'
sqlite3 pf2.db < data/backgrounds.sql
echo '3'
sqlite3 pf2.db < data/abilityscores.sql
echo '4'
sqlite3 pf2.db < data/bulk.sql
echo '5'
sqlite3 pf2.db < data/senses.sql
echo '6'
sqlite3 pf2.db < data/sizes.sql
echo '7'
sqlite3 pf2.db < data/langs.sql
echo '8'
sqlite3 pf2.db < data/traits.sql
echo '9'
sqlite3 pf2.db < data/actions.sql
echo '10'
sqlite3 pf2.db < data/spells.sql
echo '11'
sqlite3 pf2.db < data/feats.sql
echo '12'
sqlite3 pf2.db < data/ancestries.sql
echo '13'
sqlite3 pf2.db < data/armor.sql
echo '14'
sqlite3 pf2.db < data/gear.sql
echo '15'
sqlite3 pf2.db < data/heritages.sql
# Comment out the following three lines if you don't want to generate the spell data.
# cd data/third_party_json
# python3 spells.py
# cd ../..

# TODO Eventually we will stop relying on the spells.py script and I will have
# the actual .sql files for the spell data; I am waiting to see if the
# third-party source improves the data in the next few weeks. If not, we'll
# "divorce" from that data, dump to .sql, and manually manipulate going
# forward. 


