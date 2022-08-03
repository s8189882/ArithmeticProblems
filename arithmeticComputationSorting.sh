#!/bin/bash -x


#Start with Displaying Welcome to Employee Wage Computation Program on Master #Branch


echo ""
echo "Welcome to the Arithmetic Computation and Sorting Program"
echo "This program computes different arithmetic expressions and sorts the results."
echo ""

#Write program to take three inputs – a, b & c
echo -n " Enter the first number : "
read n1
echo -n " Enter the second number : "
read n2
echo -n " Enter the third number : "
read n3

echo "You entered $n1 $n2 $n3"
echo ""

#Compute a + b * c
operation1=$((n1+$((n2*$n3))))

echo "Computation 1 :     a + b * c = $operation1"
echo ""

#Compute a * b + c  
operation2=$(($((n1*$n2))+$n3))

echo "Computation 2 :     a * b + c = $operation2"
echo ""

#Compute c + a / b
operation3=$((n3+$((n1/$n2))))

echo "Computation 3 :     c + a / b = $operation3"
echo ""

#Compute a % b + c
operation4=$(($((n1%$n2))+$n3))


echo "Computation 4 :     a % b + c = $operation4"
echo ""