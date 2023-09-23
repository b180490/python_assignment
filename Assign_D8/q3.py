class BankAccount:
    def __init__(self,bank_id,holder_name,balance=0):
        self.bank_id = bank_id
        self.holder_name = holder_name
        self.balance = balance

    def deposit(self):
        amount  = int(input("Enter the amount you want to deposit : "))
        self.balance = self.balance + amount
        print(f"New Balance is {self.balance}")

    def withdraw(self):
        amount = int(input("ENter the amount you want to withdraw from bank : "))
        if amount > self.balance:
            print("Your money withdrawral request has been denied")
        else:
            self.balance = self.balance - amount

        print(f"New Balance is {self.balance}")

account1 = BankAccount(101,"John Mathews",)
account1.deposit()
account1.deposit()
account1.withdraw()
