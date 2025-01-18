#! /bin/bash

echo " this is the calculator program"

echo "enter the 1st number you want to add"
echo " "
read number1

echo "enter the 2nd number you want to add"
echo " "
read number2

echo "enter the operation you want to do: (like - add for addition, sub for subration, mul for multiplication, div for devision)"
read operation

if [ "$operation" == "add" ]
then
 	sum=$((number1 + number2))
	echo "the sum of number is $sum"

elif [ "$operation" == "sub" ]
then
	sub=$((number1 - number2))
	echo "the sum of number is $sub"

elif [ "$operation" == "mul" ]
then
	mul=$((number1 * number2))
	echo "the multiplication is : $mul"

elif [ "$operation" == "div" ]
then
	div=$((number1 / number2))
	echo "the division of the numbers is: $div"
else 
   
	echo "not a valid argument"
fi 


