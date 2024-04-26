#!/bin/bash

# Напишите скрипт, который будет проверять наличие обновлений системы и, если они доступны, автоматически устанавливать их.

updates=$(apt list --upgradable 2>/dev/null | grep -v 'Listing...')

if [ -n "$updates" ]; then
    echo "found avaliable updates. start updating"
    sudo apt update
    sudo apt upgrade -y
    echo "done"
else
    echo "no avalable updates."
fi