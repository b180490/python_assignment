# 1) Given a dictionary of students and their favourite colours:
# people={'Arham':'Blue','Lisa':'Yellow',''Vinod:'Purple','Jenny':'Pink'}
# A. Find out how many students are in the list
# B. Change Lisa’s favourite colour
# C. Remove 'Jenny' and her favourite colour
# D. Sort and print students and their favourite colours alphabetically by name

people = {'Arham':'Blue','Lisa':'Yellow','Vinod':'Purple','Jenny':'Pink'}
print(f"Original DIctionary  :{people} ")
def count():
    count = 0
    for index in people:
        count = count + 1
    print(f"No. of students are : {count}")

def change():
    for index in people:
        if index == 'Lisa':
            people[index] = "Red"
    print(f"new Dictionary  is  : {people}")

def remove():
    for index in people:
        if index == "Jenny":
            people.pop("Jenny")
            break
    print(f"Jenny deleted new dict is : {people}")
def sort_1():
    list_1 = []
    for index in people.keys():
        list_1.append(index)

    # print(list_1)
    # list_1.sort()
    # print(list_1)
    print(f"Alphabetical names are : {sorted(list_1)}")



count()
print(50*"*")
change()
print(50*"*")
sort_1()
print(50*"*")
remove()
# print(people)
