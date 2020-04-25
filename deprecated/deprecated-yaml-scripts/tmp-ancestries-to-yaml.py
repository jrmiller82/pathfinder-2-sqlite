import sqlite3
import yaml

def main():
    conn = sqlite3.connect('../../pf2.db')

    conn.row_factory = sqlite3.Row
    c = conn.cursor()
    stmt = """
    SELECT ancestries.short_name as name,
        flavor_text,
        hp,
        sizes.short_name AS size,
        speed,
        senses.short_name AS senses,
        ancestries.sources_pages
    FROM ancestries
        INNER JOIN
        sizes ON sizes.size_id = ancestries.size_id
        INNER JOIN
        senses ON senses.senses_id = ancestries.vision_id;
    """
    c.execute(stmt)
    res = [dict(row) for row in c.fetchall()]
    print(res)

    # for i in res:
    #     if i['hands'] == None or i['hands'] == '':
    #         i['hands'] = 0

    reslist = []
    for i in res:
        tmp = {
            "name": i['name'],
            "flavor_text": i['flavor_text'],
            "hp": i['hp'],
            "size": i['size'],
            'speed': i['speed'],
            'senses': i['senses'],
            "source": [
                {
                    'abbr': 'CRB',
                    'page_start': int(i['sources_pages']),
                    'page_stop': int(i['sources_pages'])
                },
            ],
            'boosts': None,
            'flaws': None,
            'traits': None
        }
        # add in boosts
        stmt = """
        SELECT abilityscores.short_name
            FROM abilityscores
            INNER JOIN
                ancestries_boosts ON abilityscores.abilityscores_id = ancestries_boosts.abilityscores_id
            INNER JOIN
                ancestries ON ancestries.ancestry_id = ancestries_boosts.ancestry_id
                WHERE ancestries.ancestry_id = (
                                            SELECT ancestries.ancestry_id
                                            WHERE ancestries.short_name = ?
                                        );
        """
        c.execute(stmt, (i['name'],))
        resboosts = [dict(row) for row in c.fetchall()]
        print(resboosts)
        if len(resboosts) == 0:
            tmp['boosts'] = None
        else:
            boostslist = []
            for j in resboosts:
                boostslist.append(j['short_name'])
            tmp['boosts'] = boostslist


        # add in flaws
        stmt = """
        SELECT abilityscores.short_name
            FROM abilityscores
            INNER JOIN
                ancestries_flaws ON abilityscores.abilityscores_id = ancestries_flaws.abilityscores_id
            INNER JOIN
                ancestries ON ancestries.ancestry_id = ancestries_flaws.ancestry_id
                WHERE ancestries.ancestry_id = (
                                            SELECT ancestries.ancestry_id
                                            WHERE ancestries.short_name = ?
                                        );
        """
        c.execute(stmt, (i['name'],))
        resflaws = [dict(row) for row in c.fetchall()]
        print(resflaws)
        if len(resflaws) == 0:
            tmp['flaws'] = None
        else:
            flawslist = []
            for j in resflaws:
                flawslist.append(j['short_name'])
            tmp['flaws'] = flawslist
        # add in traits
        stmt = """
        SELECT traits.short_name
            FROM traits
            INNER JOIN
                ancestries_traits ON traits.trait_id = ancestries_traits.trait_id
            INNER JOIN
                ancestries ON ancestries.ancestry_id = ancestries_traits.ancestry_id
                WHERE ancestries.ancestry_id = (
                                            SELECT ancestries.ancestry_id
                                            WHERE ancestries.short_name = ?
                                        );
        """
        c.execute(stmt, (i['name'],))
        restraits = [dict(row) for row in c.fetchall()]
        print(restraits)
        if len(restraits) == 0:
            tmp['traits'] = None
        else:
            traitslist = []
            for j in restraits:
                traitslist.append(j['short_name'])
            tmp['traits'] = traitslist



        reslist.append(tmp)

    # # print(reslist)

    tmpd = {'ancestries': reslist}

    # now dump to yaml
    final = yaml.safe_dump(tmpd, allow_unicode=True)
    with open('tmp-ancestries.yaml', 'w') as f:
        f.write(final)


if __name__ == "__main__":
    main()
