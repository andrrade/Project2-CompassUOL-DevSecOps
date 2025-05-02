<p align="center">
  <img src="https://github.com/user-attachments/assets/20b848cd-1a4d-48e3-998a-2692046a21ff" alt="Img VPC" width="300">
</p>
<br>

# Relational Database Services (RDS)

## Criação do BD (parte 1)

1. Abra o painel principal da AWS e pesquise por `RDS`
2. Clique em `Databases`

![image](https://github.com/user-attachments/assets/d28c5948-55a6-47d6-9ead-6c2af55dac5a)

## Criação do BD (parte 2)

1. Clique em `Create Database`

![image](https://github.com/user-attachments/assets/e0e27d60-bee5-48d8-80c3-6b9115504918)

## Criação do BD (parte 3)

1. Selecione `Standart create`
2. Selecione `MySQL`

![image](https://github.com/user-attachments/assets/3bc7db6e-39b2-40a2-9b09-df8630a1fdda)

## Criação do BD (parte 4)

1. Em engine version selecione a mais recente, no meu caso foi a `MySQL 8.4.5`

![image](https://github.com/user-attachments/assets/ed41a837-d5a7-4f83-919b-053de0d63c04)

## Criação do BD (parte 5)

1. Selecione `Free tier` 

![image](https://github.com/user-attachments/assets/8ab3e79e-62e5-46b5-820c-c357d3072a68)

## Criação do BD (parte 6)

1. Selecione `Single-AZ DB instance deployment (1 instance)

![image](https://github.com/user-attachments/assets/7fb908da-8571-4478-8e4e-23f20ada5245)

## Criação do BD (parte 7)

1. Dê um nome para a instância de Banco de Dados
2. Dê um nome de usuário
3. Selecione `Self managed`
4. Crie uma senha forte
5. Repita a senha criada

> [!NOTE]
> Lembre-se de guardar essas informações

![image](https://github.com/user-attachments/assets/fded35f3-3812-45a7-afcc-223eaeb2cbe6)

## Criação do BD (parte 8)

1. Selecione a instância `db.t3.micro`

![image](https://github.com/user-attachments/assets/83669a8d-4f2f-4d7e-8b03-bacea74ad829)

## Criação do BD (parte 9)

1. Selecione `gp3`
2. Deixe como `20`
3. Habilite o autoscaling
4. Deixe como `25`

![image](https://github.com/user-attachments/assets/3cb7ddaf-7e33-4a71-8a0b-a8468f694170)

## Criação do BD (parte 10)

1. Selecione `Don't connect to an EC2 compute resource`
2. Selecione `IPv4`
3. Selecione a VPC criada nas etapas anteriores
4. Selecione `Create new DB Subnet Group`

![image](https://github.com/user-attachments/assets/169a6d03-4bdf-4bce-b9d5-39a93330c232)

## Criação do BD (parte 11)

1. Selecione `No`
2. Selecione `Choose existing`
3. Selecione o security group do banco de dados: `rds-sg`
4. Selecione `No preference`
5. Selecione o `default`

![image](https://github.com/user-attachments/assets/87dc1cc0-cb04-48a4-a743-38a4084fc37c)

## Criação do BD (parte 12)

1. Deixe a porta como `3306`
2. Selecione `Password authentication`
3. Selecione `Database Insights - Standard`

![image](https://github.com/user-attachments/assets/1a076a55-53e8-4416-9436-5b1c902baa3a)

## Criação do BD (parte 13)

1. Dê um nome para o seu banco de dados

> [!IMPORTANT]
> Isso é crucial para evitar erros!

2. Desabilite o backup automático

> [!IMPORTANT]
> É sempre importante evitar gastos desnecessários para esse projeto

![image](https://github.com/user-attachments/assets/4af8ad2f-e55f-4288-833a-15de4cfd36c9)

## Criação do BD (parte 14)

1. Clique em `Create database`

![image](https://github.com/user-attachments/assets/2adf4f5f-44b2-4dd5-a412-0456c4f04254)
