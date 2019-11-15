import json
import yaml


def main():

    with open(
            '../third_party_json/spells20191115.json',
            encoding='utf-8-sig') as f:
        data = json.load(f)

    # print(data)

    for i in data:

        if 'manual' in i:
            del i['manual']

        i['has_been_manually_proofread'] = False

        if 'duration' not in i:
            i['duration'] = None

        # Fix components
        if 'components' not in i:
            i['components'] = None

        else:
            if i['components'] == ['1minute(material', 'somatic', 'verbal)']:
                i['components'] = ['material', 'somatic', 'verbal']
            if i['components'] == ['10minutes(material', 'somatic', 'verbal)']:
                i['components'] = ['material', 'somatic', 'verbal']
            if i['components'] == ['1hour(material', 'somatic', 'verbal)']:
                i['components'] = ['material', 'somatic', 'verbal']
            if i['components'] == ['1minute','material', 'somatic', 'verbal)']:
                i['components'] = ['material', 'somatic', 'verbal']
            if i['components'] == ['10minutes(somatic', 'verbal)']:
                i['components'] = ['somatic', 'verbal']
            if i['components'] == ['1minute(somatic', 'verbal)']:
                i['components'] = ['somatic', 'verbal']
            if i['components'] == ['1hour(somatic', 'verbal)']:
                i['components'] = ['somatic', 'verbal']
            for j, item in enumerate(i['components']):
                if i['components'][j] == "somatic":
                    i['components'][j] = "Somatic"
                if i['components'][j] == "material":
                    i['components'][j] = "Material"
                if i['components'][j] == "verbal":
                    i['components'][j] = "Verbal"
                if i['components'][j] == "focus":
                    i['components'][j] = "Focus"

        if 'cast' not in i:
            i['cast'] = None

        if 'action' not in i:
            i['action'] = None

        i['action_abbr'] = i['action']
        del i['action']
        if i['action_abbr'] == "10 minutes":
            i['action_abbr'] = "10m"
        if i['action_abbr'] == "1 minute":
            i['action_abbr'] = "1m"
        if i['action_abbr'] == "1 hour":
            i['action_abbr'] = "1h"

        if 'traditions' not in i:
            i['traditions'] = None
        if i['traditions'] != None:
            for j, item in enumerate(i['traditions']):
                i['traditions'][j] = i['traditions'][j].capitalize()

        if 'nethysUrl' in i:
            del i['nethysUrl']


        # print("spell:{}\n\tcast:{}\n\tcomponents:{}\n\taction:{}".format(i['name'], i['cast'], i['components'],i['action']))
        # Fix source data
        x = i['source']
        if "Core Rulebook" in x:
            tmp_abbr = "CRB"
        elif "Lost Omens" in x:
            tmp_abbr = "LOWG"
        else:
            raise Exception(
                'something went wrong on sources in 3pp json data.')
        res = [int(i) for i in x.split() if i.isdigit()]
        # print("source line:{}\tres:{}".format(i['source'], res))
        tmp_page_start = res[0]
        tmp_page_stop = res[0]
        i['source'] = [{
            'abbr': tmp_abbr,
            'page_start': tmp_page_start,
            'page_stop': tmp_page_stop
        }]

        # description to descr
        i['descr'] = i['description']
        del i['description']

        # Fix action cost

        # fix requirements

        if 'requirements' not in i:
            i['req'] = None
        else:
            i['req'] = i['requirements']
            del i['requirements']


        if 'trigger' not in i:
            i['trigger'] = None

        if 'traits' not in i:
            i['traits'] = None
        else:
            for idx, item in enumerate(i['traits']):
                i['traits'][idx] = i['traits'][idx].capitalize()

        # TODO Decide to keep targets or target
        if 'targets' not in i:
            i['targets'] = None

    # for i in data:
    #     del i['actions_id']
    #     page = int(i['sources_pages'])
    #     del i['sources_pages']
    #     i['source'] = [{'abbr': 'CRB', 'page_start': page, 'page_stop': page }]
    #     x = i['actioncategories_id']
    #     if x == 1:
    #         i['actioncategory'] = "Basic"
    #     elif x ==2:
    #         i['actioncategory'] = "Specialty Basic"
    #     del i['actioncategories_id']
    #     y = i['actioncosts_id']
    #     if y == 0:
    #         i['actioncost_name'] = "Varies"
    #     elif y == 1:
    #         i['actioncost_name'] = "Single Action"
    #     elif y == 2:
    #         i['actioncost_name'] = "Two Actions"
    #     elif y == 3:
    #         i['actioncost_name'] = "Three Actions"
    #     elif y == 5:
    #         i['actioncost_name'] = "Free Action"
    #     elif y == 5:
    #         i['actioncost_name'] = "Reaction"
    #     del i['actioncosts_id']

    data = {"spell": data}

    final = yaml.safe_dump(data, allow_unicode=True, width=100000)
    with open('tmp-spells.yaml', 'w') as f:
        f.write(final)


if __name__ == "__main__":
    main()
