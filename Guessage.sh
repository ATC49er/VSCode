#!/bin/bash
#Connor Vesperman (ID: 10496729) - Portfolio-1

#Variables
counter=0
rndnum=$(( (RANDOM % 50) + 20))
#Higher than and lower than variables (not orthodox I know).
lwt=20
hwt=70

#Welcome message
echo "Hello user, welcome to the guessing game."

#While loop
while true; do

#Reads user input and stores it
read -p "Please enter a number between 20 and 70: " userguess

#Counter
((counter ++))

  #If our random number is equivalent to the user guess, then breaks out of loop
    if [ $rndnum -eq $userguess ]; then
    echo "This is your age: $rndnum, it took $counter attempts"
    break

    #User error check systems.
    #If they enter a number below 20 then echo the following message.
    elif [ $userguess -lt $lwt ]; then
        echo "Please enter a number above 20."
        ((counter --))
        continue
    #If they enter a number above 70 then echo the following message.
    elif [ $userguess -gt $hwt ]; then
        echo "Please enter a number below 70."
        ((counter --))
        continue

    #If our number is incorrect, the user is hinted whether the number is higher or lower.
    elif [ $userguess -gt $rndnum ]; then
        echo "Your guess is to high, please enter another number."
        continue

    else [ $userguess -lt $rndnum ]
        echo "Your guess is too low, please enter another number."
        continue
    
    fi

done