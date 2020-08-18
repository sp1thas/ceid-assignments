from nltk.book import text1, text2, text3, text4, text5, text6, text7, text8, text9

texts = (text1, text2, text3, text4, text5, text6, text7, text8, text9)
the_texts = (text1, text2, text3)

dic = {}
for text in the_texts:
    text_id = "text" + str(the_texts.index(text) + 1)
    for word in set(text):
        new_entry = (text_id, text.count(word))
        if word not in dic:
            dic[word] = []
        dic[word].append(new_entry)

dic2 = []  # lists of lists

print(dic["the"])
