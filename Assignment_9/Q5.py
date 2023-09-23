# Q5. Write a function in python to count the number of lines from a text file
# "story.txt" which is not starting with an alphabet "C".Example: If the file "test.txt" contains the following lines:
# Connecting DB’s with Python.
# Working with DB’s using Python.
# Accessing and Manipulating DB’s.
# Creation of Python virtual Environment.
# Working with beautiful soup.
# Working with matplotlib, seaborn.
# The function should display the output as 4

def function_count():
    count_s=0

    c = ("Connecting DB’s with Python."
         "\nWorking with DB’s using Python."
         "\nAccessing and Manipulating DB’s."
         "\nCreation of Python virtual Environment."
         "\nWorking with beautiful soup."
         "\nWorking with matplotlib, seaborn.")

    with open("story.txt",'w') as file:
        file.write(c)
    # print('successful')

    with open("story.txt", 'r') as file:
        # line_list = file.readlines()
        #
        # for i in line_list:
        #     print(i[0])
        #     if i[0] == 'C' or i[0] == 'c':
        #         continue
        #     else:
        #         count_s += 1
        for line in file:
            print(line[0])
            if line[0] == 'C' or line[0] == 'c':
                continue
            else:
                count_s += 1

    print(count_s)


function_count()

