#!/bin/bash 


echo "Atualizando o servidor"
echo "-----------------------"
sudo apt-get update
sudo apt-get upgrade -y

echo "Atualizando o Apache"
echo "----------------------"
sudo apt-get install apache2 -y

echo "Clonando o repositório da aplicação"
echo "-------------------------------------"
sudo git clone https://github.com/AlanaSilva/Clone-Netflix.git
cd Clone-Netflix
sudo cp -R * /var/www/html

echo "Exibindo o ip atual do servidor"
echo "--------------------------------"
ip a 