pay_rate = 25.50
hours_worked = 40
filing_status = "single"

regular_hours = 40

if hours_worked > regular_hours:
    regular_pay = regular_hours * pay_rate
    overtime_pay = (hours_worked - regular_hours) * pay_rate * 1.5
    gross_weekly_pay = regular_pay + overtime_pay
else:
    gross_weekly_pay = hours_worked * pay_rate

annual_gross_income = gross_weekly_pay * 52

if filing_status == "single":
    if annual_gross_income < 12000:
        tax_rate = 0.05
    elif annual_gross_income < 25000:
        tax_rate = 0.10
    elif annual_gross_income < 75000:
        tax_rate = 0.15
    else:
        tax_rate = 0.20
elif filing_status == "joint":
    if annual_gross_income < 12000:
        tax_rate = 0.00
    elif annual_gross_income < 25000:
        tax_rate = 0.06
    elif annual_gross_income < 75000:
        tax_rate = 0.11
    else:
        tax_rate = 0.20
else:
    tax_rate = 0
    print("Filing status should be single or joint.")

tax_withheld = gross_weekly_pay * tax_rate
net_pay = gross_weekly_pay - tax_withheld

print(f"You worked {hours_worked} hours this period.")
print(f"Because you earn ${pay_rate:.2f} per hour, your gross weekly pay is ${gross_weekly_pay:.2f}.")
print(f"Your estimated annual gross income is ${annual_gross_income:.2f}.")
print(f"Your filing status is {filing_status}.")
print(f"Your tax rate is {tax_rate:.0%}.")
print(f"Your tax withholding for the week is ${tax_withheld:.2f}.")
print(f"Your net pay is ${net_pay:.2f}.")
