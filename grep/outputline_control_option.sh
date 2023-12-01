#!/bin/bash

# 검색 패턴이 포함된 라인의 바이트 수를 라인 제일 앞부분에 함께 보여주는 옵션 -b
echo '==option -b Start=='
grep -b 'express' expression.txt
echo '==End=='

# 패턴을 디렉터리의 모든 파일을 대상으로 사용할 경우에는 파일명을 라인 앞에 보여줌
# 그러나, 특정 파일에서 검색할 경우에는 파일명을 보여주지 않음
# 특정 파일에서 검색할 경우에도 파일명을 보여주는 옵션 -H
echo '==option -H Start=='
grep -H 'express' expression.txt
echo '==End=='

# 반대로 파일명을 보여주지 않을 경우에 사용하는 옵션 -h
echo '==option -h Start=='
grep -h 'express' ./*
echo '==End=='

# 검색한 정보에 라벨을 붙여주기 위한 옵션 --label=LABEL
echo '==option --lable=LABLE Start=='
ls -l | grep --label=file -H express # 검색된 파일 정보 앞에 file이라는 라벨을 붙여줌
echo '==End=='

# 검색한 패턴이 포함된 라인 앞에 라인 번호를 붙여주는 옵션 -n
echo '==option -n Start=='
grep -n 'question' expression.txt
echo '==End=='

# 탭을 사이에 넣어 라인 번호를 출력할 때 라인 번호와 검색된 문자열 간의 가독성을 높이기 위한 옵션인 -T
echo '==option -T Start=='
grep -T -n 'question' expression.txt
echo '==End=='

# 파일 목록을 검색할 때 여러 줄로 검색된 파일 목록의 뉴라인을 제거해 한줄로 출력하는 옵션인 -Z
echo '==option -Z Start=='
cp expression.txt test.txt
grep -Z -l 'express' ./*
echo '==End=='