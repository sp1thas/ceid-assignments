# -*- coding: utf-8 -*-
__author__ = "Simakis Panagiotis"
__license__ = "GPL"
__email__ = "sp1thas@autistici.org"

import nltk

print ("Input Text:")
text = raw_input(">>> ")

tokens = nltk.word_tokenize(text)
tagged = nltk.pos_tag(tokens)

from collections import Counter

counts = Counter(tag for word,tag in tagged)

print counts
