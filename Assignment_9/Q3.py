# Q3. Create a python application for the following requirement . It is a banking
# application having minimum 5 accounts in it. Class bank is having following
# details bankName, branch name,IFSC code , accountList(5 accounts) Class
# Account is having following details AccHolderName ,mobileNumber ,
# accNumber, balance Minimum balance amount of Rs3000 must be there in
# account .
# Implement following functions::
# 1:accept bank information
# 2:print bank information
# 3:add new account
# 4.print information of all accounts
# 5.print information of selected accounts
# 6.delete selected account (Return 1 if deleted else 0)
# 7.Deposit amount in a account (Return updated balance)
# Write a menu driven program to achieve above requirements.

class Account:
    def __init__(self, AccHolderName , mobileNumber , accNumber, balance):
        self.AccHolderName = AccHolderName
        self.mobileNumber = mobileNumber
        self.accNumber = accNumber
        self.balance = balance

    def get_AccHolderName(self):
        return self.AccHolderName

    def get_mobileNumber(self):
        return self.mobileNumber

    def get_accNumber(self):
        return self.accNumber

    def get_balance(self):
        return self.balance


class Bank:
    def __init__(self, bank_name, branch_name,ifsc_code):
        self.bank_name = bank_name
        self.branch_name = branch_name
        self.ifsc_code = ifsc_code
        self.__acclist = []

    def accept_bank_information(self, bank_name, branch_name,ifsc_code):
        self.bank_name = bank_name
        self.branch_name = branch_name
        self.ifsc_code = ifsc_code

    def print_bank(self):
        print(f"bank_name:{self.bank_name}")
        print(f"bank_name:{self.branch_name}")
        print(f"bank_name:{self.ifsc_code}")

    def add_new_acc(self,AccHolderName , mobileNumber , accNumber, balance):
        account = Account(AccHolderName, mobileNumber, accNumber, balance)
        self.__acclist.append(account)

    def print_account(self):
        for acc in self.__acclist:
            print(f"AccHolderName:{acc.get_AccHolderName():<10}\tmobileNumber:{acc.get_mobileNumber():<10}\taccNumber:{acc.get_accNumber():<10}\tbalance:{acc.get_balance():<10}")

    def print_selected(self):
        acc_no = int(input("enter account number:"))
        for acc in self.__acclist:
            if(acc.get_accNumber() == acc_no):
                print(acc.get_AccHolderName(),acc.get_mobileNumber(),acc.get_accNumber(),acc.get_balance())

    def del_account(self):
        c=-1
        acc_no = int(input("enter account number:"))
        for acc in self.__acclist:
            if acc.get_accNumber() != acc_no:
                c+=1
        if(c > 0):

            self.__acclist.pop(c)
            return 1
        else:
            return 0
    def deposite(self):
        acc_no = int(input("enter account number:"))
        amount = float(input("enter amount:"))
        for acc in self.__acclist:
            acc.balance = acc.balance + amount
            print("balance:", acc.balance)
            break



b1 = Bank('Sunbeam',"Pune",666)

b1.add_new_acc('Arnav', 85457897, 100, 35000)
b1.add_new_acc('Ram', 85457898, 101, 45000)
b1.add_new_acc('Reena', 85457899, 102, 3000)
b1.add_new_acc('Sweety', 85457890, 103, 44300)
b1.add_new_acc('SHV', 85457894, 104, 90000)


#
# b1.add_new_acc('Vaibhav', 85457894, 105, 68555)
# b1.print_bank()
# b1.print_account()
# b1.print_selected()
# print(b1.del_account())
# b1.print_account()

print("\n1:accept bank information" 
          "\n2:print bank information" 
          "\n3:add new account "
          "\n4.print information of all accounts "
          "\n5.print information of selected accounts "
          "\n6.delete selected account (Return 1 if deleted else 0)"
          "\n7.Deposit amount in a account (Return updated balance)")



while True:
        ch = int(input("enter choice:"))
        if ch == 1:
            bank_name = input("enter name:")
            branch = input("enter branch:")
            ifsc_code = int(input("enter ifscc-code:"))
            b1.accept_bank_information(bank_name, branch,ifsc_code)
        elif ch == 2:
            b1.print_bank()
        elif ch == 3:
            name = input("enter name:")
            mob = int(input("enter mob no:"))
            acc_no = int(input("enter account number:"))
            bal = int(input("enter balance:"))
            if(bal > 3000):
                b1.add_new_acc(name, mob, acc_no, bal)
            else:
                print("balance required is Rs 3000")
        elif ch == 4:
            b1.print_account()
        elif ch == 5:
            b1.print_selected()
        elif ch == 6:
            b1.del_account()
        elif ch == 7:
            b1.deposite()
        else:
            print("exit")
            break








        
        
