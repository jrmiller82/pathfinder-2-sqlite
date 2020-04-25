import yaml
import glob
import os
import json

# TODO eventually write in some command flags to only output one of the three formats

def main():
    # change directory to the data directory
    os.chdir('../data/')

    # gets all files with a yaml extension in the directory
    yfiles = []
    for file in glob.glob("*.yaml"):
        yfiles.append(file)

    yfiles.sort()
    print("Going to combine the following files: {}".format(yfiles))

    master_data = {}
    # we want all our various item categories nested under an `item:`
    master_data['item'] = {}
    for x in yfiles:
        print("Doing:\t{}".format(x))

        with open(x, 'r') as r:
            data = yaml.full_load(r)
            for key in data.keys():
                # print(key)
                if key == 'staves':
                    tmp = data[key]
                    # print(tmp)
                    master_data['item'][key] = data[key]
                master_data[key] = data[key]

    # print(master_data)

    # change dir to repository root
    os.chdir('..')

    # WRITE TO A YAML FILE
    print("Writing tmp-combined.yaml")
    final = yaml.safe_dump(master_data, allow_unicode=True)
    with open('tmp-combined.yaml', 'w') as f:
        f.write(final)
    print("\tDone.")

    # WRITE TO A JSON FILE
    print("Writing tmp-combined.json")
    # have to have default=str as the dates aren't json serializable, this will just output them as a str
    final = json.dumps(master_data, sort_keys=True, indent=1, default=str)
    finalflat = json.dumps(master_data, sort_keys=True, default=str)
    with open('tmp-combined.json', 'w') as f:
        f.write(final)
    print("\tDone.")
    print("Writing tmp-combined-flat.json")
    with open('tmp-combined-flat.json', 'w') as f:
        f.write(finalflat)
    print("\tDone.")


if __name__ == "__main__":
    main()
