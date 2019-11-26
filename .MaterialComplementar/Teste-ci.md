
# Exercicio Proposto

Dando continuidade, o segundo teste referente a **Ansible**, **GIT** e **Jenkins** pode ser encontrado abaixo:

- [x] Crie um script em bash responsável por verificar se o _nginx_ server esta instalado no host. 

- [x] Caso o serviço não esteja instalado, o script deve efetuar a instalação do pacote nginx.

    * No repositório o arquivo `verificaNGinx.sh` inicialmente utiizado para entedimento dospassos a serem realizados para verificar o _nginx_;

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
    * Utilizado GitHub

- [x] Crie um playbook Ansible que deve executar o script de instalação do nginx.

- [x] Na estrutura ansible, utilize “templates”, deve conter uma copia do seu arquivo index.html.
    
- [x] Uma das tasks a serem efetuadas pelo Ansible é copiar o arquivo para o diretório web do nginx.
    * diretório web = /usr/share/nginx/html

- Use “handlers” para verificar:
    - [x] se o arquivo foi copiado correntamente;
    - [x] verificar se após a execução do bash via ansible o serviço do nginx esta iniciado, caso contrário, inicie-o.
    
- [x] Salve seu playbook no repositorio SCM para versionamento.
    * https://github.com/AndressaFarias/Atividades-FastTrack/tree/master/Ansible%2C%20Git%20e%20Jenkins 

- [x] Instale o plugin Ansible no Jenkins
    * Instalado o plugin Ansible:: https://plugins.jenkins.io/ansible 

- [x] Crie um projeto _free-style_
    * No Jenkin clicar em **Novo Job**
    * Inserir um nome (_ex: argentum-web_)
    * Selecione a opção **Construir um projeto de software free-style**
    * Clique em **OK**
    
    **Necessário criar um novo ambiente**

    Foram utilizadois dois servidores na GCP com Ubuntu 18.04.
    Chave gerada: 
        `ssh-keygen -t rsa -f ~/.ssh/ansible_key -C ansible`
    Chave pública inserida na GCP > metadata

    * `sudo apt-get update`
    * `sudo apt-get install openjdk-8-jdk -y`
    * `wget http://mirrors.jenkins.io/war/latest/jenkins.war`
    * `sudo java -jar jenkins.war --httpPort=80`
    * `wget http://mirror.nbtelecom.com.br/apache/tomcat/tomcat-7/v7.0.96/bin/apache-tomcat-7.0.96.zip`
    * `sudo apt-get install zip -y`
    * `unzip apache-tomcat-7.0.96.zip`
    * `cd apache-tomcat-7.0.96`
    * `cd bin/`
    * `chmod +x *.sh`
    * `./startup.sh`
    * `curl localhost:8080`
    * `<externalIP>:8080/`
    *  `cat /etc/issue`
    *  `sudo apt-get install ansible -y`
    *  `python -V` | `python3 -V`

- [x] Na seção de build, selecione Invocar Playbook Ansible.
    
- [x] Execute o build após configurações.
    
- [x] Verifique se seu web server esta up.
    

PS. Para cada alteração efetuada no source armazenado no repo o Jenkins deve disparar um novo build.
   
* as documentações cosultadas indicam que deve ser alterado o arquivo **post-receive** para que o build ocorra automticamente, porém no repo inicizado, em .git/hooks, esse ruvo não está presente.
* o arquivo foi criado manualmente `vim post-receive`
* inserida a linha, conforme indicado no curso e na doc
> Um commit, um build
Para fazermos isso, a configuração deve ser no repositório git do projeto adicionando no arquivo nomeDoSeuRepositorio/hooks/post-receive o seguinte conteúdo:
curl http://endereco.do.jenkins/git/notifyCommit?url="https://github.com/alura-cursos/argentum-web.git"

# Referencias:
1. https://tableless.com.br/deploy-usando-git-pull-e-hooks/

2. https://wiki.jenkins.io/display/JENKINS/Git+Plugin#GitPlugin-Pushnotificationfromrepository

3. Bash check if process is running or not on Linux / Unix - https://www.cyberciti.biz/faq/bash-check-if-process-is-running-or-notonlinuxunix/

4. Método para verificar e instalar pacotes - https://www.vivaolinux.com.br/script/Metodo-para-verificar-e-instalar-pacotes

5. copy - https://docs.ansible.com/ansible/latest/modules/copy_module.html#copy-module

6. shell - Execute shell commands on targes - https://docs.ansible.com/ansible/latest/modules/shell_module.html

7. service - https://docs.ansible.com/ansible/latest/modules/service_module.html#service-module

8. Primeiros passos com Ansible – Configurando e Gerenciando Nginx - https://churrops.io/2018/02/04/primeiros-passos-com-ansible-configurando-e-gerenciando-nginx/