#!/bin/bash

file=$1

temp_file=$(pwd)/temp.o

nasm -f elf64 -o $temp_file $file

ld $(pwd)/temp.o -o ${file%.*}

rm $temp_file

./${file%.*}
