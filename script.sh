#!/bin/bash
x=$(( RANDOM % 15 ))
y=-1
echo "guess a number from 0 to 40:"
while [[ $y -ne $x ]]; do 
if [[ $y == "exit" ]]; then
echo "you have quit the game."
exit 0
fi

 read -r -p "Enter the value you guest: " y

 if ! [[ $y =~ ^[0-9]+$ ]]; then

echo  "Invalid input! Please enter a number."
continue

fi

if [[ $y -eq $x ]]; then
echo "Congratulations! you guessed the number."
break
elif [[ $y -lt $x ]]; then
echo "Too low! try again."
else
echo "Too high! try again."
fi
done
echo "the winning number was $x"