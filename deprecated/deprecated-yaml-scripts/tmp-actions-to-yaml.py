import sqlite3
import yaml

def main():
    q = """
SELECT * FROM actions;
    """

    conn = sqlite3.connect('../../pf2.db')

    # so we get a dict out of our query
    conn.row_factory = sqlite3.Row
    c = conn.cursor()

    c.execute(q)
    # data = c.fetchall()
    data = [dict(row) for row in c.fetchall()]
    # print(data)

    for i in data:
        del i['actions_id']
        page = int(i['sources_pages'])
        del i['sources_pages']
        i['source'] = [{'abbr': 'CRB', 'page_start': page, 'page_stop': page }]
        x = i['actioncategories_id']
        if x == 1:
            i['actioncategory'] = "Basic"
        elif x ==2:
            i['actioncategory'] = "Specialty Basic"
        del i['actioncategories_id']
        y = i['actioncosts_id']
        if y == 0:
            i['actioncost_name'] = "Varies"
        elif y == 1:
            i['actioncost_name'] = "Single Action"
        elif y == 2:
            i['actioncost_name'] = "Two Actions"
        elif y == 3:
            i['actioncost_name'] = "Three Actions"
        elif y == 5:
            i['actioncost_name'] = "Free Action"
        elif y == 5:
            i['actioncost_name'] = "Reaction"
        del i['actioncosts_id']




    data = {"action": data}

    final = yaml.safe_dump(data, allow_unicode=True)
    with open('tmp-actions.yaml', 'w') as f:
        f.write(final)


if __name__ == "__main__":
    main()
