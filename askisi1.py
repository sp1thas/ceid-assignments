import nltk
from nltk import tokenize

print ("Write a text to separate in sentences")
text = raw_input("--> ")
print tokenize.sent_tokenize(text)
