# -*- coding: utf-8 -*-
import re	#Εισαγωγή βιβλιοθηκών απο το NLTK
from nltk.stem import SnowballStemmer as KK

print ("Εισάγετε το κείμενο")	#Εμφάνηση μηνυματος για εισαγωγή κειμένου απο τον χρήστη

text = raw_input("--> ")

words = [word.lower() for word in re.findall(r'\w+',text)]
stemmer = KK('english')
counts = dict()


for word in words:				#|
    stem = stemmer.stem(word)			#|
    if stem in counts:				#|
        shortest,count = counts[stem]		#|
        if len(word) < len(shortest):		#|Μέτρηση των stems και εξαγωγή της συχνότητας εμφάνησης τους
            shortest = word			#|
        counts[stem] = (shortest,count+1)	#|
    else:					#|
        counts[stem]=(word,1)			#|

output = [wordcount + (root,) for root,wordcount in counts.items()]	#Μετατροπή του {key: (word, count)} σε [(word, count, key)] 										για εύκολη ταξινόμηση και εκτύπωση

output.sort(key=lambda x: (-x[1],x[0]))		#Εξοδος όπου η ταξινόμηση με βάση το coount είναι φθίνουσα ενώ με βάση το word είναι 							αλφαβητική

for item in output:
    print '%s:%d (Root: %s)' % item
