# curso-dio-linux-desafios
Repositório com os desafios do Bootcamp Linux

## Alguns comandos importantes para realizar o exercicio: 

### ls 
listar tudo do diretorio

### ls -l 
listar tudo com as informações de permissões

### nano [nome do arquivo]
abre um arquivo de texto 

### cd [nome do diretorio]
entra no diretorio

### cd /
volta para o diretorio raiz

### mkdir [nome do diretorio]
criar diretorio

### groupadd [nome do grupo]
criar grupo

### useradd [nome do usuário]
criar apenas usuário

### useradd [nome do usuario] -m
cria usuario e a pasta home do mesmo

### useradd [nome do usuario] -c "[comentario escolhido]"
criar apenas usuário e acrescenta comentário para saber quem é o usuário

### chsh -s /bin/bash [nome de usuário]
alterar o shell utilizado pelo usuário

### passwd [nome de usuário]
cria a senha do usuário 

### Podemos criar o usuário já com toda essa informação 
useradd [nome escolhido] -m -c "comentario ou nome completo do user" -s /bin/bash -p $(openssl passwd -1 [senha desejada])
Não consegui utilizar o -crypt indicado pelo professor, pesquisei e encontrei o -1 e foi assim que consegui executar o script no meu ambiente.

### su [nome de usuario]
trocar para o usuário desejado

### usermod [nome de usuário] [comando indicando alteracao]
realiza alterações no usuário ex.: usermod thamyres -c "alterando meu comentario]

### userdel -r -f [nome de usuario]
excluir usuário e as pastas

### cat /etc/passwd
Consultar usuários do sistema

### cat /etc/group
Consultar grupos do sistema

### sudo
prefixo utilizado para dar permissão de adm (caso o usuario esteja no grupo com permissão)