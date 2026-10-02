#!/bin/bash

# Challenge 1: Basic Arithmetic Calculator
# A script that takes two user inputs and computes basic arithmetic operations.


# 1. Prompt the user for two numbers using 'read' command.
echo "Enter first number: "
 read num1
echo "Enter second number: "
	read num2

# 2. Perform the arithmetic operations excluding division.
addition=$(( num1 + num2 ))
subtraction=$(( num1 - num2 ))
multi=$(( num1 * num2 ))


# 3. Print the results of the arithmetic operations excluding division.
echo "$num1 + $num2 = $addition"
echo "$num1 - $num2 = $subtraction"
echo "$num1 * $num2 = $multi"

# 4. Perform if statement to catch any division by zero errors and then print the result of the division.
if [ "$num2" -eq 0 ]; then
	echo "$num1 / $num2 = Error (Division by zero)"

else
	div=$(( num1 / num2 ))
	echo "$num1 / $num2 = $div"
fi	
