# Q-1) Create a class 'Student' with rollno, studentName, course ,dictionary of
# marks(subjectName -
# marks [5]).
# Provide following functionalities
# A. initializer
# B. override __str__ method
# C. accept student data
# D. Print student data
# E. accept records of 5 students and Print it

class Student:
    def __init__(self):
        self._roll = 0
        self._student_name = ""
        self._course = ""
        self._marks = {}

    def __str__(self):
        return f"Roll no: {self._roll}, student name : {self._student_name}, marks: {self._marks}"

    def accept_student_data(self,roll_no, student_name, course,m1,m2,m3,m4,m5):
        self._roll = roll_no
        self._student_name = student_name
        self._course = course
        self._marks = {'maths': m1, 'eng': m2, 'sci': m3, 'phy': m4, 'bio': m5}
        # self._roll = int(input("enter roll no: "))
        # self._student_name = input("enter student name: ")
        # self._course = input("enter course: ")
        # m1 = int(input("enter maths marks:"))
        # m2 = int(input("enter eng marks:"))
        # m3 = int(input("enter sci marks:"))
        # m4 = int(input("enter phy marks:"))
        # m5 = int(input("enter bio marks:"))
        self._marks = {'maths': m1, 'eng': m2, 'sci': m3, 'phy': m4, 'bio': m5}

    def print_student_data(self):
        print(self._roll,  self._student_name,  self._course,    self._marks)


s1 = Student()
print(s1)
s1.accept_student_data(101, 'arnav','dbda',99,98,96,91,93)
s1.print_student_data()
s1.accept_student_data(102, 'arav','dbda',99,98,96,91,93)
s1.print_student_data()
s1.accept_student_data(103, 'aman','dbda',99,98,96,91,93)
s1.print_student_data()
s1.accept_student_data(104, 'akash','dbda',99,98,96,91,93)
s1.print_student_data()
s1.accept_student_data(105, 'asha','dbda',99,98,96,91,93)
s1.print_student_data()











