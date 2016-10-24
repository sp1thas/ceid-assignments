# -*- coding: utf-8 -*-
import urllib2		#Εισαγωγή της urllib2
import re		#Εισαγωγή της re
print "Type a url"	#Εκτύπωση μηνύματος για εισαγωγή κειμένου από τον χρήστη
url = raw_input("->")	#Καταχώρηση του κειμένου στην μεταβλητή text
page = urllib2.urlopen(url)
page = page.read()	#Διάβασμα της σελίδας
links = re.findall(r"<a.*?\s*href=\"(.*?)\".*?>(.*?)</a>", page)	#Αναζήτηση συνδέσμων
for link in links:
    print('%s, \nLink Text -> %s\n~~~~~~~~~~~~~~~\n' % (link[0], link[1]))	#Εκτύπωση των συνδέσμων και των κειμένων αυτών
