#! /bin/bash -x

read -p "Enter the first number:" a
read -p "Enter the second number:" b
read -p "Enter the third number:" c
echo "The given three numbers are: $a $b $c"

first_computation=$(($a+$b*$c))
second_computation=$(($a*$b+$c))
third_computation=$(($c+$a/$b))
fourth_computation=$(($a%$b+$c))
echo "$a+$b*$c=$(($a+$b*$c))"
echo "$a*$b+$c=$(($a*$b+$c))"
echo "$c+$a/$b=$(($c+$a/$b))"
echo "$a%$b+$c=$(($a%$b+$c))"

declare -A dictionary

dictionary[first_computation]=$first_computation
dictionary[second_computation]=$second_computation
dictionary[third_computation]=$third_computation
dictionary[fourth_computation]=$fourth_computation

for computation in ${!dictionary[@]}
do
   echo "$computation=${dictionary[$computation]}"
done
