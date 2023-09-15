def function():
    list_2 = []
    list_1 = ['41','DROND','Sunbeam','13','ZARA']
    for index in list_1:
        if index.isdigit() == True:
            index = 3*index
            list_2.append(index)
        else:
            index = "#"
            list_2.append(index)
    return list_2
print(f"new list is : {function()}")