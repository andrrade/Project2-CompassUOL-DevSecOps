<p align="center">
  <img src="https://github.com/user-attachments/assets/2937f94e-9467-44f1-a972-69055ae2aa01" alt="Img VPC" width="150">
</p>
<br>

# Security Groups (SG)

> [!NOTE]
> Criaremos 4 Security Groups:
>
> 1. Instâncias EC2
> 
> 2. Banco de Dados
> 
> 3. Elastic File System
> 
> 4. Load Balancer

Como irá funcionar os security groups:

<img width="948" alt="sg" src="https://github.com/user-attachments/assets/c981e0b2-9c73-4751-8606-8cdf477d803d" />

## Criação de SGs (parte 1)

1. Abra o painel principal da AWS e pesquise por `Security groups`

2. Clique em `Security groups`

![image](https://github.com/user-attachments/assets/13e8b4fc-7c49-4176-be81-09a8e2158da2)

## Criação de SGs (parte 2)

1. Clique em `Create security groups`

![image](https://github.com/user-attachments/assets/ec455d28-ee7d-4494-b155-69075d001be2)

## Criação de SGs (parte 3) - EC2

> [!IMPORTANT]
> Não foi mostrado nos prints, mas na criação dos security groups, clique em `delete` para remover todas
as regras já existentes, isso será importante para os próximos passos.

> [!NOTE]
> Você pode escolher os nomes que quiser, os que estou deixando documentados foram os que eu usei.

> [!NOTE]
> Esse é o Security Group das Instâncias EC2 para:

1. Dê um nome para o security group

`ec2_SG`

2. Dê uma descrição
   
`ec2`

4. Selecione a VPC criada nos passos anteriores

![ec2](https://github.com/user-attachments/assets/e0b39da7-2d7e-4c1c-b296-7aed930cf011)

## Criação de SGs (parte 4)

1. Clique em `Create security group`

![image](https://github.com/user-attachments/assets/066ac162-be6c-4b64-975a-e536dc58d2fe)

## Criação de SGs (parte 5) - RDS

> [!NOTE]
> Esse é o Security Group do Banco de Dados

1. Dê um nome para o security group

`rds_SG`

2. Dê uma descrição
   
`rds`

4. Selecione a VPC criada nos passos anteriores

5. Clique em `Create security group`

![rds](https://github.com/user-attachments/assets/8aaf5f79-ef03-413e-9f21-c97a21448f65)

## Criação de SGs (parte 6) - EFS

> [!NOTE]
> Esse é o Security Group do Elastic File System

1. Dê um nome para o security group

`efs_SG`

2. Dê uma descrição

`efs`

3. Selecione a VPC criada nos passos anteriores

4. Clique em `Create security group`

![efs](https://github.com/user-attachments/assets/2bc66083-7be6-464a-8001-88b6eb453de2)

## Criação de SGs (parte 7) - ELB

> [!NOTE]
> Esse é o Security Group do Load Balancer

1. Dê um nome para o security group

`lb_SG`

2. Dê uma descrição

`lb`

3. Selecione a VPC criada nos passos anteriores

4. Clique em `Create security group`

![lb](https://github.com/user-attachments/assets/dd27bb95-c1b7-423d-957c-da3a30d8a11a)

## Criação de SGs (parte 8)

1. No dashboard de security groups, na lupa de pesquisas procure pelos nomes que você deu na criação dos SGs

2. Clique no ID do sg

IMAGEM PESQUISANDO O NOME DO SG

## Criação de SGs (parte 9)

1. Em inbound rules, clique em `Edit inbound rules`

![image](https://github.com/user-attachments/assets/5f246352-1646-4af6-ac44-23f28c104ab9)

> [!IMPORTANT]
> E para as outbounds rules, clique em `Edit outbound rules`

![image](https://github.com/user-attachments/assets/dc6ab432-3da0-4c49-8856-f3e1614568cf)

## Criação de SGs (parte 10)

## 1. `ec2_SG` (Instâncias EC2 - WordPress - Subnet Privada)

#### 📥 **INBOUND RULES**

| Tipo         | Porta | Origem              | Motivo                                |
| ------------ | ----- | ------------------- | ------------------------------------- |
| SSH          | 22    | Seu IP (ou Bastion) | Acesso para manutenção                |
| HTTP         | 80    | `lb_SG`             | Receber tráfego do Load Balancer      |
| NFS          | 2049  | `efs_SG`            | Montagem do EFS                       |

![image](https://github.com/user-attachments/assets/6e4a44d6-9ac7-4c4a-98ce-56de1fbb62bd)

#### 📤 **OUTBOUND RULES**

| Tipo        | Porta | Destino               | Motivo                                        |
| ----------- | ----- | --------------------- | --------------------------------------------- |
| All traffic | All   | `0.0.0.0/0` (via NAT) | Baixar pacotes, updates, conectar ao RDS, etc |

![image](https://github.com/user-attachments/assets/6992226e-2575-4cb6-91df-66cfb9fa5f74)

---

## 2. `rds_SG` (RDS - Banco de Dados - Subnet Privada)

#### 📥 **INBOUND RULES**

| Tipo         | Porta | Origem                  | Motivo                       |
| ------------ | ----- | ----------------------- | ---------------------------- |
| MySQL/Aurora | 3306  | `ec2_SG`                | Permitir acesso do WordPress |

![image](https://github.com/user-attachments/assets/b7ef5575-9cae-44fd-8bf1-6178d2ea4d5f)

#### 📤 **OUTBOUND RULES**

| Tipo         | Porta | Destino                 | Motivo                                                          |
| ------------ | ----- | ----------------------- | --------------------------------------------------------------- |
| MySQL/Aurora | 3306  | `ec2_SG` | Responder requisições (por boas práticas, mesmo sendo stateful) |

![image](https://github.com/user-attachments/assets/8a401503-03e9-49cd-a03a-338a2ce1324e)

---

## 3. `efs_SG` (EFS - Subnet Privada)

#### 📥 **INBOUND RULES**

| Tipo | Porta | Origem                  | Motivo                    |
| ---- | ----- | ----------------------- | ------------------------- |
| NFS  | 2049  | `ec2_SG`                | Permitir montagem via NFS |

![image](https://github.com/user-attachments/assets/3177852c-10a1-41b5-9eea-4c523b099e5b)

#### 📤 **OUTBOUND RULES**

| Tipo | Porta | Destino                 | Motivo                   |
| ---- | ----- | ----------------------- | ------------------------ |
| NFS  | 2049  | `ec2_SG`                | Comunicação bidirecional |

![image](https://github.com/user-attachments/assets/a5e4c4bf-944e-4249-a722-716d88abfc0c)
---

## 4. `lb_SG` (Classic Load Balancer - Subnet Pública)

#### 📥 **INBOUND RULES**

| Tipo | Porta | Origem    | Motivo                      |
| ---- | ----- | --------- | --------------------------- |
| HTTP | 80    | 0.0.0.0/0 | Receber tráfego da internet |

![image](https://github.com/user-attachments/assets/f7d91d46-1f0d-40e2-85fc-0ede1b33b5a0)

#### 📤 **OUTBOUND RULES**

| Tipo | Porta | Destino                 | Motivo                           |
| ---- | ----- | ----------------------- | -------------------------------- |
| HTTP | 80    | `ec2_SG`                | Encaminhar requisições para EC2s |

![image](https://github.com/user-attachments/assets/9a7e931c-bb1a-4e7d-b527-d51d2f8b9544)

> [!NOTE]
> Após seguir esses passos, você consegue criar os security groups da forma correta!
