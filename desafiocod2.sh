#!/bin/bash
echo "Verificando atualizações do servidor..."
apt-get update

echo "Atualizando servidor..."
apt-get upgrade -y

echo "Instalando Apache2..."
apt-get install apache2 -y

echo "Instalando Unzip..."
apt-get install unzip -y

echo "Acessando pasta Temp..."
cd /tmp

echo "Baixando arquivos..."
wget https://github.com/Thamyresarm/curso-dio-linux-experience-site/archive/refs/heads/main.zip

echo "Descompactando aquivos..."
unzip main.zip

echo "Acessando a pasta descompactada..."
cd curso-dio-linux-experience-site-main

echo "Copiando arquivos baixados para a pasta do Apache..."
cp -R * /var/www/html/

echo "Finalizado..."
