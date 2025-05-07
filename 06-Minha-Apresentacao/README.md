<p align="center">
  <img src="https://github.com/user-attachments/assets/1e78298b-42fc-45e2-b5c9-41b5fcdc34ad" alt="Img Apresentacao" width="150">
</p>
<br>

# Apresentação

> [!NOTE]
> Criei esse arquivo onde vou colocar as principais informações e documentar as
principais partes do projeto

## Pontos para apresentação
- [X] **Mostrar que acesso as instâncias pelo DNS do LB**
- [X] **Mostrar o Wordpress Funcionando**
- [X] [**Script UserData**](https://github.com/andrrade/Project2-CompassUOL-DevSecOps/blob/main/00-Arquivos-do-Projeto/user_data.sh)
- [X] [**Mostrar vídeo do Auto Scaling Groups**](https://github.com/user-attachments/assets/a5f938a2-d8f9-4d12-8c54-6b1a91a5c896)
- [X] **Cloud Watch**
- [X] **VPC**
- [X] **Mostrar Security Groups**

## 1. `ec2_SG` (Instâncias EC2 - WordPress - Subnet Privada)

#### 📥 **INBOUND RULES**

| Tipo         | Porta | Origem              | Motivo                                |
| ------------ | ----- | ------------------- | ------------------------------------- |
| SSH          | 22    | Seu IP (ou Bastion) | Acesso para manutenção                |
| HTTP         | 80    | `lb_SG`             | Receber tráfego do Load Balancer      |
| NFS          | 2049  | `efs_SG`            | Montagem do EFS                       |

#### 📤 **OUTBOUND RULES**

| Tipo        | Porta | Destino               | Motivo                                        |
| ----------- | ----- | --------------------- | --------------------------------------------- |
| All traffic | All   | `0.0.0.0/0` (via NAT) | Baixar pacotes, updates, conectar ao RDS, etc |

## 2. `rds_SG` (RDS - Banco de Dados - Subnet Privada)

#### 📥 **INBOUND RULES**

| Tipo         | Porta | Origem                  | Motivo                       |
| ------------ | ----- | ----------------------- | ---------------------------- |
| MySQL/Aurora | 3306  | `ec2_SG`                | Permitir acesso do WordPress |

#### 📤 **OUTBOUND RULES**

| Tipo         | Porta | Destino                 | Motivo                                                          |
| ------------ | ----- | ----------------------- | --------------------------------------------------------------- |
| MySQL/Aurora | 3306  | `ec2_SG` | Responder requisições (por boas práticas, mesmo sendo stateful) |

## 3. `efs_SG` (EFS - Subnet Privada)

#### 📥 **INBOUND RULES**

| Tipo | Porta | Origem                  | Motivo                    |
| ---- | ----- | ----------------------- | ------------------------- |
| NFS  | 2049  | `ec2_SG`                | Permitir montagem via NFS |

#### 📤 **OUTBOUND RULES**

| Tipo | Porta | Destino                 | Motivo                   |
| ---- | ----- | ----------------------- | ------------------------ |
| NFS  | 2049  | `ec2_SG`                | Comunicação bidirecional |

## 4. `lb_SG` (Classic Load Balancer - Subnet Pública)

#### 📥 **INBOUND RULES**

| Tipo | Porta | Origem    | Motivo                      |
| ---- | ----- | --------- | --------------------------- |
| HTTP | 80    | 0.0.0.0/0 | Receber tráfego da internet |

#### 📤 **OUTBOUND RULES**

| Tipo | Porta | Destino                 | Motivo                           |
| ---- | ----- | ----------------------- | -------------------------------- |
| HTTP | 80    | `ec2_SG`                | Encaminhar requisições para EC2s |

<img width="948" alt="sg" src="https://github.com/user-attachments/assets/c981e0b2-9c73-4751-8606-8cdf477d803d" />
