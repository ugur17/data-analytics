department_code = 18

if department_code == 1:
    department_name = "Marketing"
elif department_code == 5:
    department_name = "Human Resources"
elif department_code == 10:
    department_name = "Accounting"
elif department_code == 12:
    department_name = "Legal"
elif department_code == 18:
    department_name = "IT"
elif department_code == 20:
    department_name = "Customer Relations"
else:
    department_name = "Unknown department"

print(f"Department code {department_code}: {department_name}")
