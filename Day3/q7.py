# 7) Write a function filter_long_words() that takes a list of words and
# an integer len and returns the list of words that are longer than len.


def filter_long_words():
    list1 = []
    n = int(input("enter the number of list : "))
    for i in range(n):
        element = (input("WOrd : "))
        list1.append((element))
    print(f'final list : {list1}')

    print("Words having more than 10 letters are : ")
    for j in range(len(list1)):
        if (len(list1[j]))>=10:
            print(list1[j])
    return
filter_long_words()