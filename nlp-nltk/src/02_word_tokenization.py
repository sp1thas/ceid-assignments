"""
Performs word tokenization.
"""
from nltk.tokenize import regexp_tokenize

print("Input text:")
text = input("-> ")

print(regexp_tokenize(text, pattern=r"(?:(?!\d)\w)+|\S+"))
