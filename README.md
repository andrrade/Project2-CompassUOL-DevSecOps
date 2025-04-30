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

![image](https://github.com/user-attachments/assets/b02aba45-030a-4b66-b464-6587a74b6770)

![image](https://github.com/user-attachments/assets/a97fb132-10c3-4d6d-966f-1d7ba8b96a6f)

![image](https://github.com/user-attachments/assets/adae238c-2760-404d-a026-494316c1c806)

![image](https://github.com/user-attachments/assets/dc6ab432-3da0-4c49-8856-f3e1614568cf)

![image](https://github.com/user-attachments/assets/fc4ad4bd-5612-49d3-9b77-c8eb242b8e8d)

![image](https://github.com/user-attachments/assets/728e5464-8e9c-408b-a1e8-504685be4c9a)

![image](https://github.com/user-attachments/assets/6aeea532-2c83-4334-bb55-a812fb6b4bc4)

![image](https://github.com/user-attachments/assets/ff072b28-5007-4791-bdff-9710d660bffb)

![image](https://github.com/user-attachments/assets/1c61d783-468f-4cc6-a403-a06de00ba160)

![image](https://github.com/user-attachments/assets/db7fd2b4-4a64-416a-818b-4450c9f9148f)

![image](https://github.com/user-attachments/assets/db4a7754-0703-4877-ad36-e383dfa4ffb5)

![image](https://github.com/user-attachments/assets/5ed89864-14df-4929-8c28-120454c16ae0)

![image](https://github.com/user-attachments/assets/d0000921-daa1-4a71-a1f1-78994b387a70)



