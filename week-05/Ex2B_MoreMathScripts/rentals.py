# rentals.py
# Calculate van rental needs and cost splitting for a tour group.

people = 38
van_capacity = 15
van_cost_per_day = 250

vans_needed = (people + van_capacity - 1) // van_capacity
total_rental_cost = vans_needed * van_cost_per_day
cost_per_person = total_rental_cost / people
collected_amount = cost_per_person * people

print(f"People going on the tour: {people}")
print(f"Vans needed: {vans_needed}")
print(f"Total van rental cost: ${total_rental_cost}")
print(f"Cost per person: ${format(cost_per_person, '.2f')}")
print(f"If each person pays that amount, total collected is ${format(collected_amount, '.2f')}")

# Notes for 38 tourists:
# a) Charge per person is $19.74 when rounded to two decimals.
# b) Multiplying that rounded amount by 38 gives $750.12, which is slightly above the van cost.
# c) The vans cost $750 total.
# d) The leftover money comes from rounding the per-person charge to full cents.
