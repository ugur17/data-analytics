# Ex3A_string_cleaning.py
# Clean up names and salary strings using string methods.

name_1 = "PRIYA SHARMA"
name_2 = "bob NGUYEN"
name_3 = "LaTonya Williams"

salary_1 = "$82,500"
salary_2 = "$74,000"

# Convert names to lowercase and print results
print(name_1.lower())
print(name_2.lower())
print(name_3.lower())

# Convert names to title case and print results
print(name_1.title())
print(name_2.title())
print(name_3.title())

# Remove the dollar sign from salary strings and print results
salary_1_clean = salary_1.replace("$", "")
salary_2_clean = salary_2.replace("$", "")
print(salary_1_clean)
print(salary_2_clean)

# Print the data type after removing the dollar sign
print(type(salary_1_clean))
print(type(salary_2_clean))

# To perform math, we also need to remove commas and convert to an integer.

salary_1_int = int(salary_1.replace("$", "").replace(",", ""))
print(salary_1_int)
print(type(salary_1_int))
