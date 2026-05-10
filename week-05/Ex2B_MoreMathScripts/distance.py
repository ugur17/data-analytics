# distance.py
# Calculate the distance between two points using the distance formula.

import math

x1, y1 = 1.0, 2.0  # first point coordinates
x2, y2 = 4.0, 6.0  # second point coordinates

distance = math.sqrt((x2 - x1) ** 2 + (y2 - y1) ** 2)

print(f"The distance between ({x1}, {y1}) and ({x2}, {y2}) is {distance}")
