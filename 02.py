# -*- coding: utf-8 -*-
__author__ = "Simakis Panagiotis"
__license__ = "GPL"
__email__ = "sp1thas@autistici.org"

import nltk
from nltk.tokenize import *

print ("Input text:")
text = raw_input(">>> ")

print regexp_tokenize(text, pattern='(?:(?!\d)\w)+|\S+')
