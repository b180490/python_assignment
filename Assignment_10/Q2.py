# Q-2) Computation class:
# 1 - Create a Computation class with a default constructor (without parameters)
# allowing to perform various calculations on integers numbers.
# 2 - Create a method called Factorial() which allows to calculate the factorial
# of an integer. Test the method by instantiating the class.
# 3 - Create a method called Sum() allowing to calculate the sum of the first n
# integers 1 + 2 +3 + .. + n. Test this method.
# 4 - Create a method called testPrim() in the Calculation class to test the
# primality of a given integer. Test this method.
# 4 - Create a method called testPrims() allowing to test if two numbers are prime
# Between them.
# 5 - Create a tableMult() method which creates and displays the multiplication
# table of a given integer. Then create an allTablesMult() method to display all
# the integer multiplication tables 1, 2, 3, ..., 9.

class Computation:
    def factorial(self):
        print("factorial method:")
        n = int(input("enter no:"))
        fact=1
        for i in range(1,n+1):
            fact = fact * i
        print(f"factorial = {fact}")

    def sum(self):
        print("sum of n numbers:")
        n = int(input("enter no:"))
        add=0
        for i in range(n+1):
            add = add + i
        print("addition = ",add)

    def testprime(self):
        print("check prime :")
        n = int(input("enter no:"))
        for i in range(2, n):
            if n%i == 0:
                print(f"{n} not a prime no.")
                break
        else:
            print(f"{n} is a prime no")
    def range_test_prime(self):
        print("check prime in range:")
        l = []
        n = int(input("enter no1 :"))
        m = int(input("enter no2 :"))
        for j in range(n,m+1):
            for i in range(2, j):
                if(j==2):
                    print(f"{j} is a prime no.")
                    l.append(j)
                    break

                elif j % i == 0:

                    print(f"{j} not a prime no.")

                    break
            else:
                print(f"{j} is a prime no.")
                l.append(j)
        print(f"list of prime numbers between {n} and {m} is: {l}")


    def table_mult(self):
        print("print table:")
        n = int(input("enter no:"))
        for i in range(1,11):
            print(f"{n} * {i} = {n*i}")

    def all_table_mult(self):
        print("table between 1 to 9")
        print("="*230)
        for num in range(1,11):
            for i in range(1, 11):
                print(f"{i:^5} * {num:^5} = {num * i:^5}",end="||")

            print()
        print("=" * 230)


c = Computation()
c.factorial()
c.sum()
c.testprime()
c.range_test_prime()
c.table_mult()
c.all_table_mult()


