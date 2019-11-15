import sqlite3
import yaml
import pprint

def main():
    conn = sqlite3.connect('../../pf2.db')
    conn.row_factory = sqlite3.Row

    q = """
SELECT * FROM feats;
    """
    # so we get a dict out of our query
    c = conn.cursor()
    c.execute(q)
    # data = c.fetchall()
    data = [dict(row) for row in c.fetchall()]
    # pprint.pprint(data)

    q = """
SELECT * FROM requirements;
    """
    # so we get a dict out of our query
    c = conn.cursor()
    c.execute(q)
    # data = c.fetchall()
    req_data = [dict(row) for row in c.fetchall()]
    # pprint.pprint(req_data)

    q = """
SELECT * FROM actioncosts;
    """
    # so we get a dict out of our query
    c = conn.cursor()
    c.execute(q)
    # data = c.fetchall()
    act_data = [dict(row) for row in c.fetchall()]
    # pprint.pprint(act_data)

    q = """
SELECT * FROM frequency;
    """
    # so we get a dict out of our query
    c = conn.cursor()
    c.execute(q)
    # data = c.fetchall()
    freq_data = [dict(row) for row in c.fetchall()]
    # pprint.pprint(freq_data)

    q = """
SELECT * FROM triggers;
    """
    # so we get a dict out of our query
    c = conn.cursor()
    c.execute(q)
    # data = c.fetchall()
    trig_data = [dict(row) for row in c.fetchall()]
    # pprint.pprint(trig_data)

    q = """
SELECT featprereqs_id, descr, feat_id FROM featprereqs;
    """
    # so we get a dict out of our query
    c = conn.cursor()
    c.execute(q)
    # data = c.fetchall()
    prdata = [dict(row) for row in c.fetchall()]
    # pprint.pprint(prdata)
    for i in prdata:
        if i['feat_id'] != None:
            q = """
SELECT short_name from feats WHERE feat_id=?;
            """
            # so we get a dict out of our query
            c = conn.cursor()
            c.execute(q, (i['feat_id'],))
            # data = c.fetchall()
            subprdata = [dict(row) for row in c.fetchall()]
            # pprint.pprint(subprdata)
            i['feat'] = subprdata[0]['short_name']
        else:
            i['feat'] = None

    for i in data:
        # all this mess is getting the sources
        x = i['sources_pages'].split(',')
        # if len(x) > 1:
        #     print("name:{}, x:{}".format(i['short_name'], x))
        s = []
        for j in x:
            page = int(j)
            s.append({'abbr': 'CRB', 'page_start': page, 'page_stop': page })
        i['source'] = s
        del i['sources_pages']

        # now get the actions
        if i['action_id'] == None:
            i['action'] = None
        else:
            # get action name based on id
            id = i['action_id']
            for a in act_data:
                if a['actioncosts_id'] == id:
                    i['action'] = a['name']
        del i['action_id']

        # now do the triggers
        if i['triggers_id'] == None:
            i['trigger'] = None
        else:
            # get trigger name based on id
            id = i['triggers_id']
            for t in trig_data:
                if t['triggers_id'] == id:
                    i['trigger'] = t['triggers_descr']
        del i['triggers_id']

        # now do the requirements
        if i['requirements_id'] == None:
            i['requirement'] = None
        else:
            # get requirement name based on id
            id = i['requirements_id']
            for r in req_data:
                if r['requirements_id'] == id:
                    i['requirement'] = r['requirements_descr']
        del i['requirements_id']

        # now do the frequency
        if i['frequency_id'] == None:
            i['frequency'] = None
        else:
            # get requirement name based on id
            id = i['frequency_id']
            # print(id)
            # print(i['short_name'])
            for f in freq_data:
                if f['freq_id'] == id:
                    i['frequency'] = f['freq_descr']
        del i['frequency_id']

        # populate prereqs:

        ### get prereq IDs for a feat
        stmt = "SELECT featprereqs_id FROM feats_featprereqs WHERE feat_id=?"
        c = conn.cursor()
        # print(i['feat_id'])
        c.execute(stmt, (i['feat_id'],))
        # data = c.fetchall()
        fpr_data = [dict(row) for row in c.fetchall()]
        # if len(fpr_data) > 1:
        #     # print("fuck")
        #     pprint.pprint(fpr_data)
        print(fpr_data)
        for f in fpr_data:
            stmtnext = "SELECT descr, feat_id FROM featprereqs WHERE featprereqs_id=?"
            c = conn.cursor()
            # print(i['feat_id'])
            c.execute(stmtnext, (f['featprereqs_id'],))
            # data = c.fetchall()
            fpr_data_next = [dict(row) for row in c.fetchall()]
            # print(fpr_data_next)
            prlist = []
            for ff in fpr_data_next:
                # print(ff)
                if ff['feat_id'] == None:
                    prlist.append({'descr': ff['descr'], 'feat': None})
                else:
                    stmtfinal = "SELECT short_name from feats WHERE feat_id=?"
                    c = conn.cursor()
                    # print(i['feat_id'])
                    c.execute(stmtfinal, (ff['feat_id'],))
                    # data = c.fetchall()
                    fn_data_final = [dict(row) for row in c.fetchall()]
                    print("STUFF")
                    print(fn_data_final)

                    prlist.append({'descr': ff['descr'], 'feat': fn_data_final[0]['short_name']})
        i['prereqs'] = prlist




        # THIS NEEDS TO BE LAST AS PREREQS REFERENCES IT
        del i['feat_id']
        i['has_been_manually_proofread'] = False


    data = {"feat": data}
    final = yaml.safe_dump(data, allow_unicode=True, width=10000)
    with open('tmp-feat.yaml', 'w') as f:
        f.write(final)


if __name__ == "__main__":
    main()
