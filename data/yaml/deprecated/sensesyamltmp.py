import yaml
import sqlite3


def main():
    q = "SELECT short_name, description, sources_pages FROM senses"

    conn = sqlite3.connect('../../pf2.db')

    c = conn.cursor()

    c.execute(q)
    data = c.fetchall()

    datalist = []
    for i in data:
        # print(i)
        print(i[2])
        if i[2] != "TODO":
            print("We got an int")
            d = {
                'name': i[0],
                'descr': i[1],
                'source': {
                    'abbr': 'CRB',
                    'page_start': int(i[2]),
                    'page_stop': int(i[2])
                }
            }
            datalist.append(d)
        else:
            d = {
                'name': i[0],
                'descr': i[1],
                'source': {
                    'abbr': 'CRB',
                    'page_start': 9999999,
                    'page_stop': 9999999,
                    'comment': "TODO fix the source page start and stop"
                }
            }
            datalist.append(d)
        

    tmpd = {'senses': datalist}
    final = yaml.safe_dump(tmpd, allow_unicode=True)

    with open('tmp-senses.yaml', 'w') as f:
        f.write(final)


if __name__ == "__main__":
    main()
