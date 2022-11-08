#!/bin/bash

mkdir publico
mkdir adm
mkdir ven
mkdir sec

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

chmod 777 publico
chmod 700 adm
chown :GRP_ADM adm/
chmod 700 ven
chown :GRP_VEN ven/
chmod 700 sec
chown :GRP_SEC sec/

useradd -g GRP_ADM -m -p $(openssl passwd password) -s /bin/bash carlos
useradd -g GRP_ADM -m -p $(openssl passwd password) -s /bin/bash maria
useradd -g GRP_ADM -m -p $(openssl passwd password) -s /bin/bash joao

useradd -g GRP_VEN -m -p $(openssl passwd password) -s /bin/bash debora
useradd -g GRP_VEN -m -p $(openssl passwd password) -s /bin/bash sebastiana
useradd -g GRP_VEN -m -p $(openssl passwd password) -s /bin/bash roberto

useradd -g GRP_SEC -m -p $(openssl passwd password) -s /bin/bash josefina
useradd -g GRP_SEC -m -p $(openssl passwd password) -s /bin/bash amanda
useradd -g GRP_SEC -m -p $(openssl passwd password) -s /bin/bash rogerio
