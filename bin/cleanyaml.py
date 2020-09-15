# THIS FILE SIMPLY LOADS THE YAML FILE INTO PYYAML AND THEN SPITS IT BACK OUT
# TO CLEAN UP AND ORDER ALL THE YAML

import yaml
import glob
import os
import sys



def main():

    # change directory to the data directory
    os.chdir('../data/')

    # gets all files with a yaml extension in the directory
    yfiles = []
    filter =  ""
    if len(sys.argv) > 1:
        filter = sys.argv[1]
    for file in glob.glob("**/*.yaml", recursive=True):
        if filter == "":
          yfiles.append(file)
        elif file.find(filter) > -1:
          yfiles.append(file)
        

    yfiles.sort()
    print("Going to clean up the following files: {}".format(yfiles))

    for x in yfiles:
        print("Doing: {}".format(x))
        with open(x, 'r', encoding="utf8") as r:
            data = yaml.full_load(r)
            if x == "feats.yaml":
                for i in data['feat']:
                    # This is to clean out smart quotes that made it into the
                    # yaml file so it matches the requirements.yaml
                    if i['requirement'] != None:
                        # print("Before: {}".format(i['requirement']))
                        i['requirement'] = i['requirement'].replace('’', "'")
                        # print("After: {}".format(i['requirement']))
                    if i['trigger'] != None:
                        # print("Before: {}".format(i['trigger']))
                        i['trigger'] = i['trigger'].replace('’', "'")
                        # print("After: {}".format(i['trigger']))
            if x == "triggers.yaml":
                for i in data['trigger']:
                    #print(i)
                    i = i.replace('’', "'")



        final = yaml.safe_dump(data, allow_unicode=True)
        with open(x, 'w', encoding="utf8") as f:
            f.write(final)
        print("\tDone.")


if __name__ == "__main__":
    main()
