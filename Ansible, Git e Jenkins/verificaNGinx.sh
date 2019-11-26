#!/bin/bash
echo "Este script verifica se o pacote esta ou nao instalado, posteriormente instala o mesmo se necessario"
echo

SERVICE="apache2"

pacote=$(dpkg --get-selections | grep "$SERVICE" )
echo 
echo -n "Verificando se o Pacote $SERVICE esta instalado."

#sleep 2

if [ -n "$pacote" ] ;
then echo
     echo "Pacote $SERICE ja instalado"
else echo
     echo "Pacote $SERVICE Necessario-> Nao instalado"
     echo "Instalando Automaticamente Pacote Dialog..."
     sudo apt-get install $SERVICE
fi

echo "Istalação conscluida"
read
exit