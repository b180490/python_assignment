import pandas as pd

d1 = {
    'a': 100,
    'b': 200,
    'c': 300,
    'd': 400,
    'e': 800
}


def method1():

    a5 = pd.Series(d1)
    print(a5)


def method_2():
    list1 = []
    list2 = []
    for key in d1.keys():
        list1.append(key)

    for value in d1.values():
        list2.append(value)



    a3 = pd.Series(list2,index=list1)
    print("final series is :")
    print(a3)

method1()
method_2()