import sqlite3
import yaml

def main():
    q = """
SELECT is_comty_use, is_specific_to_adv, name, descr, sources_id, sources_pages
    FROM backgrounds;
    """

    conn = sqlite3.connect('../../pf2.db')

    # so we get a dict out of our query
    conn.row_factory = sqlite3.Row
    c = conn.cursor()

    c.execute(q)
    # data = c.fetchall()
    data = [dict(row) for row in c.fetchall()]
    print(data)

    final = yaml.safe_dump(data, allow_unicode=True)
    with open('tmp-backgrounds.yaml', 'w') as f:
        f.write(final)


if __name__ == "__main__":
    main()
