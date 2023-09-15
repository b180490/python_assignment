n = int(input("ENter the number of elements in list :  "))
list_1 = []
for i in range(n):
    element = input("ENter the element : ")
    list_1.append(element)
print(f"you list is : {list_1}")

max = list_1[0]
for j in range(n):
    if len(list_1[j]) > len(max):
        max = list_1[j]
print(f"max element is : {max}")