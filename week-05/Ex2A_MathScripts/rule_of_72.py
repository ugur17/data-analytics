# rule_of_72.py
# Estimate how long it takes for savings to double using the Rule of 72.

savings = 1200.00  # current savings amount
interest_rate = 6.0  # annual interest rate in percent

years_to_double = 72 / interest_rate

doubled_balance = savings * 2

print(f"Your current savings is {savings}.")
print(f"At a {interest_rate}% interest rate, your savings account will be")
print(f"worth {format(doubled_balance, '.2f')} in {format(years_to_double, '.1f')} years")
