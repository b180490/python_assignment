# Q6. Write a function in Python to count and display the total number of words
# in a text file.

fname = input("Enter file name: ")

num_words = 0

with open(fname, 'r') as file:
    for line in file:
        words = line.split()
        #print(words)
        num_words += len(words)
        print(line)
print("Number of words:")
print(num_words)