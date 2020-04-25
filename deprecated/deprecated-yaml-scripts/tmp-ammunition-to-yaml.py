import sqlite3
import yaml


def main():
    conn = sqlite3.connect('../../pf2.db')

    conn.row_factory = sqlite3.Row
    c = conn.cursor()
    c.execute("select * from ammunition;")
    res = [dict(row) for row in c.fetchall()]

    # for i in res:
    #     print(i)

    reslist = []
    for i in res:
        tmp = {
            "name":
            i['name'],
            "price_gp":
            i['price_gp'],
            "amount":
            i['amount'],
            "bulk":
            i['bulk'],
            "descr":
            i['descr'],
            "source": [
                {
                    'abbr': 'CRB',
                    'page_start': int(i['sources_pages']),
                    'page_stop': int(i['sources_pages'])
                },
            ]
        }
        reslist.append(tmp)

    # print(reslist)

    tmpd = {'ammunition': reslist}

    # now dump to yaml
    final = yaml.safe_dump(tmpd, allow_unicode=True)
    with open('tmp-ammo.yaml', 'w') as f:
        f.write(final)


if __name__ == '__main__':
    main()
