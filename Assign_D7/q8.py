student_details= [{'id' : 1, 'subject' : 'math', 'V' : 70, 'VI' : 82},
{'id' : 2, 'subject' : 'math', 'V' : 73, 'VI' : 74},
{'id' : 3, 'subject' : 'math', 'V' : 75, 'VI' : 86}
]

for student in student_details:
    average = (student['V']+student['VI'])/2
    student['V+VI'] = average

    student.pop('V')
    student.pop('VI')


print(student_details)