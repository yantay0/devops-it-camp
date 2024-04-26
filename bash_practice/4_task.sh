#!/bin/bash

# Создайте архив (tar) из нескольких файлов и директорий, а затем распакуйте его. Убедитесь, что файлы восстановлены корректно. 

echo "12345678" > MyDirectory/MyFile.txt
echo "1234567" > Copied/MyFile.txt

tar -cvf archive.tar MyDirectory Copied
tar -xvf archive.tar
ls -R
