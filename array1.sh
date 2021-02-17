#!/bin/bash
for ((i=1;i<=10;i++))
do
	randomNumber=$((100+$RANDOM%900))
	arr[$i]=$randomNumber
done
echo ${arr[@]}
max=-999
min=9999
second_min=9999
second_max=-999
for ((i=1;i<=10;i++))
do
	if [ ${arr[i]} -gt $max ]
	then
		second_max=$max
		max=${arr[i]}
	elif [ ${arr[i]} -gt $second_max ] && [ ${arr[i]} -lt $max ]
	then
		second_max=${arr[i]}
	fi
done
for ((i=1;i<=10;i++))
do
        if [ ${arr[i]} -lt $min ]
        then
                second_min=$min
                min=${arr[i]}
        elif [ ${arr[i]} -lt $second_min ] && [ ${arr[i]} -lt $min ]
        then
                second_min=${arr[i]}
        fi
done
echo "second largest:" $second_max
echo "second minimum;" $second_min

