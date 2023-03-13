"""
Extract nouns.
"""
from nltk.tag import pos_tag

print("Text Input:")
text = input("-> ")
tagged_sent = pos_tag(text.split())
nouns = [word for word, pos in tagged_sent if pos == "NN"]

for i in nouns:
    if text.count(i) == 1:
        print(i)
