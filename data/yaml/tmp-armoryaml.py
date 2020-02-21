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
        armorgrou

    
    """

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

    tmpd = {'armorcategory': acats, 'armorgroup': datalist}
    final = yaml.safe_dump(tmpd, allow_unicode=True)

    with open('tmp-armor.yaml', 'w') as f:
        f.write(final)


if __name__ == "__main__":
    main()
