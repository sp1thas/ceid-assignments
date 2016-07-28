import nltk
import math	#Εισαγωγή βιβλιοθηκών απο το NLTK
from nltk.corpus import brown 
import sys



sys.stdout = open('log.txt', 'w')	#Είσοδος κείμένου
category= brown.words(categories='science_fiction')	#Κατηγορία επιστημονικής φαντασίας
freq=nltk.FreqDist(category)
category_most=freq.keys()[:200]		#Δημιουργεία λίστα των 200 συχνότερων λέξεων
all_categories=brown.words()
freq2=nltk.FreqDist(all_categories)
tfidf=[]

for c in category_most:			#Δημιουργία της λίστας με τις 200 λέξεις με το πιο
	tf=float(freq.freq(c))		#υψηλό tfidf score
	n=float(freq2.freq(c))
	if n!=0: 
		tfidf.append(math.log(n/tf)*(tf/n))
	else:
		tfidf.append(0.0)

print  tfidf, '\n', category_most	#Εκτύπωση των δύο λιστών








