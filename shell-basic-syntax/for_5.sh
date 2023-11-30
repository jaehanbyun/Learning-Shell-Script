#!/bin/bash

# {초기값..최종값..증가값}으로 표현하여 for문 활용
# 위 형식은 Bash 4.0 이상에서 사용가능하며, 수행이 되지 않는다면, bash --version 명령어로 버전 확인 후 업그레이드 진행
for num in {1..10..2}
do
    echo $num;
done