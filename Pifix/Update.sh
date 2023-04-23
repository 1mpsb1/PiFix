#!/bin/bash
clear
echo "██████╗░██╗███████╗██╗██╗░░██╗"
echo "██╔══██╗██║██╔════╝██║╚██╗██╔╝"
echo "██████╔╝██║█████╗░░██║░╚███╔╝░"
echo "██╔═══╝░██║██╔══╝░░██║░██╔██╗░"
echo "██║░░░░░██║██║░░░░░██║██╔╝╚██╗"
echo "╚═╝░░░░░╚═╝╚═╝░░░░░╚═╝╚═╝░░╚═╝"
echo "https://github.com/fasdymine"
echo "------------update------------"
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