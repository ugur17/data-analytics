# Calculate tip amount from a restaurant bill and tip percentage.
# Use input() to get values from the user.

bill_amount = float(input("How much is your restaurant bill? $"))
# input() returns a string, so convert to float before math operations.
tip_percentage = float(input("What tip percentage would you like to leave? "))

# A possible pitfall: if the user types non-numeric text, float() raises ValueError.
# Another pitfall is that input() always returns text, so forgetting conversion will
# cause incorrect behavior when multiplying.

tip_amount = bill_amount * (tip_percentage / 100)

print(f"The tip on a ${bill_amount} restaurant bill is ${tip_amount}")
