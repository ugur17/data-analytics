bank_balance = 100
savings_goal = 500
weekly_savings = 75
treat_cost = 20
treat_purchased = False

while bank_balance < savings_goal:
    bank_balance += weekly_savings

    if bank_balance >= savings_goal:
        print(f"Goal met! My current balance is ${bank_balance:.2f}.")
    elif bank_balance >= savings_goal * 0.75 and not treat_purchased:
        bank_balance -= treat_cost
        treat_purchased = True
        print(f"So close! After treating myself, my balance is up to ${bank_balance:.2f}.")
    elif bank_balance > savings_goal / 2:
        print(f"Almost there! This week my balance is up to ${bank_balance:.2f}.")
    else:
        print(f"This week my balance increased to ${bank_balance:.2f}.")
