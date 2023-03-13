"""
This scripts performs frequency counting on POS items
"""
from collections import Counter

import nltk

print("Input Text:")
text = input("-> ")

tokens = nltk.word_tokenize(text)
tagged = nltk.pos_tag(tokens)

counts = Counter(tag for word, tag in tagged)

print(counts)
