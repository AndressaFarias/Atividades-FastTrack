
# Exercício Proposto
Monte um script que verifica os dias faltantes para a expiração de um certificado SSL de um determinado domínio.
O domínio deve ser passado como argumento durante a execução.

# Solução proposta

Script que obtem através do `openssl` a string com a data de epiração do certificado. Após é feita a transfrmaão da string em "date" para que possa ser obtida a data e formato de segundos, de maneira a facilita a obtençao da diferença entre a data atual e a data de expiração.
A data corrente também é traformada em segundos, feita então a divisão entre as duas datas e feita a transoformação pra dias.

_Exemplo de execução_
```
./validadeCertificado.sh www.google.com.br
```

### Componentes do comando

| Componente | Descrição | 
| ---------- | -----------------|
| s_client   | O comando **s_client** implementa um cliente SSL / TLS genérico que se conecta a um host remoto usando SSL / TLS. É uma ferramenta de diagnóstico muito útil para servidores SSL. [1]|
| -connect host:port | Especifica o host e a porta (opcional) à qual se conectar. Se não especificado, é feita uma tentativa de conexão com o host local na porta 4433. [2]|
| x509 | O comando x509 é um utilitário de certificado multiuso. Pode ser usado para exibir informações de certificado, converter certificados em vários formulários, assinar solicitações de certificado como uma "mini CA" ou editar configurações de confiança de certificado. [3] | 
| -enddate | Imprime a data de validade do certificado [3] | 
| -noout | essa opção impede a saída da versão codificada da solicitação.
...

### Passos realizados
* Busca por solicitações semelhantes;
* Teste de alguns scripts;
* Leitura da documentação do openssl buscando as opções utilizadas;
* Consulta ao curso da alura para montagem do script
    * captura de variaveis;
    * redirecionamento das saidas.
* Busca por ferramentas para editar o retorno;
* Busca por ferramentas para transformar tring em date;

### Dificuldades
* Criar função ao inserir o código dentro de uma função, retorna mesnagem _unable to load certificate_


**Documentações consultadas**
1. script to check if SSL certificate is valid - https://unix.stackexchange.com/questions/234970/script-to-check-if-ssl-certificate-is-valid

2. s_client: https://www.openssl.org/docs/man1.0.2/man1/s_client.html

3. x509: https://www.openssl.org/docs/man1.0.2/man1/x509.html

4. Convert string to date in bash - https://stackoverflow.com/questions/11144408/convert-string-to-date-in-bash/11144983

5. Quicly calculate date differences - https://unix.stackexchange.com/questions/24626/quickly-calculate-date-differences

6. Comandos úteis do Open SSL - https://www.conexaoti.com.br/post/comandos-uteis-do-open-ssl