# -*- coding: utf-8 -*-
import nltk		#Εισαγωγή NLTK
from nltk.tag import pos_tag	#Εισαγωγή της pos_tag
from nltk.corpus import brown	#Εισαγωγή bronw
from nltk.tag import pos_tag

print ("Εισάγετε το κείμενο")		#Εκτύπωση μηνύματος για εισαγωγή κειμένου από τον χρήστη
text = raw_input("-->")		#Εισαγωγή του κειμένου και καταχώρηση του στην text
tagged_sent = pos_tag(text.split()) 	#Χωρίζουμε και βρισκουμε μετά τι μέρος του λόγου είναι η κάθε λέξη στο κείμενο
propernouns = [word for word,pos in tagged_sent if  pos=='NN']		#Διαλέγουμε τα ουσιαστηκά του κειμένου


for i in propernouns:
	if text.count(i) == 1:
		print i		#Τυπώνουμε την λίστα των μοναδικών λημμάτων των ουσιαστηκών του κειμένου
