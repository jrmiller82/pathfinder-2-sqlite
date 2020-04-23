import sqlite3
import yaml
import pprint

def main():
    pp = pprint.PrettyPrinter(indent=4, width=160)
    conn = sqlite3.connect('../../pf2.db')
    conn.row_factory = sqlite3.Row


    # DO WEAPONS

    q = """
    SELECT
    price_gp,
    dice_size,
    bulk,
    hands,
    range,
    reload,
    weapons.name,
    weapons.descr,
    weapons.sources_id,
    weapons.sources_pages,
    weaponcategories.name AS weaponcategory,
    weapongroups.name AS weapongroup,
    damagetypes.name AS damagetype
    FROM weapons
       INNER JOIN
       weaponcategories ON weapons.weaponcategories_id = weaponcategories.weaponcategories_id
       INNER JOIN
       weapongroups ON weapons.weapongroups_id = weapongroups.weapongroups_id
       INNER JOIN
       damagetypes ON weapons.damagetypes_id = damagetypes.damagetypes_id
    ;
    """

    c = conn.cursor()
    c.execute(q)
    data = [dict(row) for row in c.fetchall()]
    for i in data:
        # handle empty bulk entries to match the abbr field in bulks.yaml
        if i['bulk'] == '':
            i['bulk'] = '-'
        # convert gp prices to cp prices to avoid float issues
        if i['price_gp'] == '':
            i['price_gp'] = '0'
        i['price_cp'] = int(float(i['price_gp']) * 100)
        del i['price_gp']
        i['source'] = [
            {
                     'abbr': 'CRB',
                     'page_start': int(i['sources_pages']),
                     'page_stop': int(i['sources_pages'])
            }
        ]
        del i['sources_id']
        del i['sources_pages']
        # Get traits
        qq = """
        SELECT traits.short_name
            FROM traits
            INNER JOIN
                weapons_traits ON traits.trait_id = weapons_traits.trait_id
            INNER JOIN
                weapons ON weapons.weapons_id = weapons_traits.weapons_id
                WHERE weapons.weapons_id = (
                                            SELECT weapons.weapons_id
                                            WHERE weapons.name = ?
                                        );
        """
        cc = conn.cursor()
        cc.execute(qq, (i['name'],))
        res = cc.fetchall()
        print("\n\nWeapon: {}".format(i['name']))
        tlist = []
        for j in res:
            x = tuple(j)[0]
            tlist.append(x)
        if len(tlist) > 0:
            i['traits'] = tlist
        else:
            i['traits'] = None



    # pp.pprint(data)

    fdata = {'weapons': data}
    final = yaml.safe_dump(fdata, allow_unicode=True)
    with open('tmp-weapons.yaml', 'w') as f:
        f.write(final)



if __name__ == '__main__':
   main()

# def done():
    # DO WEAPON GROUPS

    # q = """
    # SELECT
    # sources_pages,
    # name,
    # descr
    # FROM weapongroups
    # """

    # c = conn.cursor()
    # c.execute(q)
    # data = [dict(row) for row in c.fetchall()]
    # pp.pprint(data)

    #         # "source": [
    #         #     {
    #         #         'abbr': 'CRB',
    #         #         'page_start': int(i['sources_pages']),
    #         #         'page_stop': int(i['sources_pages'])
    #         #     },

    # wgdata = []
    # for i in data:
    #     res = {
    #         'name': i['name'],
    #         'descr': i['descr'],
    #         'source': [
    #             {
    #                 'abbr': 'CRB',
    #                 'page_start': int(i['sources_pages']),
    #                 'page_stop': int(i['sources_pages'])
    #             }
    #         ]
    #     }
    #     wgdata.append(res)

    # pp.pprint(wgdata)
    # finalwgdata = {'weapongroups': wgdata}
    # pp.pprint(finalwgdata)

    # final = yaml.safe_dump(finalwgdata, allow_unicode=True)
    # with open('tmp-weapongroups.yaml', 'w') as f:
    #     f.write(final)
