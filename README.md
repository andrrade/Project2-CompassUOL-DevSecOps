> [!WARNING]
> Projeto ainda em andamento

> [!NOTE]
> ELB
> 
> ASG
> 
> TESTES

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



---
EC2
apagar instancia
key pairs
lb

efs

VPC
nategateways
subnets
route tables
internet gateway - detach e delete

rds
snapshot

vpc - subnet
route tables
vpc
elastic ip



sudo su
yum update -y && yum upgrade -y
yum install -y amazon-efs-utils
sudo mount -t efs -o tls fs-0408366d3a57b0fe5:/ /mnt/efs
df -h

---

LAUNCH TEMPLATE
![image](https://github.com/user-attachments/assets/c3fb650c-19e5-4ea4-a38f-1d2d21c7915b)
![image](https://github.com/user-attachments/assets/0e9a0062-8fd5-48a9-aacd-73144718a155)
![image](https://github.com/user-attachments/assets/ebc0f591-b28b-4486-8e82-8a41dc31d04d)
![image](https://github.com/user-attachments/assets/db902fa7-2eaa-40c6-975d-f31a040fd340)
![image](https://github.com/user-attachments/assets/e15e79c4-7494-4a77-ac35-6747e0ad4999)
![image](https://github.com/user-attachments/assets/beb22991-f4ad-4b26-85d7-02afc7b0dba9)

LB
![image](https://github.com/user-attachments/assets/82bb2ee7-2103-457f-8774-ce70b3596dd6)
![image](https://github.com/user-attachments/assets/eae02eb2-f122-4f3d-a2d2-357a12821839)
![image](https://github.com/user-attachments/assets/164b5590-a62e-4d4c-bfd0-6561dbc76142)
![image](https://github.com/user-attachments/assets/9176d4ec-53e6-45af-a360-15fce6c2091e)
![image](https://github.com/user-attachments/assets/4d1345bb-f92a-4055-af70-7687b0ebd690)
![image](https://github.com/user-attachments/assets/fc35b139-3d9c-4169-b6f1-088c3bd03408)

ASG
![image](https://github.com/user-attachments/assets/d49e2ff6-9b0f-4897-88c7-e635cd632d68)
![image](https://github.com/user-attachments/assets/b3857e9c-9361-4736-952b-74cb94bee7f2)
![image](https://github.com/user-attachments/assets/b9285afc-93a1-40fb-ba59-808bbfb99809)
![image](https://github.com/user-attachments/assets/d067d75f-ee7a-4b79-97ab-30c1cf401a89)
![image](https://github.com/user-attachments/assets/cb64c89b-bba7-4f5a-a480-886da38b3cdc)
![image](https://github.com/user-attachments/assets/58ae61bf-55fc-4d95-a7b5-bff8f7418fa2)
![image](https://github.com/user-attachments/assets/73195a47-a105-4f0b-865f-8b51dfa30656)
![image](https://github.com/user-attachments/assets/cbb2a6ba-2d0c-42c1-83ee-3432378a29ae)
![image](https://github.com/user-attachments/assets/4804a9fa-abc8-420b-8dc6-666612a1ee71)
![image](https://github.com/user-attachments/assets/99896581-46ec-4349-9c00-cf17d598dec5)
![image](https://github.com/user-attachments/assets/ec6c9a0a-70b8-4018-b2f6-b51959860930)
![image](https://github.com/user-attachments/assets/1de55719-5a3f-49a2-97ba-9e6a2bb9f8fe)
![image](https://github.com/user-attachments/assets/f5846749-c959-4502-a7d8-ab79e6b95515)
![image](https://github.com/user-attachments/assets/deecf1b2-fcc4-4051-9ac1-0ea39354f951)
![image](https://github.com/user-attachments/assets/3c32b063-6d60-4d93-bd1d-18c04f1163cd)
![image](https://github.com/user-attachments/assets/a6a0ee41-c495-4681-a9cb-529942f0fbbf)
![image](https://github.com/user-attachments/assets/e02bb7c0-d2c6-43ec-9a30-a782bfcf4fe1)
![image](https://github.com/user-attachments/assets/f6da86b2-ff12-4e64-ab55-3419d1820a5a)




