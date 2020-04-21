import yaml
import pprint

def main():

    with open('ancestries.yaml') as anc:
        anc_data = yaml.full_load(anc)
    with open('heritages.yaml') as her:
        her_data = yaml.full_load(her)

    print(anc_data)
    print(her_data)

    for i in anc_data['ancestries']:
        i['heritages'] = []
        for j in her_data:
            print(j)
            if i['name'] in j['name']:
                i['heritages'].append(j)

    pp = pprint.PrettyPrinter(indent=1)

    pp.pprint(anc_data)

    final = yaml.safe_dump(anc_data, allow_unicode=True)
    with open('tmp-ancestriesheritages.yaml', 'w') as f:
        f.write(final)


if __name__ == "__main__":
    main()
