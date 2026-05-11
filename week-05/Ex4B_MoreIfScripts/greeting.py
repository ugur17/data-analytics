current_hour = 23

if current_hour < 0 or current_hour > 23:
    print("Please enter an hour between 0 and 23.")
elif current_hour >= 23 or current_hour < 4:
    print("What are you doing up so late??")
elif current_hour < 10:
    print("Good morning!")
elif current_hour < 17:
    print("Good day!")
else:
    print("Good evening!")
