# -*- coding: utf-8 -*-
__author__ = "Simakis Panagiotis"
__license__ = "GPL"
__email__ = "sp1thas@autistici.org"

import urllib2
import re
print "Type a url"
url = raw_input("-> ")
page = urllib2.urlopen(url)
page = page.read()
links = re.findall(r"<a.*?\s*href=\"(.*?)\".*?>(.*?)</a>", page)
for link in links:
    print('%s, \nLink Text -> %s\n~~~~~~~~~~~~~~~\n' % (link[0], link[1]))
