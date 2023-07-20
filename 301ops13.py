# Today in Class we are building the childhood game Rock Paper Scissors
# We are going to import the random function for our code today
# Bonus objective can you put it on a while loop to play again
#Write your code below this line:

import random
options = ["Rock", "Paper", "Scissors"]
user_choice = ["Rock", "Paper", "Scissors"]

play_again = "y"

while play_again == "y":
    response = ""
    user_choice = input("Rock.... Paper..... Scissors....?\n")
    computer_choice = random.choice(options)
    # if response == "Rock":
    #     print(computer_choice)
    
    # elif response == "Paper":
    #         print(computer_choice)
    # elif response == "Scissors":
    #      print(computer_choice)

    # else:
    #     print("What was that?... Remember, I am case sensitive\n")

    print(computer_choice)
    print(user_choice)

    if user_choice == computer_choice:
        print("Its a tie\n")
    elif user_choice == "Rock":
        if computer_choice == "Scissors":
            print("Rock destroys Scissors!! You Win!!\n")
        else:
            print("Paper uses wrap on the rock. Its super effective!! You Lose\n")

    elif user_choice == "Paper":
        if computer_choice == "Rock":
            print("Paper uses wrap on the rock. Its super effective!! You Win\n")
        else:
            print("Scissor has cut you down... You Lose\n")
        
    elif user_choice == "Scissors":
        if computer_choice == "Rock":
            print("Rock destroys Scissors... You Lose\n") 
        else: 
            print ("Scissor has cut them down!!! You Win!!\n")
        
    play_again = input("y, n")        
    if play_again != "y": 
        break 