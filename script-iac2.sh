#!/bin/bash

echo " "
echo "<-----> ATUALIZANDO REPOSITÓRIOS... <----->"
echo " "
apt-get update
apt-get upgrade -y
echo " "
echo "<-----> ATUALIZAÇÃO DE REPOSITÓRIS FINALIZADA. <----->"
echo " "
echo "<-----> INSTALANDO PACOTES NECESSÁRIOS... <----->"
echo " "
apt-get install apache2 unzip wget -y
echo " "
echo "<-----> INSTALAÇÃO DOS PACOTES FINALIZADA. <----->"
echo " "
echo "<-----> BAIXANDO MAIN.ZIP <----->"
echo " "
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo " "
echo "<-----> DOWNLOAD DO MAIN.ZIP FINALIZADO. <----->"
echo " "
echo "<-----> DESCOMPACTANDO MAIN.ZIP... <----->"
echo " "
unzip main.zip
echo " "
echo "<-----> DESCOMPRESSÃO FINALIZADA. <----->."
echo " "
echo "<-----> COMPIANDO ARQUIVOS PARA A PASTA DO WEB SERVER... <----->"
cd linux-site-dio-main/
cp -rv * /var/www/html/
echo " "
echo "<-----> PROCESSO DE INSTALAÇÃO FINALIZADO. <----->"
