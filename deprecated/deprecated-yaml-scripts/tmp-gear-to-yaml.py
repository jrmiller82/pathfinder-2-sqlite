
import sqlite3
import yaml


def main():
    conn = sqlite3.connect('../../pf2.db')

    conn.row_factory = sqlite3.Row
    c = conn.cursor()
    c.execute("select * from gear;")
    res = [dict(row) for row in c.fetchall()]

    for i in res:
        if i['hands'] == None or i['hands'] == '':
            i['hands'] = 0

    reslist = []
    for i in res:
        if i['descr'] == '':
            i['descr'] = None
        tmp = {
            "name": i['name'],
            'level': int(i['level']),
            "price_gp": i['price'],
            "bulk": i['bulk'],
            "descr": i['descr'],
            'hands': int(i['hands']),
            "source": [
                {
                    'abbr': 'CRB',
                    'page_start': int(i['sources_pages']),
                    'page_stop': int(i['sources_pages'])
                },
            ],
            "traits": None
        }
        reslist.append(tmp)

    # print(reslist)

    tmpd = {'gear': reslist}

    # now dump to yaml
    final = yaml.safe_dump(tmpd, allow_unicode=True)
    with open('tmp-gear.yaml', 'w') as f:
        f.write(final)

    # NOTE the 4 traits were added by hand manually to the final tmp-gear.yaml and not via this script

if __name__ == '__main__':
    main()
