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
                tmp = {'name': row['name'], 'level': row['level']}
                truelist.append(tmp)
    trueres = yaml.safe_dump(truelist, allow_unicode=True, width=100000)
    with open('feats-levels-true-matches.yaml', 'w') as f:
        f.write(trueres)


    # read the lines with true
    #
    # load feats.yaml
    #
    # match lines with true to feats object and add a level=? to each feat with a true match


if __name__ == "__main__":
    main()