#!/bin/bash

value=""

# 한 줄로 표현할 경우에는 if [ -z $value ]; then으로 표현할 수 있음
# 연산자 -z는 변수에 저장된 값의 길이가 0인지를 비교하여 0이면 True, 그렇지 않으면 False 리턴하는 문자열 연산자
if [ -z $value ]
then
    echo True
else
    echo False
fi