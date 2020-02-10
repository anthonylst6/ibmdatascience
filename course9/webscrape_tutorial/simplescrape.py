# -*- coding: utf-8 -*-
"""
Created on Thu Feb  6 12:04:42 2020

@author: user
"""

from bs4 import BeautifulSoup
import requests

with open('simple.html') as html_file:
    soup = BeautifulSoup(html_file, 'lxml')

for article in soup.find_all('div', class_ = 'article'):
    headline = article.h2.a.text
    print(headline)
    
    summary = article.p.text
    print(summary)
    
    print()