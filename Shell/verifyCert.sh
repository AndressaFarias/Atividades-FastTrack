#1/bin/bash
  
echo ' --- Scrip para verificar a validade do certificado do dominio informado ---'

echo " " 

echo Hoje é dia $(date +"%d %b %Y")


# Obtém a data de expiração doo certificado do dominio informado

validadeCertificado=$(openssl s_client -connect $1:443 2>/dev/null | openssl x509 -noout -dates | tail -1 | tr -s " " |cut -d "=" -f2 | cut -d " " -f1,2,4)


echo O certificado do dominio $1, é válido até $validadeCertificado

# Transforma a data corrente em segundo:
dataCorrenteSegundos=$(date +%s)

# Transforma a String com a data de expiração em data e tranforma em segundos
dataValidadeCertificadoSegundos=$(date -d "$validadeCertificado" +%s)

# Faz obtém  diferença entre as duas datas, atual e de espiração do certficado

echo " "

echo Faltam  $(( (dataValidadeCertificadoSegundos  - dataCorrenteSegundos) / 86400 )) dias para o certificao expirar.