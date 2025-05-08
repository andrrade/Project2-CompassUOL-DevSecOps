<p align="center">
  <img src="https://github.com/user-attachments/assets/fc8a7bf4-b1bf-45ee-84d0-8ffffbf0cec9" alt="Logo dos Exercícios" width="400">
</p>
<br>

<div align="center">
  <a href="https://skillicons.dev">
    <img src="https://skillicons.dev/icons?i=aws,linux,docker,wordpress" alt="My Skills" />
  </a>
</div>

# Avaliação 3 - Wordpress na AWS 🌐☁️

# Sumário 📝

- [Arquivos do Projeto](https://github.com/andrrade/Project2-CompassUOL-DevSecOps/tree/main/00-Arquivos-do-Projeto)
  - [Enunciado](https://github.com/andrrade/Project2-CompassUOL-DevSecOps/blob/main/00-Arquivos-do-Projeto/Enunciado-Projeto2.pdf)
  - [Imagem da Arquitetura](https://github.com/andrrade/Project2-CompassUOL-DevSecOps/blob/main/00-Arquivos-do-Projeto/arquitetura.png)
  - [User Data](https://github.com/andrrade/Project2-CompassUOL-DevSecOps/blob/main/00-Arquivos-do-Projeto/user_data.sh)
- [Verificações Locais](https://github.com/andrrade/Project2-CompassUOL-DevSecOps/tree/main/01-Verificacoes-Locais)
  - [Wordpress](https://github.com/andrrade/Project2-CompassUOL-DevSecOps/blob/main/01-Verificacoes-Locais/01-Wordpress/README.md)
  - [Elastic Compute Cloud (EC2)](https://github.com/andrrade/Project2-CompassUOL-DevSecOps/blob/main/01-Verificacoes-Locais/02-EC2/README.md)
- [Dependências](https://github.com/andrrade/Project2-CompassUOL-DevSecOps/tree/main/02-Dependencias)
  - [Virtual Private Cloud (VPC)](https://github.com/andrrade/Project2-CompassUOL-DevSecOps/blob/main/02-Dependencias/01-VPC/README.md)
  - [Security Groups (SG)](https://github.com/andrrade/Project2-CompassUOL-DevSecOps/blob/main/02-Dependencias/02-Security-Group/README.md)
  - [Relational Database Services (RDS)](https://github.com/andrrade/Project2-CompassUOL-DevSecOps/blob/main/02-Dependencias/03-Banco-de-Dados-RDS/README.md)
  - [Elastic File System (EFS)](https://github.com/andrrade/Project2-CompassUOL-DevSecOps/blob/main/02-Dependencias/04-EFS/README.md)
  - [Key Pairs (KP)](https://github.com/andrrade/Project2-CompassUOL-DevSecOps/blob/main/02-Dependencias/05-Key-pairs/README.md)
- [Projeto](https://github.com/andrrade/Project2-CompassUOL-DevSecOps/tree/main/03-Projeto)
  - [Launch Template (LT)](https://github.com/andrrade/Project2-CompassUOL-DevSecOps/blob/main/03-Projeto/01-Launch-Template/README.md)
  - [Load Balancer (LB)](https://github.com/andrrade/Project2-CompassUOL-DevSecOps/blob/main/03-Projeto/02-Load-Balancer/README.md)
  - [Auto Scaling Group (ASG)](https://github.com/andrrade/Project2-CompassUOL-DevSecOps/blob/main/03-Projeto/03-Auto-Scaling-Group/README.md)
- [Extra - Cloud Watch (CW)](https://github.com/andrrade/Project2-CompassUOL-DevSecOps/blob/main/04-Extra-Cloud-Watch/README.md)
- [Testes](https://github.com/andrrade/Project2-CompassUOL-DevSecOps/blob/main/05-Testes/README.md)
- [Minha Apresentacao](https://github.com/andrrade/Project2-CompassUOL-DevSecOps/blob/main/06-Minha-Apresentacao/README.md)

---

## 🛠️ Configuração do Ambiente

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

> [!NOTE]
> Fiz um desenho nos Security Groups, e para isso utilizei a ferramenta [tldraw](https://www.tldraw.com)

---

Imagem de referência que está no enunciado: 

![img](https://github.com/user-attachments/assets/295c7f18-59a5-4291-8551-958e65352d1b)

<p align="center">
  <br>
  <img src="https://github.com/user-attachments/assets/79a2e995-a1be-4192-9ded-771004ef7417" alt="CompassUOL Logo" width="250">
</p>
