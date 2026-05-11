favorite_foods = ["tacos", "ramen", "jerk chicken", "injera", "pierogi"]

for index, food in enumerate(favorite_foods, start=1):
    if index == 1:
        print(f"{index}. {food}  <- top pick!")
    else:
        print(f"{index}. {food}")

print()
print("Reverse order:")

for index, food in enumerate(reversed(favorite_foods), start=1):
    print(f"{index}. {food}")
