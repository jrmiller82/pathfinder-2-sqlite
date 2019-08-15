# This directory scrapes the weapons from the [Archives of Nethys](https://2e.aonprd.com/Weapons.aspx)

## Steps to scrape the weapons
1. Install the requirements from [the previous readme](../README.md)
2. Generate .csv files from copy pasting the tables from [here](https://2e.aonprd.com/Weapons.aspx) and save them in this directory
3. Set the number_of_weapons variable to the number of weapons in the database it is currently 83
4. Run the [python file](scrape.py) or [Jupyter Notebook](scrape.ipynb)