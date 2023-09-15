def fact():
    for number in range(0,11):
        factorial = 1
        if number==0:
            print(f'factorial of {number} : {factorial}')
        for next_num in range(1,number+1):
            factorial = factorial * next_num
        print(f"factorial of {number} : {factorial}")
fact()

