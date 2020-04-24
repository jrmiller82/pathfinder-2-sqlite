import sqlite3
import yaml
import pprint

def main():
    pp = pprint.PrettyPrinter(indent=1, width=180)
    conn = sqlite3.connect('../deprecated/pf2.db')
    conn.row_factory = sqlite3.Row

    q = """
    SELECT * FROM staff;
    """

    c = conn.cursor()
    c.execute(q)
    data = [dict(row) for row in c.fetchall()]

    for i in data:
        # ADD THE ITEM CATEGORY
        i['itemcategory'] = "Staves"

        # convert gp prices to cp prices to avoid float issues
        if i['price'] == '':
            i['price'] = '0'
        i['price_cp'] = int(float(i['price']) * 100)
        del i['price']

        # make bulk a string
        i['bulk'] = str(i['bulk'])

        # handle source entries
        i['source'] = [
            {
                     'abbr': 'CRB',
                     'page_start': int(i['source_pages']),
                     'page_stop': int(i['source_pages'])
            }
        ]
        del i['source_id']
        del i['source_pages']

        # Get staffactivations and effects
        qq = """
        SELECT activation, effect FROM staffactivations
        INNER JOIN
          staff_staffactivations ON
          staffactivations.staffactivations_id = staff_staffactivations.staffactivations_id
        INNER JOIN
          staff ON staff.staff_id = staff_staffactivations.staff_id
          WHERE staff.staff_id = ?;
        """

        # Get staffactivations
        cc = conn.cursor()
        cc.execute(qq, (i['staff_id'],))
        res = cc.fetchall()
        # print("\n\nStaff: {}".format(i['name']))
        slist = []
        for j in res:
            x = tuple(j)[0]
            y = tuple(j)[1]
            xy = {'activation': x, 'effect': y}
            slist.append(xy)
        if len(slist) > 0:
            i['staffactivations'] = slist
        else:
            i['staffactivations'] = None

        # Get traits
        qq = """
        SELECT traits.short_name
            FROM traits
            INNER JOIN
                staff_trait ON traits.trait_id = staff_trait.trait_id
            INNER JOIN
                staff ON staff.staff_id = staff_trait.staff_id
                WHERE staff.staff_id = ?;
        """
        cc = conn.cursor()
        cc.execute(qq, (i['staff_id'],))
        res = cc.fetchall()
        # print("\n\nWeapon: {}".format(i['name']))
        tlist = []
        for j in res:
            x = tuple(j)[0]
            tlist.append(x)
        if len(tlist) > 0:
            i['traits'] = tlist
        else:
            i['traits'] = None

        # DO THIS LAST
        del i['staff_id']

    pp.pprint(data)


if __name__ == '__main__':
   main()
