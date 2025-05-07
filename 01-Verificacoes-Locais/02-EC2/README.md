<p align="center">
  <img src="https://github.com/user-attachments/assets/7e751cd6-6f0b-4b9e-b0e6-4e9c99007643" alt="img EC2" width="250">
</p>
<br>

# Elastic Compute Cloud (EC2)

> [!IMPORTANT]
> Você não precisa seguir esses passos, apenas quis deixar na minha documentação como foi o meu passo a passo para criar o [UserData](https://github.com/andrrade/Project2-CompassUOL-DevSecOps/blob/main/00-Arquivos-do-Projeto/user_data.sh).
>
> Para isso, primeiro subi a instância e executei comando por comando até rodar, depois disso, anotei eles e coloquei no meu [UserData](https://github.com/andrrade/Project2-CompassUOL-DevSecOps/blob/main/00-Arquivos-do-Projeto/user_data.sh), adicionei algumas variáveis para facilitar o uso e funcionou corretamente.

## Criação da EC2 (parte 1)

1. Abra o painel principal da AWS e pesquise por `EC2`

2. Clique em `Instances`:

![image](https://github.com/user-attachments/assets/57cf53dd-ba41-405b-8cb1-02ed0d9ff973)

## Criação da EC2 (parte 2)

1. Clique em `Launch instances`

![image](https://github.com/user-attachments/assets/a8f42042-9f2c-451b-a376-07ff17a43cca)

## Criação da EC2 (parte 3)

1. Coloque as tags necessárias e clique em `Add new tag`

> [!NOTE]
> Por motivos de segurança, não posso mostrá-las

![image](https://github.com/user-attachments/assets/e58acf24-7006-4ed4-a727-7e3216ceff9c)

## Criação da EC2 (parte 4)

1. Selecione a AMI `Amazon Linux`

2. A versão da minha foi a `Amazon Linux 2023 AMI`

![image](https://github.com/user-attachments/assets/aba0a4b7-8a89-4323-ae28-77dbf699da30)

## Criação da EC2 (parte 5)

1. Selecione o tipo `t2.micro`

2. Selecione a `Key pair` criada nas etapas anteriores

![image](https://github.com/user-attachments/assets/c65b014b-1032-4a5c-a991-e4eaabd5db76)

## Criação da EC2 (parte 6)

1. Selecione a `VPC` criada nas etapas anteriores
2. Deixe a Subnet como `public1-us-east-1a`
3. Em Auto-assing public IP deixe como `Enable`

> [!IMPORTANT]
> Só habilitei nesse caso, pois estava usando para testes, depois essa opção não poderá ficar habilitada.

4. Em Firewall, selecione `Select existing security group`

5. Selecione o SG da instância: `ec2_SG`

![image](https://github.com/user-attachments/assets/1465ae73-1e6d-49ff-b54c-89a413115f84)

## Criação da EC2 (parte 7)

1. Verifique se o Configure storage está como `1x8 GiB gp3`

2. Clique em `Launch instance`

![image](https://github.com/user-attachments/assets/12706495-e7c8-4497-bcc2-29c82e3543b6)

> [!NOTE]
> Após seguir esses passos, você consegue criar a `EC2` da forma correta!

> [!NOTE]
> Para testar o UserData eu me conectei na instância via SSH e fui testando os comandos,
só não vou documentar tudo aqui porque todos os comandos utilizados estão no user data.
> Um exemplo dos meus testes:

![img](https://github.com/user-attachments/assets/da5dc2fa-ae7c-437b-a9a5-d705ecda1e50)
