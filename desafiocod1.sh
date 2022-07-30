#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd carlos -c "User Carlos" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
useradd maria -c "User Maria" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
useradd joao -c "User João" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM

useradd debora -c "User Débora" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN
useradd sebastiana -c "User Sebastiana" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN
useradd roberto -c "User Roberto" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN

useradd josefina -c "User Josefina" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC
useradd amanda -c "User Amanda" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC
useradd rogerio -c "User Rogério" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC

echo "Especificando permissões dos diretórios...."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim....."
