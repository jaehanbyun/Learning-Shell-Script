#!/bin/bash

# 바이너리 파일을 텍스트로 간주하고 바이너리 파일 내의 패턴이 있는지 검색하는 옵션인 -a
echo '==option -a Start=='
cp /bin/grep ./grep_binary_test
grep -a '^Context' grep_binary_test
echo '==End=='

# 디바이스들이 검색 대상이 되는 경우에 사용하는 옵션인 -D ACTION
echo '==option -D ACTION Start=='
sudo grep -D read 'loop' /dev/mem # 디바이스 파일을 검색하려고 시도하다 에러 발생
sudo grep -D skip 'loop' /dev/mem # 디바이스 파일을 검색하지 않게 함
echo '==End=='

# 디렉터리를 검색 대상에서 포함시키거나 제외할 수 있는 옵션인 -d ACTION
echo '==option -d ACTION Start=='
mkdir test-dir
grep -d read 'CPU' ./* # 현재 경로의 모든 파일 및 디렉터리에서 CPU라는 단어 검색
grep -d skip 'CPU' ./* # 현재 경로의 디렉터리는 제외하고 CPU라는 단어 검색
echo '==End=='

# 검색 대상에서 파일을 제외시키기 위한 옵션인 --exclude=GLOB
echo '==option --exclude=GLOB Start=='
grep --exclude=express* 'CPU' ./*
echo '==End=='

# 파일 자체를 검색 대상에서 제외시키는 옵션인 --exclude-from=FILE
echo '==option --exclude-from=FILE Start=='
grep --exclude-from=expression.txt 'CPU' ./*
echo '==End=='

# 디렉터리 자체를 검색 대상에서 제외시키는 옵션인 --exclude-dir=DIR
echo '==option --exclude-dir=DIR Start=='
grep --exclude-dir=file-dir 'mail' ./*
echo '==End=='

# 특정 파일명으로 시작하는 파일들을 검색 대상으로 포함시키는 옵션인 --include=GLOB
echo '==option --include=GLOB Start=='
grep --include=express* 'CPU' ./*
echo '==End=='

# 하위 디렉터리 내의 파일들까지 모두 검색하고 싶을 때 사용하는 옵션인 -r
echo '==option -r Start=='
grep -r --include=expression* 'CPU' ./*
echo '==End=='

# 하위 디렉터리 내의 심볼릭 링크를 파일로 보고 포함하여 모두 검색하고 싶을 때 사용하는 옵션인 -R
echo '==option -r Start=='
grep -R --include=expression* 'CPU' ./*
echo '==End=='
