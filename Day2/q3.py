def fact(n):
    factorial = 1
    for i in range(1,n+1):
        factorial = factorial * i
    return factorial

n = int(input("ENter the number : "))
print(f"factorial of n is :{fact(n)}")