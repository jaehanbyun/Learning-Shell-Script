#!/bin/bash

# grep 명령어는 파일을 전부 검색한 후 해당 결과를 출력함.
# 이때, 매우 큰 사이즈의 파일을 검색할 경우에는 검색 결과를 메모리에 저장하는 시간이 걸림.
# --line-buffered 옵션을 사용하면 검색한 결과를 라인별로 바로바로 결과로 보여줌.
echo '==option --line-buffered Start=='
sudo grep --line-buffered -i -r 'error' /var/log/*
echo '==End=='

# 파일 내용을 그대로 보여주고 패턴에 해당하는 단어를 강조 표시로 출력하는 옵션인 -z
echo '==option -z Start=='
grep -z 'CPU' ./*.txt
echo '==End=='