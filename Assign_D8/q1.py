class Mobile:
    def __init__(self,model_name,company,price):
        self.__model_name = model_name
        self.__company = company
        self.__price = price

    def set_model_name(self,model_name):
        self.__model_name = model_name

    def get_model_name(self):
        return self.__model_name

    def set_company(self,company):
        self.__company = company

    def get_company(self):
        return self.__company

    def set_price(self,price):
        self.__price = price

    def get_price(self):
        return self.__price

    def is_affordable(self):
        if self.__price > 20000:
            print(f"{self.__model_name} NOt affordable ")
        else:
            print(f"Yes we can afford the {self.__model_name} ")
    def print_info_details(self):
        print(f"model name is : {self.__model_name}")
        print(f"company is : {self.__company}")
        print(f"price is :{self.__price} Rs")

m1 = Mobile("iphone 15 pro","Apple",179999)
m2 = Mobile("Iqoo Z3 5G", "IQOO" ,19999)

m1.print_info_details()
m1.is_affordable()

m2.print_info_details()
m2.is_affordable()