list1 = []
n = int(input("ENter the number of elements in list : "))
for i in range(n):
    element = int(input("enter number : "))
    list1.append(element)
print(f"so you list is : {list1}")

for i in range(0,n,2):
    print(f"Element at index {i} is : {list1[i]}")