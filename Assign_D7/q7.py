def student_data(student_id , **kwargs):
    print(f"Student ID : {student_id}")

    if 'student_name' in kwargs:
        print(f"Student name : {kwargs['student_name']}")

    if 'student_class' in kwargs:
        print(f"Student class : {kwargs['student_class']}")


student_data(101,student_name="John",student_class = "Math")
student_data(102,student_name = "Alice")
student_data(103,student_class="Science")
student_data(104)