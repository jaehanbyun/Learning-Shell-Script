#!/bin/bash

# -E 옵션 없이 정규 표현식을 사용하여 검색한 경우
echo '==option -E Start=='
grep 'q[[:lower:]]*\??' expression.txt

# -E 옵션과 함께 정규 표현식을 사용하여 검색한 경우
grep -E 'q[[:lower:]]*\??' expression.txt
echo '==End=='

echo '==option -F Start=='
grep -F '# Date
# Author
# Description ' expression.txt
echo '==End=='

# mail과 phone이라는 단어가 포함된 라인 검색
echo '==option -e Start=='
grep -e 'mail' -e 'phone' expression.txt
echo '==End=='

# -f 옵션 사용
echo '==option -f Start=='
echo 'mail' > file1.txt
echo 'phone' > file2.txt
grep -f file1.txt -f file2.txt expression.txt
echo '==End=='

# 대소문자 구분 무시 옵션 -i
echo '==option -i Start=='
grep -i 'expression' expression.txt
echo '==End=='

# 패턴에 해당하는 라인을 제외한 나머지 라인을 보여주는 옵션 -v, --invert-match
# 주석을 제거한 파일 내용 확인 예
echo '==option -v Start=='
cat expression.txt | grep -v '^#' | grep -v '^$'
echo '==End=='

# 검색하고자 하는 패턴과 완벽하게 일치하는 단어가 있는 라인만 출력하는 옵션 -w
echo '==option -w Start=='
grep 'expression' expression.txt
grep -w 'expression' expression.txt
echo '==End=='

# 검색하고자 하는 패턴과 라인 전체가 일치할 경우에만 해당 라인을 보여주는 옵션 -x
echo '==option -x Start=='
grep -x 'Help' expression.txt # 일부만 일치할 경우에는 결과가 없음
grep -x '# Help' expression.txt # 라인 전체가 일치할 경우에만 결과를 보여줌
echo '==End=='