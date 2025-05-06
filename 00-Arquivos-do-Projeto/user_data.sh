#!/bin/bash

# Variáveis
EFS_FILE_SYSTEM_ID="<seu_file_id_aqui>"  
DB_HOST="<seu_host_do_banco_de_dados_aqui>"  
DB_NAME="<seu_nome_do_banco_de_dados_aqui>"  
DB_USER="<seu_usuario_do_banco_aqui>"  
DB_PASSWORD="<sua_senha_do_banco_aqui>"  
DOCKER_COMPOSE_VERSION="v2.34.0"
PROJECT_DIR="/home/ec2-user/projeto-docker"
EFS_MOUNT_DIR="/home/ec2-user/efs"

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

# Configuração do EFS
yum install -y amazon-efs-utils
mkdir ${EFS_MOUNT_DIR}
mount -t efs ${EFS_FILE_SYSTEM_ID}:/ ${EFS_MOUNT_DIR}
echo "${EFS_FILE_SYSTEM_ID}:/ ${EFS_MOUNT_DIR} efs defaults,_netdev 0 0" >> /etc/fstab

# Preparação do projeto
mkdir ${PROJECT_DIR}
cd ${PROJECT_DIR}

# Configuração do docker-compose.yml
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
      - /mnt/efs:/var/www/html

volumes:
  wordpress_data:
EOL

# Inicialização dos containers
docker-compose up -d
