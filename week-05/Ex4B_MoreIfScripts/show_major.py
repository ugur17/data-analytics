student_name = "Jordan Lee"
student_major = "ENG"

if student_major == "ENG":
    major_name = "English"
    office_location = "Kerr Hall, Room 201"
elif student_major == "BIOL":
    major_name = "Biology"
    office_location = "Science Bldg, Room 310"
elif student_major == "CSCI":
    major_name = "Computer Science"
    office_location = "Sheppard Hall, Room 314"
elif student_major == "HIST":
    major_name = "History"
    office_location = "Kerr Hall, Room 114"
elif student_major == "MKT":
    major_name = "Marketing"
    office_location = "Westly Hall, Room 310"
else:
    major_name = "<unknown>"
    office_location = ""

print(f"Student: {student_name}")
print(f"Major code: {student_major}")
print(f"Major name: {major_name}")
print(f"Office location: {office_location}")
