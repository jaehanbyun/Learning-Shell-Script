# Grep Command

## Introduction
The `grep` command in Linux is a powerful tool used for searching text in files and directories. It stands for "Global Regular Expression Print". This command is widely used for searching patterns within files using regular expressions.

## Basic Usage
> 1. grep [option] pattern [file]
> ex) grep -i 'uuid' /etc/fstab

> 2. grep [option] [-e pattern | -f file] [file]
> ex) grep -i -e "\[[[:alnum:]]*\]" /etc/nova/nova.conf
> ex) grep -i -e "^\[[[:alnum:]]*\]" -e "^virt_type" /etc/nova/nova.conf
> ex) grep -i -f pattern1.txt /etc/nova/nova.conf

> 3. command | grep [option] [pattern | -e pattern]
> ex) cat /etc/nova/nova.conf | grep -i '^\[Default' 

## Options
Some common options used with `grep` include:

- `-i`: Ignores case distinctions in both the pattern and the input files.
- `-v`: Inverts the search, displaying lines that do not match the pattern.
- `-n`: Displays the matched line and its line number.
- `-r` or `-R`: Recursively search through directories.
- `-l`: Displays the names of the files with matching lines, not the lines.
- `-c`: Counts the number of lines that match the pattern.