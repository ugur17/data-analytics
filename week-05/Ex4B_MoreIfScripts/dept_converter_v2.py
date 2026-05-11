department_code = 18

match department_code:
    case 1:
        department_name = "Marketing"
    case 5:
        department_name = "Human Resources"
    case 10:
        department_name = "Accounting"
    case 12:
        department_name = "Legal"
    case 18:
        department_name = "IT"
    case 20:
        department_name = "Customer Relations"
    case _:
        department_name = "Unknown department"

print(f"Department code {department_code}: {department_name}")
