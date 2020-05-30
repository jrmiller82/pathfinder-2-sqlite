# THIS FILE SIMPLY LOADS THE YAML FILE INTO PYYAML AND THEN SPITS IT BACK OUT
# TO CLEAN UP AND ORDER ALL THE YAML

import yaml
import glob
import os



def main():

  # change directory to the data directory
  os.chdir('../data/')

  # gets all files with a yaml extension in the directory
  yfiles = []
  for file in glob.glob("monsters.yaml"):
    yfiles.append(file)

  yfiles.sort()
  print("Going to clean up the following files: {}".format(yfiles))

  for x in yfiles:
    with open(x, 'r', encoding="utf8") as r:
      data = yaml.full_load(r)
      for m in data["monsters"]:
        print(m["name"])
        part = yaml.safe_dump(m, allow_unicode=True)
        with open(os.path.join("monsters", m["name"].lower() + ".yaml"), 'w', encoding="utf8") as f:
          f.write(part)

  print("\tDone.")


if __name__ == "__main__":
  main()
