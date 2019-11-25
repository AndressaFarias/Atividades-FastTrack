#1/bin/bash
  
SERVICE="apache2"

if pgrep -x "$SERVICE" >/dev/null
then
    echo "$SERVICE is running"
else
    echo "$SERVICE stopped"
    # uncomment to start nginx if stopped
    # systemctl start nginx
    # mail  
fi


--- v2

#!/bin/bash
#Criado por: Jonathan Wolff Andrade - 2012
###Metodo que verifica/instala pacote

echo "Este script verifica se o pacote esta ou nao instalado, posteriormente instala o mesmo se necessario"
echo
#echo -n "Informe o nome do Pacote: "

SERVICE="apache2"
        #read nome
pacote=$(dpkg --get-selections | grep "$SERVICE" )

echo 
echo -n "Verificando se o Pacote $SERVICE esta instalado."
sleep 2
if [ -n "$pacote" ] ;
then echo
     echo "Pacote $SERICE ja instalado"
else echo
     echo "Pacote $SERVICE Necessario-> Nao instalado"
     echo "Instalando Automaticamente Pacote Dialog..."
     sudo apt-get install $SERVICE
fi
echo -n "Pressione qualquer tecla para sair..."
read
exit