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


#Store the results in a Dictionary for every Computation
result=([1]=$operation1 [2]=$operation2 [3]=$operation3 [4]=$operation4) 
echo "Displaying Dictionary : "
echo "Operation Key Value"
for key in "${!result[@]}"; do
    echo "Computation $((key+1))   ${result[$key]}"
done
echo ""


#Read the values from the Dictionary into the array
declare -a arrayResult
for key in "${!result[@]}"; do
	arrayResult[$key]=${result[$key]}
done
echo ""

echo "Array ${arrayResult[@]} "
echo ""


#Sort the results to show the Computation Result in the Descending Order
flag=1;
l=${#arrayResult[@]}
for (( i = 0; i < $l; i++ ))
do
    flag=0;
    for ((j = 0; j < $l-$i; j++ ))
    do
        if [[ ${arrayResult[$j]} -gt ${arrayResult[$j+1]} ]]
        then
            temp=${arrayResult[$j]};
            arrayResult[$j]=${arrayResult[$j+1]};
            arrayResult[$j+1]=$temp;
            flag=1;
        fi
    done

    if [[ $flag -eq 0 ]]; then
          break;
    fi
done

echo ""
echo "Results in descending order  : "
for (( k=$l; k > 0; k-- )); do
	echo " ${arrayResult[$k]}"
done
echo ""

#Sort the results to show the Computation Value in Ascending Order
echo "Results in Ascending order : ${arrayResult[@]} "
echo ""

