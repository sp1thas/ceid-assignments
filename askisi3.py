# -*- coding: utf-8 -*-
import nltk   #Εισαγωγή του NLTK

from urllib import urlopen	#Εισαγωγή του urlopen

print ("Enter the url of a htlm site:")		#Εκτύπωση μηνύματος για εισαγωγή κειμένου από τον χρήστη
html = raw_input("--> ")	#Καταχώρηση του κειμένου στην μεταβλητή html

html = urlopen(html).read()
raw = nltk.clean_html(html)  	#Εκνώρηση του κειμένου της ιστοσελίδας σε μεταβλητή
print(raw)	#Εκτύπωση του κειμένου
