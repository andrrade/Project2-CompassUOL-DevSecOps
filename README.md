> [!WARNING]
> Projeto ainda em andamento

<p align="center">
  <img src="https://github.com/user-attachments/assets/fc8a7bf4-b1bf-45ee-84d0-8ffffbf0cec9" alt="Logo dos Exercícios" width="500">
</p>
<br>

# Avaliação 3 - Wordpress na AWS 🌐☁️

# Sumário 📝

- [1º Teste local](https://github.com/andrrade/Project2-CompassUOL-DevSecOps/blob/main/01-Teste/README.md)

Configurações da minha máquina:
Estou usando o linux pop_OS versão (colocar o nome da versão)
Tenho o rancher desktop instalado
E o docker também

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

![image](https://github.com/user-attachments/assets/d28c5948-55a6-47d6-9ead-6c2af55dac5a)

![image](https://github.com/user-attachments/assets/e0e27d60-bee5-48d8-80c3-6b9115504918)

![image](https://github.com/user-attachments/assets/3bc7db6e-39b2-40a2-9b09-df8630a1fdda)

![image](https://github.com/user-attachments/assets/3f2de36f-dedd-45a5-952f-647c20391c2e)

![image](https://github.com/user-attachments/assets/8ab3e79e-62e5-46b5-820c-c357d3072a68)

![image](https://github.com/user-attachments/assets/7fb908da-8571-4478-8e4e-23f20ada5245)

![image](https://github.com/user-attachments/assets/fded35f3-3812-45a7-afcc-223eaeb2cbe6)

![image](https://github.com/user-attachments/assets/83669a8d-4f2f-4d7e-8b03-bacea74ad829)

![image](https://github.com/user-attachments/assets/3cb7ddaf-7e33-4a71-8a0b-a8468f694170)

![image](https://github.com/user-attachments/assets/169a6d03-4bdf-4bce-b9d5-39a93330c232)


