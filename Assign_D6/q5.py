Str1="Python83737@#8496"
sum = 0
for index in Str1:
    if index.isdigit() == True:
        sum = sum + int(index)
print(f"Sum of number is : {sum}")
