n = int(input("ENter the number of elements in list :  "))
list_1 = []
for i in range(n):
    element = int(input("ENter the number : "))
    list_1.append(element)
print(f"you list is : {list_1}")


for index in list_1:
    print(index * "*")
