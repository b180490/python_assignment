# dict1 = {'key 1': 200, 'key 2': 300}

def user_input_dict():
    n = int(input("ENter the amount of entries you want to add in dictionary : "))
    global dict_1
    dict_1 = {}
    for i in range(n):
        key = input("Enter key name : ")
        value = int(input("ENter the value of key "))

        dict_1[key] = value
    print(f"DIctionary is : {dict_1}")

def add_():
    user_input_dict()
    count = 0
    for index in dict_1 :
        count = count + dict_1[index]
    print(count)



add_()