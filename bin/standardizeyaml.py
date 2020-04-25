import yaml
import pprint
import os


def main():

    standardize_monsters()


def standardize_monsters():
    os.chdir('../data/')
    with open('monsters.yaml', 'r') as f:
        data = yaml.full_load(f)
    goodset = set()
    for i in data['monsters']:
        deletekeys = []
        for k, v in i.items():
            # print("Key:{}\tValue:{}".format(k,v))
            if v == None:
                # print("Deleting key: {} from {}".format(k, i['name']))
                deletekeys.append(k)
            else:
                goodset.add(k)
        # got to do it this way or your get a runtime error for changing the
        # index mid iteration
        for z in deletekeys:
            del (i[z])
    # print(goodset)

    for i in data['monsters']:
        for k in goodset:
            if k not in i:
                # print("Adding field {} to {}".format(k, i['name']))
                i[k] = None

    final = yaml.safe_dump(data, allow_unicode=True)
    with open('monsters.yaml', 'w') as f:
        f.write(final)

    # pprint.pprint(data['monsters'][0])

    # print(data['monsters'][0].keys())

    # for key, value in data['monsters'][0]:
    #     print("Key:{}\tValue:{}".format(key,value))


if __name__ == "__main__":
    main()
