import sqlite3
import yaml
import pprint

def main():
    pp = pprint.PrettyPrinter(indent=2)
    conn = sqlite3.connect('../../pf2.db')
    conn.row_factory = sqlite3.Row

    q = """
    SELECT
    price_gp,
    dice_size,
    bulk,
    hands,
    range,
    reload,
    name,
    descr,
    (SELECT name FROM actions) as action_name -- use this as template for subqueries
    FROM weapons;
    """

    c = conn.cursor()
    c.execute(q)
    data = [dict(row) for row in c.fetchall()]
    for i in data:
        # handle empty bulk entries
        if i['bulk'] == '':
            i['bulk'] = '-'
        # convert gp prices to cp prices to avoid float issues
        if i['price_gp'] == '':
            i['price_gp'] = '0'
        i['price_cp'] = int(float(i['price_gp']) * 100)
        del i['price_gp']

    pp.pprint(data)

    fdata = {'weapons': data}
    final = yaml.safe_dump(fdata, allow_unicode=True)
    with open('tmp-weapons.yaml', 'w') as f:
        f.write(final)



if __name__ == '__main__':
   main()
