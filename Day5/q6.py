string_1 = input("Enter the string you want to enter : ")
list1 = ["a","e","i","o","u"," "]
result = ""
for i in string_1:
    if i not in list1:
        result = result + i + "o" + i
    else:
        result = result + i
print(result)
