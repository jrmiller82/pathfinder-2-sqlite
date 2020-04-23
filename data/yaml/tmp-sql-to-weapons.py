import sqlite3
import yaml
import pprint

def main():
    pp = pprint.PrettyPrinter(indent=4)
    conn = sqlite3.connect('../../pf2.db')
    conn.row_factory = sqlite3.Row

    # DO WEAPON GROUPS

    q = """
    SELECT
    sources_pages,
    name,
    descr
    FROM weapongroups
    """

    c = conn.cursor()
    c.execute(q)
    data = [dict(row) for row in c.fetchall()]
    pp.pprint(data)

            # "source": [
            #     {
            #         'abbr': 'CRB',
            #         'page_start': int(i['sources_pages']),
            #         'page_stop': int(i['sources_pages'])
            #     },

    wgdata = []
    for i in data:
        res = {
            'name': i['name'],
            'descr': i['descr'],
            'source': [
                {
                    'abbr': 'CRB',
                    'page_start': int(i['sources_pages']),
                    'page_stop': int(i['sources_pages'])
                }
            ]
        }
        wgdata.append(res)

    pp.pprint(wgdata)
    finalwgdata = {'weapongroups': wgdata}
    pp.pprint(finalwgdata)

    final = yaml.safe_dump(finalwgdata, allow_unicode=True)
    with open('tmp-weapongroups.yaml', 'w') as f:
        f.write(final)

    # DO WEAPONS

    # q = """
    # SELECT
    # price_gp,
    # dice_size,
    # bulk,
    # hands,
    # range,
    # reload,
    # name,
    # descr,
    # (SELECT name FROM actions) as action_name -- use this as template for subqueries
    # FROM weapons;
    # """

    # c = conn.cursor()
    # c.execute(q)
    # data = [dict(row) for row in c.fetchall()]
    # for i in data:
    #     # handle empty bulk entries to match the abbr field in bulks.yaml
    #     if i['bulk'] == '':
    #         i['bulk'] = '-'
    #     # convert gp prices to cp prices to avoid float issues
    #     if i['price_gp'] == '':
    #         i['price_gp'] = '0'
    #     i['price_cp'] = int(float(i['price_gp']) * 100)
    #     del i['price_gp']

    # pp.pprint(data)

    # fdata = {'weapons': data}
    # final = yaml.safe_dump(fdata, allow_unicode=True)
    # with open('tmp-weapons.yaml', 'w') as f:
    #     f.write(final)



if __name__ == '__main__':
   main()
