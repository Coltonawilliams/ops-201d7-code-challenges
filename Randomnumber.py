import random

def guessing_game():
    number_to_guess = random.randint(1, 20)
    tries = 0
    
    while True:
        guess = int(input("Guess a number between 1 and 20: "))
        tries += 1
        
        if guess < number_to_guess:
            print("Higher!")
        elif guess > number_to_guess:
            print("Lower!")
        else:
            print("Yes! You guessed it in", tries, "guesses.")
            break
        
       # if tries == 3:
            #print("You have reached the maximum number of tries.")
            #print("The correct number was", number_to_guess)
            #break

guessing_game()
