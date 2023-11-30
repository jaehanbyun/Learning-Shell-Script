#!/bin/bash

# $*만 사용했을 경우 매개변수를 모두 개별로 인식함
for language in $*
do
    echo "I can speak $language"
done

# $@ 역시 $*과 동일하게 매개변수를 개별로 인식함
for language in $@
do
    echo "I can speak $language"
done

# "$*"로 사용했을 경우 매개변수를 하나의 문자열로 인식함
for language in "$*"
do
    echo "I can speak $language"
done

# "$@"로 사용했을 경우 매개변수를 문자열 별로 인식함
for language in "$@"
do
    echo "I can speak $language"
done