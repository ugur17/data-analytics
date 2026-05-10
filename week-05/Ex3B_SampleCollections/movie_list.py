# movie_list.py
# Create a list of favorite movies and print its length and contents.

favorite_movies = [
    "The Matrix",
    "Knives Out",
    "Inception",
    "Spider-Man: Across the Spider-Verse",
    "The Grand Budapest Hotel"
]

print(f"The list favorite_movies includes my top {len(favorite_movies)} favorite movies")
print(favorite_movies)

# a) Use sorted() to print a sorted version, then show the original list remains unchanged.
print(sorted(favorite_movies))
print(favorite_movies)
# The first output is sorted alphabetically, but favorite_movies stays in its original order.

# b) Use the .sort() method to sort the list in place, then print it again.
favorite_movies.sort()
print(favorite_movies)
# After .sort(), favorite_movies itself is permanently sorted.

# c) Add one more movie to the list using append(), then print the updated list and description.
favorite_movies.append("Dune")
print(f"The list favorite_movies includes my top {len(favorite_movies)} favorite movies")
print(favorite_movies)
