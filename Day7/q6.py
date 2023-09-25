
def pangram_check(sentence):

    only_alphabets = ""
    for index in sentence:
        if index.isalpha() == True:
            only_alphabets = only_alphabets + index

    only_alphabets = only_alphabets.lower()
    only_alphabets = set(only_alphabets)
    count = 0
    for index in only_alphabets:
        count = count + 1

    if count == 26:
        print("Given sentence is pangram")
    else:
        print("Not pangram")



sentence = input("enter the sentence : ")
pangram_check(sentence)
