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


#!/bin/bash
for (( i=1;i<=10;i++))
do
   randomNumber=$((100+$RANDOM%900))
   arr[$i]=$randomNumber
done
for ((i=1;i<=10;i++))
do
   for ((j=i+1;j<=10;j++))
   do
      if [ ${arr[$i]} -gt ${arr[$j]} ]
      then
         temp=${arr[$i]}
         arr[$i]=${arr[j]}
         arr[$j]=$temp
      fi
   done
done
echo "second max:" ${arr[9]}
echo "second min:" ${arr[2]}

#!/bin/bash
read -p "Enter number : " num
count=0
for ((i=2;i<=$num;i++))
do
   while [ $(($num%$i)) -eq 0 ]
   do
                arr[$count]=$i
      num=$(($num/$i))
                count=$count+1
   done
done
echo "Prime factors:" ${arr[@]}


#!/bin/bash
sum=0
read –p “enter the array size” size
echo “enter  the array element ”
for ((i=1;i<=size;i++))
read element
arr[i]=$element
done
for ((i=o;i<=size;i++))
do
	first=${arr[i]}
	for ((j=i+1;j<=size;j++))
	do
		second=${arr[j]}
		for ((k=j+1;j<=size;j++))
		do
			third=${arr[k]}
		sum=$((first+second+third))
		done
		if [ $sum –eq 0 ]
		then 
			echo “  $first $second $third ”
		fi
	done
done

#!/bin/bash
count=1
for ((i=1;i<=100;i++))
do
        temp=$(($i%11))
        if [ $temp -eq 0 ]
        then
                arr[$count]=$i
                count=$(($count+1))
        fi
done
echo ${arr[@]}   

