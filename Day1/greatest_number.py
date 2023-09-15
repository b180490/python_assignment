def greatest_finder():
    a=int(input("enter 1st number"))
    b=int(input("enter 2nd number"))
    c=int(input("enter the 3rd number"))
    if a>b and a>c :
        print(f"{a} is greatest")
    elif b>c and b>a :
        print(f"{b} is greatest")
    elif c>a and c>b :
        print(f"{c} is greatest")
greatest_finder()
