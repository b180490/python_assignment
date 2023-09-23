string1 = input("ENter the string : ")
string1 = string1.lower()
dict = {}
for index in string1:
    if index not in dict.keys():
        dict[index] = 1
    else:
        dict[index] += 1
print(dict)