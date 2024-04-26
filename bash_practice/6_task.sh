#!/bin/bash

# Напишите скрипт, который будет регулярно (например, каждую неделю) создавать резервные копии определенных директорий и сохранять их с датой в имени файла. 

directories=("MyDirectory" "Copied")

backup_dir="$PWD/backup"

mkdir -p "$backup_dir"

current_date=$(date + "%Y%m%d")

for dir in "${directories[@]}"; do
    tar -czf "${backup_dir}/{$dir}_backup_${current_date}.tar.gz" "${dir}"
done 

# work if script executed with admin rights
(crontab -l 2>/dev/null; echo "0 0 * * 0 /home/madina/devops-it-camp/6_task.sh") | crontab -