import yaml
import sqlite3


def main():

    acats = ["Unarmored", "Light Armor", "Medium Armor", "Heavy Armor"]

    # DO ARMORGROUP
    q = "SELECT short_name, descr FROM armorgroup"

    conn = sqlite3.connect('../../pf2.db')

    c = conn.cursor()

    c.execute(q)
    data = c.fetchall()

    datalist = []
    for i in data:
        d = {
            'name': i[0],
            'descr': i[1],
            'source': [{
                'abbr': 'CRB',
                'page_start': 275,
                'page_stop': 275
            }]
        }
        datalist.append(d)

    # DO MAIN ARMOR TABLE

    qq = """
   SELECT 
       armor.short_name,
       item_level,
       price_text,
       price_gp,
       ac_bonus,
       dex_cap,
       check_penalty,
       speed_penalty,
       strength,
       bulks.short_name AS bulkname,
       armorgroup.short_name AS grpname,
       armorcategory.short_name AS catname
  FROM armor
       LEFT JOIN
       bulks ON bulks.bulk_id = armor.bulk_id
       LEFT JOIN
       armorgroup ON armorgroup.grp_id = armor.grp_id
       LEFT JOIN
       armorcategory ON armorcategory.armor_category_id = armor.armor_category_id;
    """

    c.execute(qq)
    data2 = c.fetchall()

    armorlist = []
    for i in data2:
        print('\n')
        print(i)

        t = {
            'name': i[0],
            'level': i[1],
            'price_text': i[2],
            'price_gp': i[3],
            'ac_bonus': i[4],
            'dex_cap': i[5],
            'check_penalty': i[6],
            'speed_penalty': i[7],
            'strength': i[8],
            'bulk': i[9],
            'group': i[10],
            'category': i[11],
            'source': [
                {
                    'abbr': 'CRB',
                    'page_start': 275,
                    'page_stop': 275
                },
            ]
        }

        armorlist.append(t)

    # datalist = []
    # for i in data:
    #     # print(i)
    #     print(i[2])
    #     if i[2] != "TODO":
    #         print("We got an int")
    #         d = {
    #             'name': i[0],
    #             'descr': i[1],
    #             'source': {
    #                 'abbr': 'CRB',
    #                 'page_start': int(i[2]),
    #                 'page_stop': int(i[2])
    #             }
    #         }
    #         datalist.append(d)
    #     else:
    #         d = {
    #             'name': i[0],
    #             'descr': i[1],
    #             'source': {
    #                 'abbr': 'CRB',
    #                 'page_start': 9999999,
    #                 'page_stop': 9999999,
    #                 'comment': "TODO fix the source page start and stop"
    #             }
    #         }
    #         datalist.append(d)
    print(armorlist)
    tmpd = {'armorcategory': acats, 'armorgroup': datalist, 'armor': armorlist}
    final = yaml.safe_dump(tmpd, allow_unicode=True)

    with open('tmp-armor.yaml', 'w') as f:
        f.write(final)


if __name__ == "__main__":
    main()
