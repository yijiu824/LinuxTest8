#!/bin/bash
read -a array
for ((i=1;i<${#array[*]};i++))
do   
  for ((j=0;j< ${#array[*]}-$i;j++))   
  do       
    if [ ${array[j]} -gt ${array[(($j+1))]} ]       
    then temp=${array[j]}             
      array[j]=${array[$(($j+1))]}             
      array[$(($j+1))]=$temp       
    fi    
    done
done
echo ${array[*]}
