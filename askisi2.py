import nltk		
from nltk.tokenize import * 	

print ("Εισάγετε το κείμενο")
text = raw_input("-->")		

regexp_tokenize(text, pattern='(?:(?!\d)\w)+|\S+')
