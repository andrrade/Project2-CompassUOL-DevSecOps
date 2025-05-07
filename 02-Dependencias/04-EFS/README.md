<p align="center">
  <img src="https://github.com/user-attachments/assets/549d5055-d9e2-4580-b791-a60c97c1842f" alt="Img EFS" width="150">
</p>
<br>
ERRO NA IMG

# Elastic File System (EFS)

## Criação do EFS (parte 1)

1. Abra o painel principal da AWS e pesquise por `EFS`
2. Clique em `File systems`

![image](https://github.com/user-attachments/assets/4dc1d97f-7bb7-4152-894e-8001b8488a60)

## Criação do EFS (parte 2)

1. Clique em `Create file system`

![image](https://github.com/user-attachments/assets/f7c30818-2e3c-40e1-87ac-9f47beb8c746)

## Criação do EFS (parte 3)

> [!NOTE]
> Você pode escolher os nomes que quiser, os que estou deixando documentados foram os que eu usei.

1. Dê um nome para o file system

`FS-Project2`

2. Selecione a `VPC` criada anteriormente

![image](https://github.com/user-attachments/assets/9aeb86da-4165-4af9-b925-3c070e2f88e1)

3. Clique em `Customize`

## Criação do EFS (parte 4)

1. Confira o nome do seu EFS (se quiser alterar, basta colocar outro nome)

2. Em file system type, selecione `Regional`

3. **Desabilite** o checkbox `Enable automatic backups`

![image](https://github.com/user-attachments/assets/5a006d4c-87e8-4015-8bb0-c584614c441a)

## Criação do EFS (parte 5)

1. Selecione `None`
2. Selecione `None`

![image](https://github.com/user-attachments/assets/c0dfaabf-74e5-4d31-9134-c0e01a28b8e4)

## Criação do EFS (parte 6)

1. Em throughput mode, selecione `Bursting`

2. Em performance mode, selecione `General Purpose (Recommended)

![image](https://github.com/user-attachments/assets/1c8396ef-132b-40f3-8c49-7d3b7fcc7bcf)


## Criação do EFS (parte 7)

1. Coloque tags, se quiser, e clique em next

> [!NOTE]
> Eu optei por não colocar.

![image](https://github.com/user-attachments/assets/1304c264-0311-45ae-b421-41b0511f7d16)

## Criação do EFS (parte 8)

> [!IMPORTANT]
> Nesse passo, não se esqueça que você deve selecionar as subnets **privadas**

1. Selecione a `VPC` criada anteriormente
2. Selecione `us-east-1a`   
3. Selecione a subnet privada da us-east-1a
4. Escolha o SG do EFS: `efs_SG`
5. Selecione `us-east-1b`
6. Selecione a subnet privada da us-east-1b
7. Escolha o SG do EFS: `efs_SG`
8. Clique em `next`

![image](https://github.com/user-attachments/assets/1bb4a0b7-6465-44d0-bcd6-431aa18c1595)

## Criação do EFS (parte 9)

1. Coloque políticas, se quiser, e clique em next

> [!NOTE]
> Eu optei por não colocar.

![image](https://github.com/user-attachments/assets/96cef37c-d9c9-4215-9895-b9299b2cd7a5)

## Criação do EFS (parte 10)

1. Na página que abrir, só clique em next

![image](https://github.com/user-attachments/assets/395cdbd5-63a5-4e9c-ae29-4c271e7dd980)

## Criação do EFS (parte 11)

1. Em `File systems`, verifique o ID e guarde-o

> [!IMPORTANT]
> Isso será uma informação crucial que você deverá utilizar no UserData, então não se esqueça de anotar esse ID!

![image](https://github.com/user-attachments/assets/e1a3bad4-060d-4cef-9ee0-25023babcde2)

> [!NOTE]
> Após seguir esses passos, você consegue criar o EFS da forma correta!