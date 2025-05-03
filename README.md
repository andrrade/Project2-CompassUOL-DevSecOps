> [!WARNING]
> Projeto ainda em andamento

<p align="center">
  <img src="https://github.com/user-attachments/assets/fc8a7bf4-b1bf-45ee-84d0-8ffffbf0cec9" alt="Logo dos Exercícios" width="500">
</p>
<br>

<div align="center">
  <a href="https://skillicons.dev">
    <img src="https://skillicons.dev/icons?i=aws,linux,docker,wordpress" alt="My Skills" />
  </a>
</div>

# Avaliação 3 - Wordpress na AWS 🌐☁️

# Sumário 📝

- [Teste local](https://github.com/andrrade/Project2-CompassUOL-DevSecOps/tree/main/01-Teste)
  - [Wordpress](https://github.com/andrrade/Project2-CompassUOL-DevSecOps/blob/main/01-Teste/01-Wordpress/README.md)
  - [EC2](https://github.com/andrrade/Project2-CompassUOL-DevSecOps/blob/main/01-Teste/02-EC2/README.MD)
- [Dependências](https://github.com/andrrade/Project2-CompassUOL-DevSecOps/tree/main/02-Dependencias)
  - [VPC](https://github.com/andrrade/Project2-CompassUOL-DevSecOps/blob/main/02-Dependencias/01-VPC/README.md)
  - [Security Group](https://github.com/andrrade/Project2-CompassUOL-DevSecOps/blob/main/02-Dependencias/02-SecurityGroup/README.md)
  - [RDS](https://github.com/andrrade/Project2-CompassUOL-DevSecOps/blob/main/02-Dependencias/03-Banco-de-Dados-RDS/README.md)
  - [EFS](https://github.com/andrrade/Project2-CompassUOL-DevSecOps/blob/main/02-Dependencias/04-EFS/README.md)

---

## 👣 1º Passo: Configuração do Ambiente

### 🪟 **Windows**

* **Sistema Operacional:** Windows 10/11
* **WSL:** [Windows Subsystem for Linux](https://learn.microsoft.com/en-us/windows/wsl/) com [Ubuntu 25.04.1 LTS](https://documentation.ubuntu.com/server/)
* **Gerenciador de Containers:** [Rancher Desktop](https://rancherdesktop.io/) — alternativa gratuita ao [Docker Desktop](https://www.docker.com/products/docker-desktop/)
* **Editor de Código:** [Visual Studio Code](https://code.visualstudio.com/)

---

### 🍏 **macOS**

* **Sistema Operacional:** macOS Monterey ou superior
* **Gerenciador de Containers:** [Rancher Desktop](https://rancherdesktop.io/) — alternativa gratuita ao [Docker Desktop](https://www.docker.com/products/docker-desktop/)
* **Editor de Código:** [Visual Studio Code](https://code.visualstudio.com/)

---

### 🐧 **Linux (ex: Ubuntu, Pop!\_OS, Fedora)**

* **Gerenciador de Containers:** [Rancher Desktop](https://rancherdesktop.io/) — alternativa gratuita ao [Docker Desktop](https://www.docker.com/products/docker-desktop/)
* **Docker:** Também instalado separadamente para controle direto via CLI
* **Editor de Código:** [Visual Studio Code](https://code.visualstudio.com/)

---

# Realizando teste 1
1. Subir o wordpress na EC2
2. Subir o banco
3. Subir EFS (falar da importância e falar sobre stateless e stateful)

### **3. Subir EFS (Elastic File System) – Importância e Conceitos (Stateless vs. Stateful)**  

O **Amazon EFS (Elastic File System)** é um serviço de armazenamento de arquivos escalável e gerenciado pela AWS, ideal para ambientes que exigem **acesso compartilhado e persistência de dados**.  

#### **Por que o EFS é Importante?**  
- **Armazenamento Compartilhado**: Permite que múltiplas instâncias (servidores) acessem os mesmos arquivos simultaneamente.  
- **Persistência de Dados**: Os arquivos não são perdidos mesmo se uma instância for reiniciada ou encerrada.  
- **Escalabilidade Automática**: Cresce conforme a demanda, sem necessidade de provisionamento manual.  

#### **Stateless vs. Stateful**  
- **Stateless (Sem Estado)**:  
  - Aplicações que **não armazenam dados localmente** (ex: containers temporários).  
  - Cada requisição é independente (ex: balanceadores de carga, APIs REST).  
  - **Precisam de EFS ou outro armazenamento externo** para manter dados persistentes.  

- **Stateful (Com Estado)**:  
  - Aplicações que **armazenam dados localmente** (ex: bancos de dados, servidores de arquivos).  
  - Se a instância for reiniciada, os dados podem ser perdidos se não houver persistência.  
  - **Soluções como EFS, EBS ou RDS são essenciais** para garantir durabilidade.  

#### **Caso de Uso no WordPress**  

- Se o WordPress roda em múltiplos servidores (ex: Auto Scaling Group), o EFS garante que:  
  - **Arquivos de mídia (uploads) e temas/plugins** sejam acessíveis por todas as instâncias.  
  - **Configurações e sessões** podem ser mantidas consistentes.  
- Sem o EFS, cada instância teria sua própria cópia dos arquivos, causando inconsistências.  

**Resumo**: O EFS é crucial para ambientes distribuídos, garantindo **dados persistentes e compartilhados**, especialmente em arquiteturas **stateless** que dependem de armazenamento externo.

---

![image](https://github.com/user-attachments/assets/e0b39da7-2d7e-4c1c-b296-7aed930cf011)

![image](https://github.com/user-attachments/assets/8aaf5f79-ef03-413e-9f21-c97a21448f65)

![image](https://github.com/user-attachments/assets/2bc66083-7be6-464a-8001-88b6eb453de2)

![image](https://github.com/user-attachments/assets/dd27bb95-c1b7-423d-957c-da3a30d8a11a)

--

![image](https://github.com/user-attachments/assets/6e4a44d6-9ac7-4c4a-98ce-56de1fbb62bd)

![image](https://github.com/user-attachments/assets/6992226e-2575-4cb6-91df-66cfb9fa5f74)

![image](https://github.com/user-attachments/assets/b7ef5575-9cae-44fd-8bf1-6178d2ea4d5f)

![image](https://github.com/user-attachments/assets/8a401503-03e9-49cd-a03a-338a2ce1324e)

![image](https://github.com/user-attachments/assets/3177852c-10a1-41b5-9eea-4c523b099e5b)

![image](https://github.com/user-attachments/assets/a5e4c4bf-944e-4249-a722-716d88abfc0c)

![image](https://github.com/user-attachments/assets/f7d91d46-1f0d-40e2-85fc-0ede1b33b5a0)

![image](https://github.com/user-attachments/assets/9a7e931c-bb1a-4e7d-b527-d51d2f8b9544)

rds
![image](https://github.com/user-attachments/assets/f230ea6b-0105-4854-9e27-36d68f6934dd)

![image](https://github.com/user-attachments/assets/1bb4a0b7-6465-44d0-bcd6-431aa18c1595)

![image](https://github.com/user-attachments/assets/1465ae73-1e6d-49ff-b54c-89a413115f84)

![image](https://github.com/user-attachments/assets/12706495-e7c8-4497-bcc2-29c82e3543b6)

sudo su
yum update -y && yum upgrade -y
yum install -y amazon-efs-utils
sudo mount -t efs -o tls fs-0408366d3a57b0fe5:/ /mnt/efs
df -h
