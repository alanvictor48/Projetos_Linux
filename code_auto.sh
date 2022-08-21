#!/bin/bash

echo "Criando os diretórios..."

mkdir /publico /adm /ven /sec

echo "Criando os grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Adicionando usuários e ligando-os aos grupos..."

useradd carlos -m -G GRP_ADM -s /bin/bash -p $(openssl passwd -crypt 123456)
useradd maria -m -G GRP_ADM -s /bin/bash -p $(openssl passwd -crypt 123456)
useradd joao -m -G GRP_ADM -s /bin/bash -p $(openssl passwd -crypt 123456)

useradd debora -m -G GRP_VEN -s /bin/bash -p $(openssl passwd -crypt 123456)
useradd carlos -m -G GRP_VEN -s /bin/bash -p $(openssl passwd -crypt 123456)
useradd sebastiana -m -G GRP_VEN -s /bin/bash -p $(openssl passwd -crypt 123456)

useradd josefina -m -G GRP_SEC -s /bin/bash -p $(openssl passwd -crypt 123456)
useradd amanda -m -G GRP_SEC -s /bin/bash -p $(openssl passwd -crypt 123456)
useradd rogerio -m -G GRP_SEC -s /bin/bash -p $(openssl passwd -crypt 123456)

echo "Alterando permissões nos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Programa Finalizado!"

