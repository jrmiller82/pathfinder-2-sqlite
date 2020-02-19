import yaml

def main():

    with open("monsters.yaml", 'r') as content_file:
        data = yaml.full_load(content_file)

    counter = 0
    for i in data:
        counter += 1
        print("{}\t{}".format(counter, i['name']))

        # Set some data points before iteration
        i['saves_special'] = {}

        # clean up ability mods
        for k, v in i['ability_mods'].items():
            i['ability_mods'][k] = int(v)
            # print(k, i['ability_mods'][k])

        # clean up skills
        for k, v in i['skills'].items():
            i['skills'][k] = int(v)
            # print(k, i['ability_mods'][k])

        # clean up saves
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

        # clean up immunities
        if i['immunities'] == "None":
            i['immunities'] = None
        else:
            tmp = i['immunities']
            splits = tmp.split(',')
            res = []
            for z in splits:
                res.append(z.strip())
            i['immunities'] = res

        print(i['immunities'])

    final = yaml.safe_dump(data, allow_unicode=True)


    with open("tmp-monsters.yaml", 'w') as f:
        f.write(final)

if __name__ == "__main__":
    main()


