
# Exercicio Proposto

Dando continuidade, o segundo teste referente a Ansible, GIT, Jenkins pode ser encontrado abaixo:

- [x] Crie um script em bash responsável por verificar se o _nginx_ server esta instalado no host. <!-- verificar comp faz com hendlers-->

- [x] Caso o serviço não esteja instalado, o script deve efetuar a instalação do pacote nginx.


- [X] Crie um arquivo chamado index.html contendo o seguinte conteúdo:

```
<html>

<head>
<title> Olá Compasso! </title>
</head>

<body bgcolor="white" text="blue">

<h1> Fast Track DevOps </h1>

Eu trabalho utilizando DevOps!

</body>

</html>
```

- [X] Salve o conteúdo do arquivo em um repositório SCM de sua preferência para versionamento.

- [x] Crie um playbook Ansible que deve executar o script de instalação do nginx.
    
- [x] Na estrutura ansible, utilize “templates”, deve conter uma copia do seu arquivo index.html.
    
- [x] Uma das tasks a serem efetuadas pelo Ansible é copiar o arquivo para o diretório web do nginx.
    
<!--copiar arquivo para o diretório: /usr/share/nginx/html-->

- Use “handlers” para verificar:
    - [] se o arquivo foi copiado correntamente;
    - [] verificar se após a execução do bash via ansible o serviço do nginx esta iniciado, caso contrário, inicie-o.
    
    - [] Salve seu playbook no repositorio SCM para versionamento.
    
    - [] Instale o plugin Ansible no Jenkins
    
    - [] Criei um projeto estilo livre.
    
    - [] Na seção de build, selecione Invocar Playbook Ansible.
    
    - [] Execute o build após configurações.
    
    - [] Verifique se seu web server esta up.
    

PS. Para cada alteração efetuada no source armazenado no repo o Jenkins deve disparar um novo build.

Bons estudos e estamos a disposição para esclarecer dúvidas, limite de duas consultas 
