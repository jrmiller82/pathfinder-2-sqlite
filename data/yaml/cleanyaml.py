# THIS FILE SIMPLY LOADS THE YAML FILE INTO PYYAML AND THEN SPITS IT BACK OUT
# TO CLEAN UP AND ORDER ALL THE YAML

import yaml

yfiles = [
    "actions.yaml", "ancestries.yaml", "armor.yaml", "backgrounds.yaml",
    "basics.yaml", "bulks.yaml", "conditions.yaml", "damage.yaml",
    "feats-levels-false-matches.yaml", "feats.yaml", "langs.yaml",
    "monsters.yaml", "requirements.yaml", "senses.yaml", "skills.yaml",
    "sources.yaml", "spells.yaml", "traits.yaml", "triggers.yaml"
]


def main():
    for x in yfiles:
        print("Doing: {}".format(x))
        with open(x, 'r') as r:
            data = yaml.full_load(r)
            if x == "feats.yaml":
                for i in data['feat']:
                    if i['requirement'] != None:
                        print("Before: {}".format(i['requirement']))
                        i['requirement'] = i['requirement'].replace('’', "'")
                        print("After: {}".format(i['requirement']))
        final = yaml.safe_dump(data, allow_unicode=True)
        with open(x, 'w') as f:
            f.write(final)
        print("\tDone.")


if __name__ == "__main__":
    main()
