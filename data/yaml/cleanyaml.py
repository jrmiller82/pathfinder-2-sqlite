# THIS FILE SIMPLY LOADS THE YAML FILE INTO PYYAML AND THEN SPITS IT BACK OUT
# TO CLEAN UP AND ORDER ALL THE YAML

import yaml

yfiles = ["actions.yaml",
          "backgrounds.yaml",
          "basics.yaml",
          "bulks.yaml",
          "conditions.yaml",
          "damages.yaml",
          "feats-levels-false-matches.yaml",
          "feats.yaml",
          "langs.yaml",
          "monsters.yaml",
          "requirements.yaml",
          "skills.yaml",
          "sources.yaml",
          "spells.yaml",
          "traits.yaml",
          "triggers.yaml"]


def main():
    for x in yfiles:
        with open(x, 'r') as r:
            data = yaml.full_load(r)
        final = yaml.safe_dump(data, allow_unicode=True)
        with open(x, 'w') as f:
            f.write(final)


if __name__ == "__main__":
    main()
