#!/bin/bash

# Напишите скрипт, который будет принимать текстовый файл в качестве аргумента и подсчитывать количество слов в этом файле.

word_counter=$(wc -w "$1")
echo "words in the file $1: $word_counter"