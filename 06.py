# -*- coding: utf-8 -*-
__author__ = "Simakis Panagiotis"
__license__ = "GPL"
__email__ = "sp1thas@autistici.org"

import nltk
from nltk.tag import pos_tag
from nltk.corpus import brown
from nltk.tag import pos_tag

print ("Text Input:")
text = raw_input(">>> ")
tagged_sent = pos_tag(text.split())
propernouns = [word for word,pos in tagged_sent if  pos=='NN']


for i in propernouns:
	if text.count(i) == 1:
		print i
