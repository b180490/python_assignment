PI = 3.14

def calc_Circle():
    r = int(input('Enter the radius of circle : '))
    print(f"Perimeter of circle is : {2 * PI * r}")
    print(f"Area of circle is : {PI * r * r}")

def calc_Square():
    s = int(input('Enter the side of square : '))
    print(f"Perimeter of square is : {4 * s}")
    print(f"Area of square is : {s * s}")

def calc_Rectangle():
    length = int(input('Enter the side of square : '))
    breadth = int(input('Enter the side of square : '))
    print(f"Perimeter of rectangle is : {2 * (breadth +  length)}")
    print(f"Area of rectangle is : {length * breadth}")


def print_menu():
    while True:
        print(80*"*")
        print("Whose are you want to find out (enter the serial no.) : " )
        print("1. Circle")
        print("2. Square")
        print("3. Rectangle")
        print("4. Exit")

        option = int(input("ENter the input : "))
        if option==1:
            calc_Circle()
        elif option==2:
            calc_Square()
        elif option==3:
            calc_Rectangle()
        else:
            print("Bye Bye")
            break

print_menu()