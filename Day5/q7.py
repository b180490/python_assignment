dict_1 = {"this": "that"}
result = ""
string_1 = input("ENter the string : ")


string_1 = string_1.split()

for word in range(len(string_1)):
    if string_1[word] == 'this':
        string_1[word] = "that"
    else:
        continue
# print(string_1)

str = ''
for i in string_1:
    str = str + " " + i
print(str)




# print(string_1)
# for i in string_1:
#     print(i)