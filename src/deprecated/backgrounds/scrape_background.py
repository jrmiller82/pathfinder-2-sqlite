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
            # Store the name
            name = content.find('h1', class_='title').a.text.strip()
            name

        except:
            name = f'name: {page}'

        try:
            # Start the loop after the link to the book
            start = content.find('a', class_='external-link').next_sibling
            description = ''
            for e in start.next_siblings:
                if isinstance(e, Tag):
                    if e.name == 'br':
                        if e.next_sibling.name == 'br':
                            # If the next 2 elements are br skip this
                            # loop it will be handled in the elif
                            continue
                        elif e.previous_sibling.name == 'br':
                            # If this element and the previous are br
                            # and the next is not append /n
                            description = description + ' /n/n'
                        else:
                            # If there is just one br append /n
                            description =  description + ' /n'
                    else:
                        # Append the text inside the element
                        description = description + e.text.strip()
                elif isinstance(e, NavigableString):
                    # Since it is just a text append it
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
url_background = 'https://2e.aonprd.com/Backgrounds.aspx?ID='
number_background = 50 # number to scrape

description_background = scrape_description(url_background, number_background)


# In[ ]:


description_background.to_csv('background.csv', encoding='UTF-8', index=False)

