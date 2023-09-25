def even_pos(string_1):
    for index in range(1,len(string_1),2):
        print(string_1[index] , end = " ")
    print()


def odd_pos(string_1):
    for index in range(0,len(string_1),2):
        print(string_1[index] , end = " ")
    print()
def length(string_1):
    print(f"the length of string is {len(string_1)}")

def append(string_1):
    x = len(string_1)*"a"
    string_1 = string_1 + x

def print_menu():
    while True:
        print(80*"*")
        global string_1
        string_1 = input("Enter the string : " )
        print("1. Display characters from even position : ")
        print("2. Display characters from odd position : ")
        print("3. Display length of a string : ")
        print("4. Add a at the end of string length times : ")

        option = int(input("ENter the serial no. for following operations : "))
        if option==1:
            even_pos(string_1)
        elif option==2:
            odd_pos(string_1)
        elif option==3:
            length(string_1)
        elif option==4:
            append(string_1)
        else:
            print("Bye Bye")
            break

print_menu()