"""
Performs sentence tokenization.
"""
from nltk import tokenize

print("Write a text to separate it into sentences")
text = input("-> ")
print(tokenize.sent_tokenize(text))
