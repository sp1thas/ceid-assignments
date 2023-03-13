import re
from nltk.stem import SnowballStemmer

print("Input text:\n")  # input message

text = input("-> ")

words = [word.lower() for word in re.findall(r"\w+", text)]
stemmer = SnowballStemmer("english")
counts = dict()

for word in words:
    stem = stemmer.stem(word)
    if stem in counts:
        shortest, count = counts[stem]
        if len(word) < len(shortest):
            shortest = word
        counts[stem] = (shortest, count + 1)
    else:
        counts[stem] = (word, 1)

output = [wordcount + (root,) for root, wordcount in counts.items()]

output.sort(key=lambda x: (-x[1], x[0]))

for item in output:
    print("%s:%d (Root: %s)" % item)
