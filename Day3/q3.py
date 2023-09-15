# ['a','b','c','d','e'] with [1,2,3]

list1 = ['a','b','c','d','e']
list1.remove('b')

list2 = []
n = int(input("Enter the number of elements you want to add in list"))
for i in range(0,n):
    element = int(input("Enter the elements : "))
    list2.append(element)
list1.insert(1,list2)
print(f"final list is : {list1}")