#!/bin/bash

# 시간 관련 테스트

# 현재 시간을 기준으로 1분 이내에 접근한 파일 검색
find ./ -amin 1

# 1*24시간 전에 접근한 파일 검색
find ./ -atime 1

# 현재 시간을 기준으로 1분 이내에 변경된 파일 검색
find ./ -cmin 1

# 24시간 내에 변경된 파일 검색
find ./ -ctime 0

# 현재 시간을 기준으로 15분 전에 수정된 파일 검색
find ./ -mmin 15

# 24시간 내에 수정된 파일 검색
find ./ -mtime 0

# 최신 파일 검색 관련 테스트

# 명시한 파일보다 더 최근에 접근한 파일 검색
cat expression.txt
find ./ -anewer amin.txt # amin.txt보디 더 최근에 접근된 파일 검색

# 명시한 파일보다 더 최근에 변경된 파일 검색
echo "cnewer test" >> Seperator.txt
find -L ./ -cnewer amin.txt # amin.txt보다 최근에 변경된 파일 검색

# 명시한 파일보다 더 최근에 수정된 파일 검색
find ./ -newer amin.txt # amin.txt보다 최근에 수정된 파일 검색

# 접근, 수정, 변경이 동시에 이루어진 파일 검색
find ./ -newercm amin.txt # amin.txt보다 더 최근에 수정되고, 변경된 파일 검색

# 파일 권한 관련 테스트

# 파일 권한이 660(rw-rw----)인 파일 검색
find ./ -perm 660

# -perm -mode: 명시한 파일 권한이 포함된 파일도 모두 검색
find ./ -perm -666 

# -perm -mode: 파일 권한 중 하나 이상이 6에 해당하는 파일 검색
find ./ -perm /666

# 로그인한 계정으로 읽기가 가능한 파일 검색
find ./ -readable

# 로그인한 계정으로 쓰기가 가능한 파일 검색
find ./ -writable

# 로그인한 계정으로 실행이 가능한 파일 검색
find ./ -excutable

# 그룹 및 사용자 관련 테스트

# 명시한 그룹 ID와 동일한 파일 검색
find ./ -gid 0

# 명시한 그룹명과 동일한 파일 검색
find ./ -group root

# 존재하지 않는 그룹ID를 가지고 있는 파일 검색
find ./ -nogroup

# 존재하지 않는 사용자ID를 가지고 있는 파일 검색
find ./ -nouser

# 명시한 사용자ID를 가지고 있는 파일 검색
find ./ -uid 0

# 명시한 사용자명과 동일한 파일 검색
find ./ -user root

# 파일명 관련 테스트

# -iname pattern: 대소문자를 구분하지 않고 파일 검색
find ./ -iname 'e*.txt'

# -inum n: inode 값을 이용해 파일 검색
find ./ -inum n

# -lname pattern: 심볼릭 링크를 검색할 때 사용
find ./ -lname '*.txt'

# -name pattern: 명시된 패턴과 동일한 파일 검색
find ./ -name 'e*.txt'

# -regex pattern: 파일, 디렉터리 상관없이 명시된 패턴에 의해 전체 경로 탐색
find ./ -regex '.*f*e'

# -samefile name: 명시한 파일명과 동일한 Inode를 가진 파일 검색
find -L ./ -samefile expression.txt

# 파일 경로 관련 테스트

# -ipath pattern: 대소문자 구분없이 패턴과 일치하는 경로 검색
find ./ -ipath './f*t'

# -iwholename pattern: -ipath와 동일하게 명시한 패턴과 일치하는 경로 검색
find ./ -iwholename './f*t'

# -links n: 명시한 n개의 링크를 가지고 있는 경로 탐색
# n -> 1: 파일 검색
# n -> 2: 디렉터리 검색
find ./ -links 2

# -path pattern: 명시한 패턴과 동일한 경로를 검색
# 대소문자를 구분함
find ./ -path './pa*t'

# -wholename pattern: -path와 동일하게 명시한 패턴과 일치하는 경로 검색
find ./ -wholename './pa*t'