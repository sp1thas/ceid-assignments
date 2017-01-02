# -*- coding: utf-8 -*-
__author__ = "Simakis Panagiotis"
__license__ = "GPL"
__email__ = "sp1thas@autistici.org"

import nltk
from nltk import tokenize

print ("Write a text to separate in sentences")
text = raw_input(">>> ")
print tokenize.sent_tokenize(text)
