#!/bin/bash

array=("apple" "banana" "pineapple")

# 범위를 배열로 사용할 때는 ${배열[@]}로 표현해야 배열의 모든 아이템을 사용할 수 있음
for fruit in ${array[@]}
do
    echo $fruit;
done
