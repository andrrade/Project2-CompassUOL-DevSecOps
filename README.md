<p align="center">
  <img src="https://github.com/user-attachments/assets/fc8a7bf4-b1bf-45ee-84d0-8ffffbf0cec9" alt="Logo dos Exercícios" width="500">
</p>
<br>

# Avaliação 3 - Wordpress na AWS 🌐☁️

Configurações da minha máquina:
Estou usando o linux pop_OS versão (colocar o nome da versão)
Tenho o rancher desktop instalado
E o docker também

### **O que é o WordPress?**  

O **WordPress** é um sistema de gerenciamento de conteúdo (CMS) gratuito e de código aberto, usado para criar sites, blogs e até lojas virtuais. Ele é **flexível**, com milhares de temas e plugins, e **fácil de usar**, mesmo para quem não sabe programar.  

### **Por que o WordPress Precisa de um Banco de Dados?**  

O WordPress é **dinâmico**, ou seja, ele não armazena páginas em arquivos estáticos, mas sim em um **banco de dados** (como MySQL ou MariaDB). Lá ficam:  
- **Conteúdo** (posts, páginas, comentários)  
- **Configurações** (tema, plugins, usuários)  
- **Estrutura** (menus, widgets)  

**Sem o banco de dados, o WordPress não funciona**, pois não tem onde buscar ou salvar informações.

## Teste 1

Rodar o Wordpress localmente

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

1. Acessar documentação oficial:
https://hub.docker.com/_/wordpress

2. Role a tela e copie esse código

![image](https://github.com/user-attachments/assets/4ac23622-3950-43e1-b991-056657fdcb1f)

![image](https://github.com/user-attachments/assets/af0303ba-51b4-48f6-a655-f4379adee47b)

![image](https://github.com/user-attachments/assets/73d70764-44bc-449a-9a43-cdc4eb6448f6)

![image](https://github.com/user-attachments/assets/bc776630-1cb7-4a19-a3a9-e7ec35d9b5b6)

![image](https://github.com/user-attachments/assets/b74d32cb-69c8-403d-9c04-b4f747d9432c)

![image](https://github.com/user-attachments/assets/da16c74e-238c-4b00-9cc6-7f2b6a443a24)

![image](https://github.com/user-attachments/assets/6e1422a7-aa73-4c95-88ff-d5d1e1ed2433)

![image](https://github.com/user-attachments/assets/336d963f-9f79-4c6d-ad0c-8594f531a509)

![image](https://github.com/user-attachments/assets/a7a25533-7eef-4d0c-9525-cf7a2d614da1)

![image](https://github.com/user-attachments/assets/0ac5f771-c3e4-4c71-a6a8-549329e92637)
