from nltk.corpus import wordnet as wn  # import module

a = wn.synsets("dog")
d = wn.synsets("cat")  # imported nouns
g = wn.synsets("human")

b = wn.synset("dog.n.01")
e = wn.synset("cat.n.01")
h = wn.synset("human.n.01")

c = wn.synset("dog.n.01").definition
f = wn.synset("cat.n.01").definition
i = wn.synset("human.n.01").definition

# synset print
print(a, "\n", b, "\n", c, "\n", d, "\n", e, "\n", f, "\n", g, "\n", h, "\n", i)
