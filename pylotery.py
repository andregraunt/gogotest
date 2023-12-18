
import random

# Prompt the user to press enter to start the game
print("Enter for game")
input()

# Ask the user how many rounds they want to play
print("Kama paam you want game?")
n = int(input())

# Ask the user to guess a number between 1 and 50
print("Your number?")
num = int(input())

# Play the game
for i in range(1, n + 1):
    print(i, "paam")

    x = random.randint(1, 50)
   

    if num == x:
        print("You are Win!")
        break
    else:
        print("You are LUZER")
