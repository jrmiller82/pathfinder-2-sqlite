#!/usr/bin/env python
# coding: utf-8

# # Scrape data from aon2e and generate csvs to import in to sqlite

# In[ ]:


# Dependencies
import pandas as pd
from bs4 import BeautifulSoup as bs
import os
from splinter import Browser

# Setting up Selenium
chrome_driver = os.path.join('..', 'chromedriver.exe')
executable_path = {'executable_path': chrome_driver}
browser = Browser('chrome', **executable_path, headless=False)

# Pandas config
pd.set_option('display.max_columns', None)


# In[ ]:


# url that contains all the links
url_weapon = 'https://2e.aonprd.com/Weapons.aspx?ID='

# Number of weapons
number_of_weapons = 83

# Empty lists to store the scraped values
name_list = []
description_list = []

print(f'Beginning Data Retrieval')
print(f'------------------------')

# Loop from 1 to the value in weapon_number
for weapon in range(1, number_of_weapons+1):
    
    url = url_weapon + str(weapon)
    browser.visit(url)
    html = browser.html
    soup = bs(html, 'html.parser')

    # Select only the content section
    content = soup.find(id='ctl00_MainContent_DetailedOutput')

    try:
        # Store the name and description
        name = content.find('a').text.strip()
        
    except:
        name = f'weapon: {weapon}'

    try:
        description = content.find('hr').next.text.strip()
        
    except:
        description = content.find('hr').next.strip()
        
    print(f'Processing Weapon {weapon} of {number_of_weapons} | {name}')

    # Append values to our empty lists
    name_list.append(name)      
    description_list.append(description)

print(f'------------------------')
print(f'Data Retrieval Complete')


# In[ ]:


# Directory of csv files which are taken from https://2e.aonprd.com/Weapons.aspx
melee = pd.read_csv('melee.csv')
ranged = pd.read_csv('ranged.csv')


# In[ ]:


data = {'Name': name_list, 'description': description_list}
scrape = pd.DataFrame(data)


# In[ ]:


melee = melee.merge(scrape, how='left', on='Name')


# In[ ]:


ranged = ranged.merge(scrape, how='left', on='Name')


# In[ ]:


melee.to_csv('melee.csv')
ranged.to_csv('ranged.csv')


# In[ ]:




