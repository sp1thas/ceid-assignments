# -*- coding: utf-8 -*-
import nltk
from nltk.tokenize import *

print ("Εισάγετε το κείμενο")
text = raw_input("-->")

print regexp_tokenize(text, pattern='(?:(?!\d)\w)+|\S+')
