# Find Command

## Introduction
The `find` command in Linux is used to search for files and directories in a directory hierarchy. It is a powerful tool that allows users to find files based on various criteria like name, size, modification date, and more.

## Basic Usage
> 1. find [target path] [expression]
> ex) find /etc -name chrony.conf

> 2. find [option] [target path] [expression]
> ex) find -L /etc -perm 644 -name 'rc.*'

## Options
Some common options and expressions used with `find` include:

- `-name`: Search for files by name.
- `-type`: Specify the type of file (e.g., `d` for directories, `f` for regular files).
- `-size`: Search for files of a specific size.
- `-mtime`: Find files modified in the last n days.
- `-user`: Find files owned by a specific user.
- `-exec`: Execute a command on the files found.