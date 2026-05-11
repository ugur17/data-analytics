number_pool = list(range(1, 21))

print("Guess the secret number.")
print(f"The number is between {number_pool[0]} and {number_pool[-1]}.")
starter_text = input("Type any word to start the game: ")

if starter_text == "":
    starter_text = "python"

seed_values = tuple(starter_text)
seed_total = 0

for letter in seed_values:
    seed_total += ord(letter)

secret_index = seed_total % len(number_pool)
secret_number = number_pool[secret_index]
guesses = []

while True:
    guess_text = input("Enter your guess: ")

    if not guess_text.isnumeric():
        print("Please enter a number.")
        continue

    guess = int(guess_text)
    guesses.append(guess)

    if guess == secret_number:
        print("You got it!")
        break
    elif guess < secret_number:
        print("Higher")
    else:
        print("Lower")

print(f"It took you {len(guesses)} guesses.")
print(f"Your guesses were: {guesses}")

if len(guesses) < 5:
    print("You are awesome!")
