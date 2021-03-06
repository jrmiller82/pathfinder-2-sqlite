import yaml
import re

def main():

    cleanuphtmlstuff()

    with open("tmp-monsters-html-cleanup.yaml", 'r') as content_file:
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
            # this one line fixes leading and trailing whitespace
            x['description'] = x['description'].strip()
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
            # print("{}\t{}".format(counter, i['name']))
            res = processResistances(i['resistances'])
            i['resistances'] = res
            #print(res)

        #if type(i['resistances']) == str:
        #    print("{}\t{}".format(counter, i['name']))
        #    print("\t\t\t\t{}".format(i['resistances']))

        # clean up speeds
        newspeed = []
        if 'land' in i['speed']:
            # get number
            res = re.match('(\d+)', i['speed']['land'])
            amt = int(res.group(1))
            newspeed.append({"type": "Land", "amount": amt })
        if 'fly' in i['speed']:
            if 'from fly' in i['speed']['fly']:
                # do the from fly version
                res = re.match('(\d+)', i['speed']['fly'])
                amt = int(res.group(1))
                newspeed.append({"type": "Fly (from Fly)", "amount": amt })
            else:
                # get number
                res = re.match('(\d+)', i['speed']['fly'])
                amt = int(res.group(1))
                newspeed.append({"type": "Fly", "amount": amt })
        if 'swim' in i['speed']:
            # get number
            res = re.match('(\d+)', i['speed']['swim'])
            amt = int(res.group(1))
            newspeed.append({"type": "Swim", "amount": amt })
        if 'burrow' in i['speed']:
            # get number
            res = re.match('(\d+)', i['speed']['burrow'])
            amt = int(res.group(1))
            newspeed.append({"type": "Burrow", "amount": amt })
        if 'climb' in i['speed']:
            # get number
            res = re.match('(\d+)', i['speed']['climb'])
            amt = int(res.group(1))
            newspeed.append({"type": "Climb", "amount": amt })
        if 'iceclimb' in i['speed']:
            # get number
            res = re.match('(\d+)', i['speed']['iceclimb'])
            amt = int(res.group(1))
            newspeed.append({"type": "Ice Climb", "amount": amt })
        if 'climbstone' in i['speed']:
            # get number
            res = re.match('(\d+)', i['speed']['climbstone'])
            amt = int(res.group(1))
            newspeed.append({"type": "Climb Stone", "amount": amt })
        if 'burrowsnowonly' in i['speed']:
            # get number
            res = re.match('(\d+)', i['speed']['burrowsnowonly'])
            amt = int(res.group(1))
            newspeed.append({"type": "Burrow (snow only)", "amount": amt })
        if 'burrowsandonly' in i['speed']:
            # get number
            res = re.match('(\d+)', i['speed']['burrowsandonly'])
            amt = int(res.group(1))
            newspeed.append({"type": "Burrow (sand only)", "amount": amt })
        if 'special' in i['speed']:
            for x in i['speed']['special']:
                if x == "ice stride":
                    newspeed.append({"type": "Ice Stride", "amount": None })
                if x == "trickster's step":
                    newspeed.append({"type": "Trickster's Step", "amount": None })
                if x == "earth glide":
                    newspeed.append({"type": "Earth Glide", "amount": None })
                if x == "sand glide":
                    newspeed.append({"type": "Sand Glide", "amount": None })
                if x == "glide":
                    newspeed.append({"type": "Glide", "amount": None })
                if x == "compression":
                    newspeed.append({"type": "Compression", "amount": None })
                if x == "suction":
                    newspeed.append({"type": "Suction", "amount": None })
                if x == "swamp stride":
                    newspeed.append({"type": "Swamp Stride", "amount": None })
                if x == "powerful jumper":
                    newspeed.append({"type": "Powerful Jumper", "amount": None })
                if x == "woodland stride":
                    newspeed.append({"type": "Woodland Stride", "amount": None })
                if x == "trackless step":
                    newspeed.append({"type": "Trackless Step", "amount": None })
                if x == "cloud walk":
                    newspeed.append({"type": "Cloud Walk", "amount": None })
                if x == "swiftness":
                    newspeed.append({"type": "Swiftness", "amount": None })
                if x == "freedom of movement (constant)":
                    newspeed.append({"type": "Freedom of Movement (constant)", "amount": None })
                if x == "spider climb (constant)":
                    newspeed.append({"type": "Spider Climb (constant)", "amount": None })
                if x == "unstoppable burrow":
                    newspeed.append({"type": "Unstoppable Burrow", "amount": None })
                if x == "walk in shadow":
                    newspeed.append({"type": "Walk in Shadow", "amount": None })
                if x == "magma swim":
                    newspeed.append({"type": "Magma Swim", "amount": None })
                if x == "Can't Move":
                    newspeed.append({"type": "Can't Move", "amount": None })
                if x == "Air Walk (constant)":
                    newspeed.append({"type": "Air Walk (constant)", "amount": None })

        
        i['speed'] = newspeed


    final = yaml.safe_dump(data, allow_unicode=True)


    with open("tmp-monsters.yaml", 'w') as f:
        f.write(final)

def cleanuphtmlstuff():
    with open("monsters.yaml", 'r') as f:
        lines = f.readlines()
    for num, _ in enumerate(lines):
        lines[num] = cleanupalinks(lines[num])
        lines[num] = cleanupilinks(lines[num])
        lines[num] = cleanupblinks(lines[num])
        lines[num] = cleanupbrlinks(lines[num])
        lines[num] = cleanupulinks(lines[num])
        lines[num] = cleanupspellslinks(lines[num])
        lines[num] = cleanupimglinks(lines[num])
        lines[num] = cleanuptlinks(lines[num])
    
    with open("tmp-monsters-html-cleanup.yaml", 'w') as f:
        f.writelines(lines)

def cleanupalinks(x):
    tmp = re.sub('<a.+?>', '', x)
    tmp2 = re.sub('</a>', '', tmp)
    return tmp2

def cleanuptlinks(x):
    tmp = re.sub('<t>', '', x)
    return tmp

def cleanupimglinks(x):
    res = re.search('(<img.+?>)', x)
    if res != None:
        print(res)
    if res:
        if 'Single Action' in res.group(0):
            print("SingleAction")
            tmp = re.sub('<img.+?>', '|1|', x)
            tmp = re.sub('\|1\|\|1\|', '|1|', tmp)
        elif 'Two Actions' in res.group(0):
            print("TwoActions")
            tmp = re.sub('<img.+?>', '|2|', x)
            tmp = re.sub('\|2\|\|2\|', '|2|', tmp)
        elif 'Three Actions' in res.group(0):
            print("ThreeActions")
            tmp = re.sub('<img.+?>', '|3|', x)
            tmp = re.sub('\|3\|\|3\|', '|3|', tmp)
        elif 'Free Action' in res.group(0):
            print("FreeAction")
            tmp = re.sub('<img.+?>', '|F|', x)
            tmp = re.sub('\|F\|\|F\|', '|F|', tmp)

        print(tmp)
        return tmp
    else:
        return x

def cleanupspellslinks(x):
    tmp = re.sub('<spells.+?>', '', x)
    tmp2 = re.sub('</spells.+?>', '', tmp)
    return tmp2
    
def cleanupilinks(x):
    tmp = re.sub('<i>', '*', x)
    tmp2 = re.sub('</i>', '*', tmp)
    return tmp2

def cleanupulinks(x):
    tmp = re.sub('<u>', '', x)
    tmp2 = re.sub('</u>', '', tmp)
    return tmp2

def cleanupblinks(x):
    tmp = re.sub('<b>', '**', x)
    tmp2 = re.sub('</b>', '**', tmp)
    return tmp2

def cleanupbrlinks(x):
    return  re.sub('<br>', '\n', x)


def processResistances(r):
    if '(' in r:
        # TODO This is what needs to be done
        #print("\t\tTODO: Need to process with parentheses")

        # this tree does the simple ones without multiple items
        if ',' not in r:
            rr = re.split('(\d+)', r)
            return [{"type": rr[0].strip() + ' ' + rr[2].strip(), "amount": int(rr[1])},]
        elif ',' in r:
            # FIGURE OUT BRANCH FOR THE COMMA IS NOT INSIDE THE PARENTHETICAL
            test = re.search('(\(.+\))', r)
            tstr = test.group(0)
            if ',' in tstr:
                # TODO here's the case for comma IS inside the parenthetical
                print("\n")
                print(r)
                if 'haunted form' not in r:
                    # DO the majority of them
                    rr = re.split('(\d+)', r)
                    print(rr)
                    return [{"type": rr[0].strip() + ' ' + rr[2].strip(), "amount": int(rr[1])},]
                elif 'haunted form' in r:
                    # DO the single haunted form one
                    ##### NOTE I'm hard coding this in as it will be faster than writing regex
                    result = [{"type": "all (except force, ghost touch, or positive; double resistance against non-magical)", "amount": 8},
                               {"type": "haunted form", "amount": 12}]
                    print(result)
                    return result
            else:
                # TODO Here's the case for comma is NOT inside the parenthetical
                splits = re.split(',', r)
                mysplitlist = []
                for x in splits:
                    rr = re.split('(\d+)', x)
                    mysplitlist.append({"type": rr[0].strip() + ' ' + rr[2].strip(), "amount": int(rr[1])})
                return mysplitlist
        else:
            print("else has been run")
            return None
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


