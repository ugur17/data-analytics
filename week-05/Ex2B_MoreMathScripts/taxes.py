# taxes.py
# Calculate monthly federal tax withholding at 23% of salary.

salary = 3500.00  # example monthly salary in dollars
withheld = salary * 0.23

print(f"Your salary is ${salary}")
print(f"Federal taxes withheld are ${format(withheld, '.2f')}")
