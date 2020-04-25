import sqlite3
import yaml

def main():
    q = """
select traits.short_name, traits.description, traittypes.name FROM traits INNER JOIN traittypes ON traits.traittype=traittypes.traittype_id;
    """

    q = """
select short_name, description FROM heritages;
    """

    conn = sqlite3.connect('../../../pf2.db')

    c = conn.cursor()

    c.execute(q)
    data = c.fetchall()

    # transform tuples into list of dicts

    datalist = []

    for i in data:
        print(i)
        d = { 'name': i[0], 'descr': i[1], 'feat': None}
        datalist.append(d)


    # now dump to yaml
    final = yaml.safe_dump(datalist, allow_unicode=True)
    with open('tmp-heritages.yaml', 'w') as f:
        f.write(final)


if __name__ == "__main__":
    main()
