pay_rate = 17.30
hours_worked = 45

regular_hours = 40
overtime_rate = pay_rate * 1.5

if hours_worked > regular_hours:
    regular_pay = regular_hours * pay_rate
    overtime_hours = hours_worked - regular_hours
    overtime_pay = overtime_hours * overtime_rate
    gross_pay = regular_pay + overtime_pay
else:
    gross_pay = hours_worked * pay_rate

print(f"Pay rate: ${pay_rate:.2f}")
print(f"Hours worked: {hours_worked}")
print(f"Gross pay: ${gross_pay:.2f}")
