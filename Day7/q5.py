string = input("ENter the string : ")
dict1 = {}
for index in string:
    if index not in dict1.keys():
        dict1[index] = 1
    else:
        dict1[index] += 1

print(f"resultant dict is  {dict1}")

print(dict1.keys())

