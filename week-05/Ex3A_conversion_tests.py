# Description: This script tests various numeric
# conversion techniques
# Author: Ceyhun Ugur

# Define the original variables

a = " 101.1 "
b = '55'
c = "402 Stevens"
d = 'Number 5 '

# Transformations and casts for each variable

# Variable a:
a_stripped = a.strip()
# int(a) would raise ValueError because the string contains a decimal point
# int_a = int(a)  # ValueError: invalid literal for int() with base 10: ' 101.1 '
a_float = float(a)
a_int_from_float = int(float(a))

# Variable b:
b_int = int(b)
b_float = float(b)

# Variable c:
# int(c) would raise ValueError because the string contains non-numeric text
# c_int = int(c)  # ValueError: invalid literal for int() with base 10: '402 Stevens'
c_numeric_slice = int(c[:3])  # use string slicing to extract the numeric part "402"

# Variable d:
# int(d) would raise ValueError because the string does not start with digits
# d_int = int(d)  # ValueError: invalid literal for int() with base 10: 'Number 5 '
d_stripped = d.strip()
d_numeric_slice = d[7:8]  # extract the numeric portion from the string
# cast the sliced numeric portion to an integer
d_numeric_int = int(d_numeric_slice)

# Print each variable and its type
print(a, type(a))
print(b, type(b))
print(c, type(c))
print(d, type(d))

print(a_stripped, type(a_stripped))
print(a_float, type(a_float))
print(a_int_from_float, type(a_int_from_float))

print(b_int, type(b_int))
print(b_float, type(b_float))

print(c_numeric_slice, type(c_numeric_slice))
print(d_stripped, type(d_stripped))
print(d_numeric_slice, type(d_numeric_slice))
print(d_numeric_int, type(d_numeric_int))

# Observations:
# a) int() on a string with decimal content fails unless the string is first turned into float.
# b) float() on strings containing only numeric digits or numeric digits with whitespace works.
# c) int(float(a)) works for variable a because float(" 101.1 ") is valid and int() truncates to 101.
# d) Slicing can extract the numeric portion from a string that also contains text.
# e) Using strip() removes leading/trailing whitespace from a and d.

