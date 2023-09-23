
def is__upper(list_1):
    count = 0
    for index in list_1:
        if index.isupper() == True:
            count = count + 1
    print(f"total number of upper case letters are : {count}")

def is__lower(list_1):
    count = 0
    for index in list_1:
        if index.islower() == True:
            count = count + 1
    print(f"total number of lower case letters are : {count}")

def is__digit(list_1):
    count = 0
    for index in list_1:
        if index.isdigit() == True:
            count = count + 1
    print(f"total number of digits are : {count}")

def is__whitespace(list_1):
    count = 0
    for index in list_1:
        if index == " ":
            count = count + 1
    print(f"total number of whitespaces are : {count}")


string_1 = input("ENter the string : ")
list_1 = list(string_1)
# print(list_1)

is__upper(list_1)
is__lower(list_1)
is__digit(list_1)
is__whitespace(list_1)