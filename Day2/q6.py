p = int(input('ENter the principal amount : '))
r = int(input('ENter the rate of intrest : '))
t = int(input('ENter the time : '))

ci = p*((1+(r/100))**(t))

print(f"total amount is : {ci}")