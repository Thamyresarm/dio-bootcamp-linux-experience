# Linux Experience Desafios de Código

Repositório com os desafios do Bootcamp Linux

![image](https://user-images.githubusercontent.com/24790794/191891058-8c44fece-d9ef-4ef0-b45e-3d4ee96616e3.png)


## Alguns comandos importantes para realizar o exercicio: 

### ls 
listar tudo do diretorio

### ls -a
listar tudo do diretorio, inclusive arquivos ocultos

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

### cp -R * [caminho destino]
copia todos os arquivos e diretorios de dentro do diretorio em que estar até o caminho indicado

### chmod +x [nome do aquivo]
Da a permissão de execução do arquivo

### ./[nome do arquivo que deseja executar.sh]
Executa o script criado
