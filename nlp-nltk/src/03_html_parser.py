"""
Parse the given url and return the raw text.
"""
from urllib.request import urlopen

from bs4 import BeautifulSoup

print("Enter the url of a html site:")
html = input("-> ")

html = urlopen(html).read()
raw = BeautifulSoup(html, "html.parser").get_text()
print(raw)
