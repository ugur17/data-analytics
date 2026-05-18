import random
import math
import statistics

vals_1_100 = range(1, 100)
vals_sample = random.sample(vals_1_100, 75)
vals_choices = random.choices(vals_1_100, k=200)

radius = random.randint(3, 10)
pi = math.pi

# Calculate results for the sample of 75 unique values.
sample_sum = sum(vals_sample)
sample_average = statistics.mean(vals_sample)
sample_median = statistics.median(vals_sample)

# Calculate results for the 200 randomly selected values.
choices_average = statistics.mean(vals_choices)
choices_median = statistics.median(vals_choices)
choices_mode = statistics.mode(vals_choices)
choices_std_dev = statistics.stdev(vals_choices)
choices_variance = statistics.variance(vals_choices)

# Calculate the area of a circle, then round up and down.
circle_area = pi * radius ** 2
area_rounded_up = math.ceil(circle_area)
area_rounded_down = math.floor(circle_area)

print("_Experimenting with a subset of integers 1-100:")
print(f"Sum of 75 sample values from 1 to 100: {sample_sum}")
print(f"Average of 75 sample values: {sample_average}")
print(f"Median of 75 sample values: {sample_median}")

print('\n')

print("_Experimenting with a superset of 200 values, integers 1-100:")
print(f"Average of 200 values: {choices_average}")
print(f"Median of 200 values: {choices_median}")
print(f"Mode of 200 values: {choices_mode}")
print(f"Standard deviation of 200 values: {choices_std_dev}")
print(f"Variance of 200 values: {choices_variance}")

print('\n')

print("_Modeling a random circle:")
print(f"Radius = {radius}, area = {area_rounded_up} (rounded up to the nearest integer)")
print(f"Radius = {radius}, area = {area_rounded_down} (rounded down to the nearest integer)")
