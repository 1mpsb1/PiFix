#!/bin/bash
echo "██████╗░██╗███████╗██╗██╗░░██╗"
echo "██╔══██╗██║██╔════╝██║╚██╗██╔╝"
echo "██████╔╝██║█████╗░░██║░╚███╔╝░"
echo "██╔═══╝░██║██╔══╝░░██║░██╔██╗░"
echo "██║░░░░░██║██║░░░░░██║██╔╝╚██╗"
echo "╚═╝░░░░░╚═╝╚═╝░░░░░╚═╝╚═╝░░╚═╝"
echo "https://github.com/fasdymine"
echo "-------------------------------"
echo "Для обновления введите "1"
echo "Для устранения ошибок в среде введите "2"
echo "="
read zw
if [ "$zw" = "1" ]; then
clear
echo "Обновление пакетов..."
sudo apt update
sudo apt-get update
echo "Обновление программ..."
sudo apt upgrade
sudo apt-get upgrade
echo "Обновление дистрибутива Linux..."
echo "ВНИМАНИЕ! ПОСЛЕ ОБНОВЛЕНИЯ СИСТЕМА БУДЕТ ПЕРЕЗАГРУЖЕНА!
sudo update-manager –devel-release
echo "Перезагрузка системы..."
sudo -i
sudo reboot
else
if [ "$zw" = "2" ]; then
clear
echo "Выполнение тестовых команд..."
sudo apt update
sudo apt-get update
sudo apt upgrade
sudo apt-get upgrade
echo "Очистка списков apt"
sudo rm -rvf /var/lib/apt/lists/*
echo "Установка лимита для apt листов"
echo "APT::Cache-Limit "100000000";" >> /etc/apt/apt.conf.d/70debconf
echo "Устранение ошибок в apt"
sudo rm -rvf /var/lib/apt/lists/* \
sudo mv /var/lib/dpkg/status /var/lib/dpkg/status-bad \
sudo cp /var/lib/dpkg/status-old /var/lib/dpkg/status \
sudo apt-get update
sudo apt-get autoclean \
sudo apt-get autoremove -y \
sudo apt-get update
sudo apt-get upgrade -y
echo "Перезагрузка системы..."
sudo -i
sudo reboot
else
echo "Ошибка!"