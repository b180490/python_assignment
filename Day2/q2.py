s1 = int(input("ENter the marks of subject 1 : "))
s2 = int(input("ENter the marks of subject 1 : "))
s3 = int(input("ENter the marks of subject 1 : "))

avg = (s1+s2+s3)/3
if avg>89:
    print(f"avg is {avg} so you grade will be A")
elif avg>79:
    print(f"avg is {avg} so you grade will be B")
elif avg>69:
    print(f"avg is {avg} so you grade will be C")
elif avg>59:
    print(f"avg is {avg} so you grade will be D")
else :
    print(f"avg is {avg} so you grade will be F")
