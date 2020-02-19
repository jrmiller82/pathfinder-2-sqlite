import yaml
import re

def main():

    with open("monsters.yaml", 'r') as content_file:
        data = yaml.full_load(content_file)

    counter = 0
    for i in data:
        counter += 1
        #print("{}\t{}".format(counter, i['name']))

        # Set some data points before iteration
        i['saves_special'] = {}

        # clean up ability mods
        for k, v in i['ability_mods'].items():
            i['ability_mods'][k] = int(v)
            # print(k, i['ability_mods'][k])

        # clean up skills
        for k, v in i['skills'].items():
            i['skills'][k] = int(v)
            # print(k, i['ability_mods'][k])

        # clean up saves
        for k, v in i['saves'].items():
            # print(k, v)
            i['saves_special'][k] = None
            if ',' in v:
                # print("WE GOT A COMMA")
                i['saves'][k] = v.replace(',', '')
            if ';' in v:
                # print("WE GOT A SPECIAL")
                a = v.split('; ')
                # print(a)
                i['saves_special'][k] = a[1]
                i['saves'][k] = a[0]
            elif '(' in v:
                #print("we got a parentheses")
                #print(v)
                a = v.split(' (')
                # print(a)
                i['saves_special'][k] = a[1]
                i['saves'][k] = a[0]
            i['saves'][k] = int(i['saves'][k])
            # print(k, i['saves'][k])

        # clean up immunities
        if i['immunities'] == "None":
            i['immunities'] = None
        else:
            tmp = i['immunities']
            splits = tmp.split(',')
            res = []
            for z in splits:
                res.append(z.strip())
            i['immunities'] = res

        # clean up traits with trailing or leading whitespace
        traitslist = []
        #print(i['traits'])
        for x in i['traits']:
            traitslist.append(x.strip())
            #print(x.strip())
        #print(traitslist)
        i['traits'] = traitslist

        # clean up traits underneath proactive actions with trailing or leading whitespace
        #print(i['proactive_abilities'])
        for x in i['proactive_abilities']:
            traitslist = []
            if x['traits'] != None:
                if len(x['traits']) == 0:
                    x['traits'] = None
                else:
                    for y in x['traits']:
                        traitslist.append(y.strip())
                        #print(y.strip())
                    x['traits'] = traitslist

        # clean up traits underneath automatic_abilities with trailing or leading whitespace
        for x in i['automatic_abilities']:
            traitslist = []
            if x['traits'] != None:
                if len(x['traits']) == 0:
                    x['traits'] = None
                else:
                    for y in x['traits']:
                        traitslist.append(y.strip())
                        #print(y.strip())
                    x['traits'] = traitslist

        # clean up traits underneath melee with trailing or leading whitespace
        for x in i['melee']:
            traitslist = []
            if x['traits'] != None:
                if len(x['traits']) == 0:
                    x['traits'] = None
                else:
                    for y in x['traits']:
                        traitslist.append(y.strip())
                        #print(y.strip())
                    x['traits'] = traitslist

        # clean up traits underneath ranged with trailing or leading whitespace
        for x in i['ranged']:
            traitslist = []
            if x['traits'] != None:
                if len(x['traits']) == 0:
                    x['traits'] = None
                else:
                    for y in x['traits']:
                        traitslist.append(y.strip())
                        #print(y.strip())
                    x['traits'] = traitslist

        # clean up senses

        senseslist = []
        if i['senses'] != None:
            if len(i['senses']) == 0:
                i['senses'] = None
            else:
                for x in i['senses']:
                    senseslist.append(x.strip())
                i['senses'] = senseslist

        # clean up spell DC
        if i['spell_dc'] == "None":
            i['spell_dc'] = None
        else:
            i['spell_dc'] = int(i['spell_dc'])

        # clean up innate_spell levels
        if 'innate_spells' not in i:
            i['innate_spells'] = None
        elif i['innate_spells'] == "None": 
            i['innate_spells'] = None
        else:
            for x in i['innate_spells']:
                x['level'] = int(x['level'])

        # clean up level
        i['level'] = int(i['level'])

        # clean up AC and HP and Perception
        ###print("AC:\t{}".format(i['ac']))
        ###print("HP:\t{}".format(i['hp']))
        res = re.match('(\d+)', i['ac'].strip())
        i['ac'] = int(res.group(1))
        res = re.match('(\d+)', i['hp'].strip())
        i['hp'] = int(res.group(1))

        # clean up melee to hit
        if 'melee' not in i:
            i['melee'] = None
        elif i['melee'] == "None":
            i['melee'] = None
        else:
            for x in i['melee']:
                if 'to_hit' not in x:
                    x['to_hit'] = None
                else:
                    res = re.search('(\d+)', x['to_hit'])
                    #print("{}\t{}".format(counter, i['name']))
                    if res:
                        x['to_hit'] = int(res.group(1))

        # clean up ranged to hit
        if 'ranged' not in i:
            i['ranged'] = None
        elif i['ranged'] == "None":
            i['ranged'] = None
        else:
            for x in i['ranged']:
                if 'to_hit' not in x:
                    x['to_hit'] = None
                else:
                    res = re.search('(\d+)', x['to_hit'])
                    #print("{}\t{}".format(counter, i['name']))
                    if res:
                        x['to_hit'] = int(res.group(1))

        # clean up spell attack to hit
        if 'spell_attack_to_hit' not in i:
            i['spell_attack_to_hit'] = None
        elif i['spell_attack_to_hit'] == "None":
            i['spell_attack_to_hit'] = None
        else:
            res = re.search('(\d+)', i['spell_attack_to_hit'])
            #print("{}\t{}".format(counter, i['name']))
            if res:
                i['spell_attack_to_hit'] = int(res.group(1))

        ###if i['perception'] == None or i['perception'] == "":
        ###    print("{}\t{}".format(counter, i['name']))
        ###    print("\t\t\t\t{}".format(i['perception']))
        if type(i['perception']) is str:
            #print("{}\t{}".format(counter, i['name']))
            res = re.match('(\d+)', i['perception'])
            #print(res.group(1))
            i['perception'] = int(res.group(1))

        # clean up nulls for empty lists

        if i['automatic_abilities'] == []:
            i['automatic_abilities'] = None
        if i['ranged'] == []:
            i['ranged'] = None
        if i['melee'] == []:
            i['melee'] = None

        # clean up resistances

        # set Nones to null
        if i['resistances'] == "None":
            i['resistances'] = None

        # remove trailing ;
        elif i['resistances'].endswith(";"):
            i['resistances'] = i['resistances'][:-1]
            #print("\t{}".format(i['resistances']))

        if i['resistances'] != None:
            #print("{}\t{}".format(counter, i['name']))
            #print("\t{}".format(i['resistances']))
            res = processResistances(i['resistances'])
            i['resistances'] = res
            #print(res)

        # clean up speeds
        print("{}\t{}".format(counter, i['name']))
        print("\t\t\t\t{}".format(i['speed']))


    final = yaml.safe_dump(data, allow_unicode=True)


    with open("tmp-monsters.yaml", 'w') as f:
        f.write(final)

def processResistances(r):
    if '(' in r:
        # TODO This is what needs to be done
        #print("\t\tTODO: Need to process with parentheses")
        return r
    else:
        #print("\t\tNo parentheses")
        # split on commas
        res = r.split(',')
        #print(r.split(','))
        #print(res)
        results_list = []
        for i in res:
            #print(i)
            #tmp = re.search('(\d+)', i)
            #print(tmp.groups())
            tmp = re.split('(\d+)', i)
            #print(tmp)
            tmpres = {"type": tmp[0].strip(), "amount": int(tmp[1])}
            results_list.append(tmpres)

        return results_list


    return "Something went wrong"


if __name__ == "__main__":
    main()


