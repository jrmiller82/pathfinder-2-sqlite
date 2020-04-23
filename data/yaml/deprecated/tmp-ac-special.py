import yaml

def main():

    with open('monsters.yaml') as m:
        data = yaml.full_load(m)

    monsterlist = []
    for i in data:
        if 'ac_special' in i:
            monsterlist.append(i)
        else:
            i['ac_special'] = None
            monsterlist.append(i)

    finaldata = {'monsters': monsterlist}

    final = yaml.safe_dump(finaldata, allow_unicode=True)

    with open('tmp-monsters.yaml', 'w') as f:
        f.write(final)


if __name__ == "__main__":
    main()
