#!/bin/bash

# Скопируйте все файлы с расширением ".txt" из одной директории в другую. Затем выведите список скопированных файлов.

mkdir Copied
cp MyDirectory/*txt Copied/
ls -l Copied