def greatest(list1):
    max = list1[0]
    for j in range(0,len(list1)):
        if list1[j]>max:
            max = list1[j]
    return max


list1 = []
n = int(input("ENter the number of elements in list : "))
for i in range(n):
    element = int(input("ENter the element : "))
    list1.append(element)
print(f'final list is : {list1}')
print(f"Greatest element is : {greatest(list1)}")

