import sqlite3
import yaml
import pprint

def main():
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
    pprint.pprint(data)



if __name__ == '__main__':
   main()