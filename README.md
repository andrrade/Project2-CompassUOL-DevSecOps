![image](https://github.com/user-attachments/assets/4b6f93ea-ddeb-49a0-a13b-6735163f5f7e)> [!WARNING]
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

# VPC

![image](https://github.com/user-attachments/assets/8316e4b2-504e-47d1-adee-1d397706c281)

![image](https://github.com/user-attachments/assets/0acc30f5-9cfc-44ae-805c-721f32004aaf)

![image](https://github.com/user-attachments/assets/3e4a19e6-ccc5-4623-a14c-084815dcf988)

![image](https://github.com/user-attachments/assets/63bfacac-c7d0-4c92-be1e-14eb63b40f4e)

![image](https://github.com/user-attachments/assets/6385e623-d80b-4a78-a37c-834f5fab1d61)

![image](https://github.com/user-attachments/assets/97a23f6f-1d1a-4bde-9e47-aaf71d3dca05)

![image](https://github.com/user-attachments/assets/47cfcd9a-b90c-4808-836e-37d324c5509d)

---

# SG

![image](https://github.com/user-attachments/assets/13e8b4fc-7c49-4176-be81-09a8e2158da2)

![image](https://github.com/user-attachments/assets/ec455d28-ee7d-4494-b155-69075d001be2)



**CONFIGURAÇÃO DO SECURITY GROUP EC2 PÚBLICO**

INBOUND RULES:
<table>
  
  <thead>
    <tr>
      <th>TIPO
      </th>
      <th>
        INTERVALO DE PORTAS
      </th>
      <th>
        ORIGEM
      </th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>SHH</td>
      <td>22</td>
      <td>Meu IP</td>
    </tr>
    <tr>
      <td>HTTP</td>
      <td>80</td>
      <td>0.0.0.0/0</td>
    </tr>
  </table>

OUTBOUND RULES:


<table>
  
  <thead>
    <tr>
      <th>TIPO
      </th>
      <th>
        INTERVALO DE PORTAS
      </th>
      <th>
        ORIGEM
      </th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Todo o tráfego</td>
      <td>Tudo</td>
      <td>0.0.0.0/0</td>
    </tr>
  </tbody>
</table>
  
 <hr>
      
**CONFIGURAÇÃO DO SECURITY GROUP EC2 PRIVADO**  


INBOUND RULES:
<table>
  
  <thead>
    <tr>
      <th>TIPO
      </th>
      <th>
        INTERVALO DE PORTAS
      </th>
      <th>
        ORIGEM
      </th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>SHH</td>
      <td>22</td>
      <td>Security Group da EC2 Pública</td>
    </tr>
    <tr>
      <td>NFS</td>
      <td>2049</td>
      <td>Security Group do EFS</td>
    </tr>
    <tr>
      <td>HTTP</td>
      <td>80</td>
      <td>Security Group do ELB</td>
    </tr>
    <tr>
      <td>MYSQL/Aurora</td>
      <td>3306</td>
      <td>Security Group do RDS</td>
    </tr>
  </tbody>
</table>


OUTBOUND RULES:


<table>
  
  <thead>
    <tr>
      <th>TIPO
      </th>
      <th>
        INTERVALO DE PORTAS
      </th>
      <th>
        ORIGEM
      </th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>HTTP</td>
      <td>80</td>
      <td>0.0.0.0/0</td>
    </tr>
    <tr>
      <td>MYSQL/Aurora</td>
      <td>3306</td>
      <td>Security Group do RDS</td>
    </tr>
    <tr>
      <td>NFS</td>
      <td>2049</td>
      <td>Security Group do EFS</td>
    </tr>
    <tr>
      <td>Todo o tráfego</td>
      <td>Tudo</td>
      <td>0.0.0.0/0</td>
    </tr>
  </tbody>
</table>
</br>
<hr>
<b>CONFIGURAÇÃO DO SECURITY GROUP DA RDS: </b>
<br>

INBOUND RULES:


<table>
  <thead>
    <tr>
      <th>TIPO
      </th>
      <th>
        INTERVALO DE PORTAS
      </th>
      <th>
        ORIGEM
      </th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>MYSQL/Aurora</td>
      <td>3306</td>
      <td>Security Group da EC2</td>
    </tr>
  </tbody>
</table>


OUTBOUND RULES:


<table>
  <thead>
    <tr>
      <th>TIPO
      </th>
      <th>
        INTERVALO DE PORTAS
      </th>
      <th>
        ORIGEM
      </th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Todo o tráfego</td>
      <td>Todas</td>
      <td>0.0.0.0/0</td>
    </tr>
  </tbody>
</table>
</br>
<hr>
<b>CONFIGURAÇÃO DO SECURITY GROUP DA EFS: </b></br>


INBOUND RULES:


<table>
  <thead>
    <tr>
      <th>TIPO
      </th>
      <th>
        INTERVALO DE PORTAS
      </th>
      <th>
        ORIGEM
      </th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>NFS</td>
      <td>2049</td>
      <td>Security Group da EC2</td>
    </tr>
  </tbody>
</table>


OUTBOUND RULES:


<table>
  <thead>
    <tr>
      <th>TIPO
      </th>
      <th>
        INTERVALO DE PORTAS
      </th>
      <th>
        ORIGEM
      </th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Todo o tráfegos</td>
      <td>Todas</td>
      <td>0.0.0.0/0</td>
    </tr>
  </tbody>
</table>
<hr>
<b>CONFIGURAÇÃO DO SECURITY GROUP DA ELB: </b></br>


INBOUND RULES:


<table>
  <thead>
    <tr>
      <th>TIPO
      </th>
      <th>
        INTERVALO DE PORTAS
      </th>
      <th>
        ORIGEM
      </th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>HTTP</td>
      <td>80</td>
      <td>0.0.0.0/0</td>
    </tr>
  </tbody>
</table>


OUTBOUND RULES:


<table>
  <thead>
    <tr>
      <th>TIPO
      </th>
      <th>
        INTERVALO DE PORTAS
      </th>
      <th>
        ORIGEM
      </th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>HTTP</td>
      <td>80</td>
      <td>0.0.0.0/0</td>
    </tr>
  </tbody>
</table>
<hr>

![image](https://github.com/user-attachments/assets/cdd1f5f1-964c-4d7b-b73c-f52b06d87157)

![image](https://github.com/user-attachments/assets/066ac162-be6c-4b64-975a-e536dc58d2fe)

![image](https://github.com/user-attachments/assets/410b4146-982e-4550-884f-5aa1d1774ffc)

![image](https://github.com/user-attachments/assets/0e6e5606-187c-4f56-bb2e-d7b007d595a8)

![image](https://github.com/user-attachments/assets/e39fdbfb-dacf-4e02-b8fa-4819cc820294)

![image](https://github.com/user-attachments/assets/1ad457d8-aaee-45c9-998e-22a2941a2329)

![image](https://github.com/user-attachments/assets/05f303ba-a59d-454c-8540-c3b084add7c2)

![image](https://github.com/user-attachments/assets/5f246352-1646-4af6-ac44-23f28c104ab9)



