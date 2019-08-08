import json

def main():
    # load json into python
    print("loading json")
    ## read file into memory
    with open('spells.json') as f:
        # raw_data = f.read()
        data = json.load(f)
    print("Imported {} spells.".format(len(data)))
    # alphabetize spells into a list
    sorted_names = []
    for i in data:
        sorted_names.append(i['name'])
    sorted_names.sort()
    # print(sorted_names)

    # get list of dicts in order
    sorted_dicts = [] # sorted by ['name'] alphabetically
    for i in sorted_names:
        for x in data:
            # yes, I know this is double nested and not that efficient; don't
            # care yet, it's not that many items
            if x['name'] == i:
                sorted_dicts.append(x)

    # NOW we can go alphabetically spell by spell
    for i in sorted_dicts:
        do_sql(i)

# TODO write this function after sql schema drafted
def do_sql():
    pass


if __name__ == "__main__":
    main()
