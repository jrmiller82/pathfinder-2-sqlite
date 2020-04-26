import yaml

def main():
    with open("items-staves.yaml", 'r') as f:
        data = yaml.full_load(f)

    # print(data)

    for i in data:
        # change variable name
        i['item_category'] = i['itemcategory']
        del i['itemcategory']

        # abstracting staffactivations up to just activations
        i['activation'] = i['staffactivations']
        del i['staffactivations']

        # changing activation to name
        for j in i['activation']:
            j['name'] = j['activation']
            del j['activation']

    final = yaml.safe_dump(data, allow_unicode=True)

    with open("items-staves.yaml", 'w') as f:
        f.write(final)



if __name__ == "__main__":
    main()
