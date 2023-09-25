# Q4.Write a program that display following output:
#
# HIFTS
# IFTSH
# FTSHI
# TSHIF
# SHIFT


def rotate(s):

    x = len(s)
    print(s)
    for i in range(x):
        s = s[1] + s[2:x] + s[0]
        print(s)


s = 'SHIFT'
rotate(s)




