

# Exercício Proposto

Monte um script que verifica os dias faltantes para a expiração de um certificado SSL de um determinado domínio.

O domínio deve ser passado como argumento durante a execução.

# Como usar 




### Componentes do comando

| Componente | Descrição        |
| ---------- | -----------------|
| s_client   | O comando **s_client** implementa um cliente SSL / TLS genérico que se conecta a um host remoto usando SSL / TLS. É uma ferramenta de diagnóstico muito útil para servidores SSL. [1]|
| -connect host:port | Especifica o host e a porta (opcional) à qual se conectar. Se não especificado, é feita uma tentativa de conexão com o host local na porta 4433. [2]|
| x509 | O comando x509 é um utilitário de certificado multiuso. Pode ser usado para exibir informações de certificado, converter certificados em vários formulários, assinar solicitações de certificado como uma "mini CA" ou editar configurações de confiança de certificado. [3] | 
| -enddate | Imprime a data de validade do certificado [3] | 
| -noout | essa opção impede a saída da versão codificada da solicitação.




### Passos realizados
* Buca por solicitações semelhantes
* Teste de alguns scripts
* Leitura da documentação do openssl buscando as opções utilizadas
* Consulta ao curso da alura para montagem do script
    * captura de variaveis
    * redirecionamento das saidas 


### Dificuldades
* Criar função ao inserir o código dentro de uma função, retorna mesnagem _unable to load certificate_

**Documentações consultadas**
1. script to check if SSL certificate is valid - https://unix.stackexchange.com/questions/234970/script-to-check-if-ssl-certificate-is-valid

2. s_client: https://www.openssl.org/docs/man1.0.2/man1/s_client.html

3. x509: https://www.openssl.org/docs/man1.0.2/man1/x509.html



----
Como Fazer Cálculos e Formatação de Data no Linux - http://www.dotsharp.com.br/linux/como-fazer-calculos-e-formatacao-de-data-no-linux.html
https://eriberto.pro.br/blog/2012/02/14/calculo-de-datas-com-o-comando-date-no-gnulinux/ - https://eriberto.pro.br/blog/2012/02/14/calculo-de-datas-com-o-comando-date-no-gnulinux/
Shell Script: Como obter a data anterior - http://www.mhavila.com.br/topicos/unix/shontem.html
Tutorial AWK - http://rberaldo.com.br/tutorial-awk/

Comandos úteis do Open SSL - https://www.conexaoti.com.br/post/comandos-uteis-do-open-ssl

script to check if SSL certificate is valid - https://unix.stackexchange.com/questions/234970/script-to-check-if-ssl-certificate-is-valid