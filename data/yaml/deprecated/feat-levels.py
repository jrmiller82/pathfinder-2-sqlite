#!/usr/bin/env python3
#
#
import csv
import yaml

def main():
    # Load the CSV file and print out the false ones that need to be updated
    csvlist = []
    with open('../../scripts/feat_level.csv') as csvfile:
        reader = csv.DictReader(csvfile)
        for row in reader:
            if row['match'] == "False":
                csvlist.append(dict(row))
    res = yaml.safe_dump(csvlist, allow_unicode=True, width=100000)
    with open('feats-levels-false-matches.yaml', 'w') as f:
        f.write(res)

    # Load the CSV file and make YAML file for the matched ones
    truelist = []
    with open('../../scripts/feat_level.csv') as csvfile:
        reader = csv.DictReader(csvfile)
        for row in reader:
            if row['match'] == "True":
                r = dict(row)
                tmp = {'name': r['name'], 'level': r['level']}
                truelist.append(tmp)
    trueres = yaml.safe_dump(truelist, allow_unicode=True, width=100000)
    with open('feats-levels-true-matches.yaml', 'w') as f:
        f.write(trueres)

    # open up feats.yaml
    with open('feats.yaml') as yamlfile:
        y = yaml.safe_load(yamlfile)

    z = yaml.safe_load(trueres)

    # y is original yaml to be modified
    # z is new true list
    for i in z:
        #print("Looking for a match for: {}".format(i['name']))
        match = False
        for j in y['feat']:
            if i['name'] == j['name']:
                match = True
                j['level'] = int(i['level'])
                #print('We got a match for: {}'.format(i['name']))
        if match == False:
            print("We never got a match for: {}'.format(i['name'])")
    final = yaml.safe_dump(y, allow_unicode=True, width=100000)
    with open('feats.yaml', 'w') as f:
        f.write(final)





if __name__ == "__main__":
    main()
