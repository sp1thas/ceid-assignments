# -*- coding: utf-8 -*-
import nltk #Εισάγουμε το NLTK

print ("Εισάγετε το κείμενο")
text = raw_input("-->") #Το κείμενο που εισάγει ο χρήστης καταχωρείται στην text

tokens = nltk.word_tokenize(text) #Χωρισμός του κειμένου σε λέξεις
tagged = nltk.pos_tag(tokens) #Χρησιμοποιούμε την pos.tag για να βρούμε τι μέρος του λόγου είναι η κάθε λέξη

from collections import Counter #Εισαγωγή μετρητή

counts = Counter(tag for word,tag in tagged) #Μετράμε την συγχόνητα εμφάνησης κάθε μέρος του λόγου

print counts  #Εκτύπωση των αποτελεσμάτων
