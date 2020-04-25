#!/usr/bin/env python
# coding: utf-8

# # Scrape data from aon2e and generate csvs to import in to sqlite

# In[ ]:


# Dependencies
import pandas as pd
from bs4 import BeautifulSoup as bs, Tag, NavigableString
import os
from splinter import Browser

# Setting up Selenium
chrome_driver = os.path.join('..', 'chromedriver.exe')
executable_path = {'executable_path': chrome_driver}
browser = Browser('chrome', **executable_path, headless=False)

# Pandas config
pd.set_option('display.max_columns', None)


# In[ ]:


def scrape_description(url, id_number):

    # Empty lists to store the scraped values
    name_list = []
    description_list = []

    print(f'Beginning Data Retrieval')
    print(f'------------------------')

    # Loop from 1 to the value in weapon_number
    for page in range(1, id_number+1):

        browser.visit(url + str(page))
        html = browser.html
        soup = bs(html, 'html.parser')

        # Select only the content section
        content = soup.find(id='ctl00_MainContent_DetailedOutput')

        try:
            # Store the name and description
            name = content.find('h1', class_='title')
            name.span.decompose()
            name = name.text

        except:
            name = f'name: {page}'

        try:
            description = ''
            start = content.find('hr')
            for e in start.next_siblings:
                if isinstance(e, Tag):
                    description = description + e.text.strip()
                elif isinstance(e, NavigableString):
                    description = description + e

        except:
            description = f'name: {page}'

        print(f'{page} of {id_number} | {name}')

        # Append values to our empty lists
        name_list.append(name)      
        description_list.append(description)

    print(f'------------------------')
    print(f'Data Retrieval Complete')
    
    # Create df with the scraped data
    data = {'Name': name_list, 'description': description_list}
    
    # Returns a data frame
    return pd.DataFrame(data)


# In[ ]:


# scrape the descriptions
url_gear = 'https://2e.aonprd.com/Equipment.aspx?ID='
number_gear = 65 #65 to scrape

gear_description = scrape_description(url_gear, number_gear)


# In[ ]:


# Directory of csv files which are taken from https://2e.aonprd.com/Weapons.aspx
gear = pd.read_csv('gear.csv')


# In[ ]:


gear_description


# In[ ]:


gear = gear.merge(gear_description, how='left', on='Name')
gear['Level'].fillna(0, inplace=True)


# In[ ]:


gear.to_csv('gear.csv')


# In[ ]:




