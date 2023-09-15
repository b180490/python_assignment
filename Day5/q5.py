
dict =  {
    "EVEN" : [],
    "ODD"  : []
}
for i in range(6):
    num = int(input("Enter the number : "))
    if num%2==0:
        dict["EVEN"].append(num)
    else:
        dict["ODD"].append(num)
print(dict)