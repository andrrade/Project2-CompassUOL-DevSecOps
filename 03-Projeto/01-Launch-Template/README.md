<p align="center">
  <img src="https://github.com/user-attachments/assets/93e40c5c-0cb2-45fa-9035-a925a4409869" alt="Img LaunchTemplate" width="150">
</p>
<br>
ERRO NA IMG

# Launch Template

## Criação do LT (parte 1)

1. Abra o painel principal da AWS e pesquise por `EC2`
2. Clique em `Launch templates`

![image](https://github.com/user-attachments/assets/c003f33b-b3e9-4233-bf89-13a51cef61cf)
ERRO NA IMG

## Criação do LT (parte 2)

1. Clique em `Create launch template`

![image](https://github.com/user-attachments/assets/a7b1480c-ff1b-4e12-bb75-30acb7bd9292)
ERRO NA IMG

## Criação do LT (parte 3)

> [!NOTE]
> Você pode escolher os nomes que quiser, os que estou deixando documentados foram os que eu usei.

1. Dê um nome para o template

`MyTemplateWordPress`

2. Dê uma descrição

`Template Project 2`

3. Marque o chekbox

![image](https://github.com/user-attachments/assets/c3fb650c-19e5-4ea4-a38f-1d2d21c7915b)

## Criação do LT (parte 4)

1. Selecione a AMI `Amazon Linux`

![image](https://github.com/user-attachments/assets/0e9a0062-8fd5-48a9-aacd-73144718a155)

## Criação do LT (parte 5)

1. Selecione o tipo da instância como `t2.micro`
2. Selecione a key pair criada nas [etapas anteriores](https://github.com/andrrade/Project2-CompassUOL-DevSecOps/blob/main/02-Dependencias/05-Key-pairs/README.md)

![image](https://github.com/user-attachments/assets/ebc0f591-b28b-4486-8e82-8a41dc31d04d)

## Criação do LT (parte 6)

Em subnet, selecione `Don´t include in launch template`
1. Em firewall, selecione `Select existing security group`
2. Selecione o security group da instância: `ec2_SG` 

![image](https://github.com/user-attachments/assets/db902fa7-2eaa-40c6-975d-f31a040fd340)

## Criação do LT (parte 7)

1. Coloque as tags necessárias e clique em `Add new tag`

> [!NOTE]
> Por motivos de segurança, não posso mostrá-las

![image](https://github.com/user-attachments/assets/e15e79c4-7494-4a77-ac35-6747e0ad4999)

## Criação do LT (parte 8)

1. Role até o final da página e adicione o seu [UserData](https://github.com/andrrade/Project2-CompassUOL-DevSecOps/blob/main/00-Arquivos-do-Projeto/user_data.sh)

```sh
#!/bin/bash

# Variáveis
EFS_FILE_SYSTEM_ID="<seu_file_id_aqui>"  
DB_HOST="<seu_host_do_banco_de_dados_aqui>"  
DB_NAME="<seu_nome_do_banco_de_dados_aqui>"  
DB_USER="<seu_usuario_do_banco_aqui>"  
DB_PASSWORD="<sua_senha_do_banco_aqui>"  
DOCKER_COMPOSE_VERSION="v2.34.0"
PROJECT_DIR="/home/ec2-user/projeto-docker"
EFS_MOUNT_DIR="/mnt/efs"  

# Atualizações e instalações básicas
yum update -y
yum install -y aws-cli

# Instalação e configuração do Docker
yum install -y docker
service docker start
systemctl enable docker
usermod -a -G docker ec2-user

# Instalação do Docker Compose
curl -SL https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

# Instalação e montagem do EFS
yum install -y amazon-efs-utils
mkdir -p ${EFS_MOUNT_DIR}
mount -t efs ${EFS_FILE_SYSTEM_ID}:/ ${EFS_MOUNT_DIR}
echo "${EFS_FILE_SYSTEM_ID}:/ ${EFS_MOUNT_DIR} efs defaults,_netdev 0 0" >> /etc/fstab

# Permissões corretas para WordPress (usuário 33 = www-data no container)
chown -R 33:33 ${EFS_MOUNT_DIR}

# Preparação do projeto
mkdir -p ${PROJECT_DIR}
cd ${PROJECT_DIR}

# docker-compose.yml
cat > docker-compose.yml <<EOL
version: '3.7'
services:
  wordpress:
    image: wordpress:latest
    container_name: wordpress
    environment:
      WORDPRESS_DB_HOST: ${DB_HOST}
      WORDPRESS_DB_NAME: ${DB_NAME}
      WORDPRESS_DB_USER: ${DB_USER}
      WORDPRESS_DB_PASSWORD: ${DB_PASSWORD}
    ports:
      - 80:80
    volumes:
      - ${EFS_MOUNT_DIR}:/var/www/html

volumes:
  wordpress_data:
EOL

# Inicialização do WordPress
docker-compose up -d
```

2. Clique em `Create launch template`

![image](https://github.com/user-attachments/assets/beb22991-f4ad-4b26-85d7-02afc7b0dba9)

> [!NOTE]
> Após seguir esses passos, você consegue criar o `Launch Template` da forma correta!
