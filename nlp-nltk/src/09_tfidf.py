import math

import nltk
from nltk.corpus import brown

category = brown.words(categories="science_fiction")  # scifi category
freq = nltk.FreqDist(category)
category_most = list(freq.keys())[:200]  # list with 200 most common
all_categories = brown.words()
freq2 = nltk.FreqDist(all_categories)
tfidf = []

for c in category_most:
    tf = float(freq.freq(c))
    n = float(freq2.freq(c))
    if n != 0:
        tfidf.append(math.log(n / tf) * (tf / n))
    else:
        tfidf.append(0.0)

print(tfidf, "\n", category_most)  # print lists
