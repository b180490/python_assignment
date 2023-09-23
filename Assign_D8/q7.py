string1 = input("ENter the string : ")
i = -1
Flag = True
for index in range(len(string1)):
    if string1[index] != string1[i]:
        Flag = False
        break
    i = i -1
if Flag == True:
    print(f"given word {string1} is pallindrome")
else:
    print("not pallindrome")
