# The purpose of this directory is to perform scraping of [Archives of Nethys](https://2e.aonprd.com)

## Requirements
1. Python 3.6.8
2. pandas==0.24.2
3. splinter==0.11.0
4. beautifulsoup4==4.8.0
5. selenium==3.141.0
6. Download the [chrome WebDriver](https://splinter.readthedocs.io/en/latest/drivers/chrome.html) and place it in this directory. It is required by selenium and splinter as using Requests was prone to failure.