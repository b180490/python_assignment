def find(number):
    index = 0
    flag = 0
    tuple_1 = (1,5,1,10,87,"JOHN",31)
    for i in tuple_1:
        if number == i:
            print(f"ELement {i} found at {index} ")
            index += 1
            flag = 1
    if flag==0:
        print("Element not found")




number = int(input("ENter the number you want to find : " ))
find(number)