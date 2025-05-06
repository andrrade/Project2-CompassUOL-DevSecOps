<p align="center">
  <img src="https://github.com/user-attachments/assets/48ed9007-ee4e-4836-96af-0f8cf9ed0d81" alt="Img KeyPairs" width="150">
</p>
<br>

# Auto Scaling Group

## Criação do ASG (parte 1)

1. Abra o painel principal da AWS e pesquise por `Auto scaling groups`
2. Clique em `Auto scaling groups`

![image](https://github.com/user-attachments/assets/02d1cf93-a2ac-4149-9b13-2c9f21062117)

## Criação do ASG (parte 2)

1. Clique em `Create Auto Scaling group`

![image](https://github.com/user-attachments/assets/529c97f0-80a9-42cb-9ea9-30e9635d5c11)

## Criação do ASG (parte 3)

> [!NOTE]
> Você pode escolher os nomes que quiser, os que estou deixando documentados foram os que eu usei.

`ASG-Project2`

2. Selecione o template criado nas [etapas anteriores](https://github.com/andrrade/Project2-CompassUOL-DevSecOps/blob/main/03-Projeto/01-Launch-Template/README.md)
3. Em version, selecione a `Default`

![image](https://github.com/user-attachments/assets/d49e2ff6-9b0f-4897-88c7-e635cd632d68)

## Criação do ASG (parte 4)

1. Clique em `Next`

![image](https://github.com/user-attachments/assets/b3857e9c-9361-4736-952b-74cb94bee7f2)

## Criação do ASG (parte 5)

1. Selecione a `VPC` criada nas [etapas anteriores](https://github.com/andrrade/Project2-CompassUOL-DevSecOps/blob/main/02-Dependencias/01-VPC/README.md)

![image](https://github.com/user-attachments/assets/b9285afc-93a1-40fb-ba59-808bbfb99809)

## Criação do ASG (parte 6)

1. Selecione as subnets **privadas**
2. Selecione `Balanced best effort`
3. Clique em `Next`

![image](https://github.com/user-attachments/assets/d067d75f-ee7a-4b79-97ab-30c1cf401a89)

## Criação do ASG (parte 7)

1. Selecione `Attach to an existing load balancer`
2. Selecione `Choose from Classic Load Balancers`
3. Selecione o Load Balancer criado nas [etapas anteriores](https://github.com/andrrade/Project2-CompassUOL-DevSecOps/blob/main/03-Projeto/02-Load-Balancer/README.md)

![image](https://github.com/user-attachments/assets/cb64c89b-bba7-4f5a-a480-886da38b3cdc)

## Criação do ASG (parte 8)

1. Selecione `No VPC Lattice service to attach`

![image](https://github.com/user-attachments/assets/58ae61bf-55fc-4d95-a7b5-bff8f7418fa2)

## Criação do ASG (parte 9)

> [!IMPORTANT]
> Em `Health check grace period` selecione o tempo que desejar, o padrão é 300 segundos

1. Marque o checkbox `Turn on Elastic Load Balancing health checks`
2. Clique em `Next`

![image](https://github.com/user-attachments/assets/73195a47-a105-4f0b-865f-8b51dfa30656)

## Criação do ASG (parte 10)

1. Em `Desired capacity`, coloque `2`
2. Em `Min desired capacity`, coloque `2`
3. Em `Max desired capacity`, coloque `4`
4. Selecione `No scaling polices`

![image](https://github.com/user-attachments/assets/cbb2a6ba-2d0c-42c1-83ee-3432378a29ae)

## Criação do ASG (parte 11)

1. Selecione `No policy`

![image](https://github.com/user-attachments/assets/4804a9fa-abc8-420b-8dc6-666612a1ee71)

## Criação do ASG (parte 12)

1. Marque o checkbox `Enable group metrics collection within CloudWatch`
2. Clique em `Next`

![image](https://github.com/user-attachments/assets/99896581-46ec-4349-9c00-cf17d598dec5)

## Criação do ASG (parte 13)

1. Clique em `Next`

![image](https://github.com/user-attachments/assets/ec6c9a0a-70b8-4018-b2f6-b51959860930)

## Criação do ASG (parte 14)

1. Clique em `Next`

![image](https://github.com/user-attachments/assets/1de55719-5a3f-49a2-97ba-9e6a2bb9f8fe)

## Criação do ASG (parte 15)

1. Clique em `Create Auto Scaling group`

![image](https://github.com/user-attachments/assets/f5846749-c959-4502-a7d8-ab79e6b95515)

## Criação do ASG (parte 16)

![image](https://github.com/user-attachments/assets/deecf1b2-fcc4-4051-9ac1-0ea39354f951)

## Criação do ASG (parte 17)

![image](https://github.com/user-attachments/assets/3c32b063-6d60-4d93-bd1d-18c04f1163cd)

## Criação do ASG (parte 18)

![image](https://github.com/user-attachments/assets/a6a0ee41-c495-4681-a9cb-529942f0fbbf)

## Criação do ASG (parte 19)

![image](https://github.com/user-attachments/assets/e02bb7c0-d2c6-43ec-9a30-a782bfcf4fe1)

## Criação do ASG (parte 20)



![image](https://github.com/user-attachments/assets/f6da86b2-ff12-4e64-ab55-3419d1820a5a)

> [!NOTE]
> Após seguir esses passos, você consegue criar o `Auto Scaling Group` da forma correta!
