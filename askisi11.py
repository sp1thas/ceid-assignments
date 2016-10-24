# -*- coding: utf-8 -*-
from nltk.corpus import wordnet as wn 	#Εισαγωγή βιβλιοθήκης

a=wn.synsets('dog')		#|
d=wn.synsets('cat')		#|Τα ουσιαστηκά που εισάγωνται
g=wn.synsets('human')		#|

b=wn.synset('dog.n.01')
e=wn.synset('cat.n.01')
h=wn.synset('human.n.01')

c=wn.synset('dog.n.01').definition
f=wn.synset('cat.n.01').definition
i=wn.synset('human.n.01').definition

print a		#|
print b		#|
print c		#|
print d		#|
print e		#|Εκτύπωση των synset με το ορισμό της έννοιας
print f		#|
print g		#|
print h		#|
print i		#|
