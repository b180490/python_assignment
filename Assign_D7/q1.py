string_1 = input("ENter the string : ")
cleaned_sentence = ""
for index in string_1:
    if index.isalnum() == True:
        cleaned_sentence = cleaned_sentence + index
    else:
        continue

cleaned_sentence = cleaned_sentence.lower()

i = -1
flag = True

for index in range(len(cleaned_sentence)//2):
    if cleaned_sentence[index] == cleaned_sentence[i]:
        i = i - 1
    else:
        flag = False
        break
if flag == True:
    print("string is pallindrome")
else:
    print("Sting is not pallindrome")
