"""
Extract urls from the given url.
"""
import re
from urllib.request import urlopen

print("Type a url")
url = input("-> ")
page = urlopen(url).read().decode("utf-8", errors="ignore")
links = re.findall(r"<a.*?\s*href=\"(.*?)\".*?>(.*?)</a>", page)

for link in links:
    print("%s, \nLink Text -> %s\n~~~~~~~~~~~~~~~\n" % (link[0], link[1]))
