#!/bin/bash

value1=10
value2=10

# 한줄로 사용할 경우에는 if [ $value = $value2 ]; then으로 표시할 수 있음
if [ $value1 = $value2 ]
then
    echo True
else
    echo False
fi
# 두 변수의 값은 동일하므로 True 출력