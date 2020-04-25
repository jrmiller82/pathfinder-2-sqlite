#!/usr/bin/env python
# coding: utf-8

# In[28]:


from bs4 import BeautifulSoup as bs
from bs4 import NavigableString, Tag
import csv
from dataclasses import dataclass
from os import path
import pandas as pd
import re
# import requests
from ruamel import yaml
from splinter import Browser
from typing import List # Dict
get_ipython().run_line_magic('autosave', '300')


# ## Dataclasses

# In[2]:


@dataclass(frozen=True)
class Feat:
    name_yaml: str
    name_aon: str
    level: int
    url_search: str
    url_aon: str
    match: bool


# ## Functions

# In[3]:


def feat_names(path: str) -> List:
    """Accepts a string path to a yaml file and returns a list of the feat names."""
    with open(path, 'r', encoding='utf8') as file:
        feats = pd.io.json.json_normalize(yaml.safe_load(file), 'feat')
        return feats['name'].to_list()


# In[4]:


def feat_level(name_yaml: str) -> Feat:
    """Accepts the name of a feat and returns a Feat dataclass."""
    name_clean: str = re.sub(' \([A-Z, a-z]*\)$', '', name_yaml)
    url_search: str = 'https://2e.aonprd.com/Search.aspx?query=' + name_clean
    browser.visit(url_search)
    for number in range(0, 13):
        if number != 6:
            browser.uncheck(f'ctl00$MainContent$TableList${number}')
        else:
            continue
    browser.click_link_by_id('ctl00_MainContent_btnBestMatch')
    url_aon: str = browser.url
    soup: bs = bs(browser.html)
    try:
        name_aon: str = soup.find('h1', 'title').a.text
    except AttributeError:
        name_aon: str = ''
    match: bool = True if name_aon == name_clean else False
    try:
        level: int = int(soup.find('h1', 'title').span.text.split(' ')[1].strip())
    except AttributeError:
        level:int = -1
    return Feat(name_yaml, name_aon, level, url_search, url_aon, match)


# ## Execution

# In[5]:


names = feat_names(path.join('..', 'data', 'yaml', 'feats.yaml'))
feats = []
counter: int = 0
executable_path = {'executable_path': 'chromedriver.exe'}
browser = Browser('chrome', **executable_path, headless=True)
print('############################################################')
print(f'Beginning level scraping')
print('############################################################')
for name in names:
    counter += 1
    print(f'Name: {name} {counter}/{len(names)}')
    feats.append(feat_level(name))
    print(f'AON name: {feats[-1].name_aon}')
    print(f'Level: {feats[-1].level}')
    print(f'Match: {feats[-1].match}')
    print(f'AON url: {feats[-1].url_aon}')
    print(f'Search url: {feats[-1].url_search}')
    print('############################################################')
print(f'End of level scraping')
browser.quit()


# In[21]:


names2 = names[len(feats):]
if names2:
    counter2: int = 0
    browser = Browser('chrome', **executable_path, headless=True)
    print('############################################################')
    print(f'Beginning level scraping')
    print('############################################################')
    for name in names2:
        counter2 += 1
        print(f'Name: {name} {counter2}/{len(names2)}')
        feats.append(feat_level(name))
        print(f'AON name: {feats[-1].name_aon}')
        print(f'Level: {feats[-1].level}')
        print(f'Match: {feats[-1].match}')
        print(f'AON url: {feats[-1].url_aon}')
        print(f'Search url: {feats[-1].url_search}')
        print('############################################################')
    print(f'End of level scraping')
    browser.quit()


# In[31]:


with open('feat_level.csv', mode='w', newline='') as csv_file:
    csv_writer = writer(csv_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
    csv_writer.writerow(['name', 'name_aon', 'level', 'url_search', 'url_aon', 'match'])
    for feat in feats:
        csv_writer.writerow([feat.name_yaml, feat.name_aon, feat.level, feat.url_search, feat.url_aon, feat.match])


# In[ ]:




