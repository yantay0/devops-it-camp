#!/bin/bash

# Напишите скрипт, который будет генерировать случайные пароли заданной длины и сохранять их в файл

password_length=$1

password=$(openssl rand -base64 48 | cut -c1-$password_length)

echo $password > password.txt

