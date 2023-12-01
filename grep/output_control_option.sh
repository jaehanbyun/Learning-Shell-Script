#!/bin/bash

# 패턴과 일치하는 문자열의 개수 확인 옵션 -c
echo '==option -c Start=='
grep -c 'expression' expression.txt
echo '==End=='

# grep을 이용해 패턴을 검색하면 일치하는 문자열은 터미널에 빨간색 굵은 글씨로 표시됨
# 그런데, GREP_COLOR 환경변수와 --color 옵션을 사용하면 다른 색으로도 표시 가능
echo '==option --color Start=='
GREP_COLOR="1;32" grep --color 'expression' expression.txt
echo '==End=='

# 검색하고자 하는 패턴이 존재하지 않는 파일 목록 조회할 때 사용하는 옵션 -L
echo '==option -L Start=='
grep -L 'express' ./*
echo '==End=='

# 검색하고자 하는 패턴이 포함된 파일 목록만 조회할 때 사용하는 옵션 -l
echo '==option -l Start=='
grep -l 'express' ./*
echo '==End=='

# 패턴이 검색한 결과가 여러 줄일 경우 특정 라인 수만큼만 출력할 때 사용하는 옵션 -m
echo '==option -m Start=='
grep -m 5 "^\[[[:lower]]*\]" /etc/nova/nova.conf # 검색 라인을 5줄만 출력
echo '==End=='

# 패턴과 일치하는 단어만 출력할 경우 사용하는 옵션 -o
# 패턴과 일치하는 단어 외에는 아무것도 출력하지 않음
echo '==option -o Start=='
grep -o 'express[[:lower:]]*' expression.txt
echo '==End=='

# 패턴 검색 결과를 보여주지 않는 옵션 -q
echo '==option -q Start=='
grep -q 'help' expression.txt
echo '==End=='

# 존재하지 않는 파일명이나 디렉터리를 입력하는 경우 에러 메시지를 표시하지 않는 옵션 -s
echo '==option -s Start=='
grep 'help' expression.txt
grep -s 'help' expression.txt
echo '==End=='