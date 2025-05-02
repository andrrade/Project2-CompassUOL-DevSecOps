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






