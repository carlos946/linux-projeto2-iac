#!/bin/bash

echo "Atualizando o sistema"
apt-get update
aptget upgrade -y

echo "Instalando o apache2 e o unzip"
apt-get install apache2 unzip -y

# Acessando o direrio /tmp
cd /tmp

# Baixando os arquivos da aplicação
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

# Descompaquitando o arquivo
unzip main.zip

# Acessando o diretorio e copiandos arquivos
cd linux-site-dio-main

echo "Copaindo os arquivos para o direterio do apache2"
cp -r * /var/www/html


