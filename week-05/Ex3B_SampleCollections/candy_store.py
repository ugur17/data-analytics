# candy_store.py
# Create candy and flavor combinations using tuples and a set.

fruit_candies = ("gummy bears", "hard candy", "fruit chews")
fruit_flavors = ("strawberry", "lemon", "watermelon")

candy_combinations = {
    f"{fruit_candies[0]} with {fruit_flavors[0]}",
    f"{fruit_candies[1]} with {fruit_flavors[1]}",
    f"{fruit_candies[2]} with {fruit_flavors[2]}"
}

print("Today’s candy options include:")
print(candy_combinations)
