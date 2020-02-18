import yaml

def main():

    with open("monsters.yaml", 'r') as content_file:
        data = yaml.full_load(content_file)

    # print(data[0]['ability_mods'])

    counter = 0
    for i in data:
        # counter += 1
        # print("{}\t{}".format(counter, i['name']))
        i['saves_special'] = {}
        for k, v in i['ability_mods'].items():
            i['ability_mods'][k] = int(v)
            # print(k, i['ability_mods'][k])
        for k, v in i['skills'].items():
            i['skills'][k] = int(v)
            # print(k, i['ability_mods'][k])
        for k, v in i['saves'].items():
            # print(k, v)
            i['saves_special'][k] = None
            if ',' in v:
                # print("WE GOT A COMMA")
                i['saves'][k] = v.replace(',', '')
            if ';' in v:
                # print("WE GOT A SPECIAL")
                a = v.split('; ')
                # print(a)
                i['saves_special'][k] = a[1]
                i['saves'][k] = a[0]
            elif '(' in v:
                print("we got a parentheses")
                print(v)
                a = v.split(' (')
                # print(a)
                i['saves_special'][k] = a[1]
                i['saves'][k] = a[0]
            i['saves'][k] = int(i['saves'][k])
            # print(k, i['saves'][k])

    final = yaml.safe_dump(data, allow_unicode=True)


    with open("tmp-monsters.yaml", 'w') as f:
        f.write(final)

if __name__ == "__main__":
    main()


