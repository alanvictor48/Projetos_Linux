#!/bin/bash

echo 'Instalando'

apt-get update
apt-get upgrade
apt-get install apache2 -y
apt-get install unzip -y

echo 'Baixando e redirecionando arquivos'

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
rm -r /var/www/html/*
mv linux-site-dio-main/* /var/www/html

echo 'Fim!'
