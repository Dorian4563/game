#!/bin/bash
x=$(( 20 + RANDOM % (8 - 15 + 5) ))
echo "guess a number from 0 to 40:"
 read -p "Enter the value you guest: " y
 if [[ $y -eq $x ]]; then
echo "you win"
 elif [[ $y -lt $x ]]; then
echo "you lose"
echo "you above the win number"
elif [[$y -gt $x ]]; then
echo "you lose"
echo "you above the win number"
else
 echo "Invalid number, Not within the range"
 fi
 echo "the win answer is $x "s