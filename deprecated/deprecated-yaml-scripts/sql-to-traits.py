import sqlite3
import yaml

def main():
    q = """
select traits.short_name, traits.description, traittypes.name FROM traits INNER JOIN traittypes ON traits.traittype=traittypes.traittype_id;
    """

    conn = sqlite3.connect('../../pf2.db')

    c = conn.cursor()

    c.execute(q)
    data = c.fetchall()

    # transform tuples into list of dicts

    datalist = []

    for i in data:
        print(i)
        d = { 'type': i[2], 'name': i[0], 'descr': i[1]}
        datalist.append(d)

    tmpd = { 'trait': datalist }

    # now dump to yaml
    final = yaml.safe_dump(tmpd, allow_unicode=True)
    with open('tmp-traits.yaml', 'w') as f:
        f.write(final)


if __name__ == "__main__":
    main()
