def way1():
    list_1 = ["Sunday" , "Monday" , "Tuesday","Wednesday"]
    print(f"Original list : {list_1}")
    list_1.insert(0,"Wednesday")
    list_1.pop()
    print(f"new list is : {list_1}")

# def way2():
#     list_1 = ["Sunday", "Monday", "Tuesday", "Wednesday"]
#     print(f"Original list : {list_1}")
#     temp = ""
#
#     for index in range(len(list_1)):
#         temp = list_1[index+1]
#         list_1[index+1] = list_1[index]


way1()