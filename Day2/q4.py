units = int(input("ENter the number of units : "))
bill = 0
if units >= 50:
    bill = units * (5)
    total_bill = bill - ((bill * 15) / 100)
    print(f'total bill : {total_bill}')
elif units>=30:
    bill = units * (5)
    total_bill = bill - ((bill*10)/100)
    print(f'total bill : {total_bill}')
else:
    bill = units * (5)
    print(f'total bill : {bill}')