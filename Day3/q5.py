def overlapping(list1,list2):
    check = 0
    for i in range(len(list1)):
        for j in range(len(list2)):
            if list1[i] == list2[j]:
                check = check + 1
    if check==0:
        return False
    else:
        return True




list1 = [5,1,3,0,1]
list2 = [9,8,7,10,1]
print(overlapping(list1,list2))