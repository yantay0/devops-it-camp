#!/bin/bash

# Напишите скрипт, который будет использовать цикл for для подсчета количества файлов и директорий в текущей директории.

cnt=0

for f in *; do
    cnt=$((cnt + 1))
done

echo $cnt