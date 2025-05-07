<p align="center">
  <img src="https://github.com/user-attachments/assets/6ab9b9f1-fd51-4c5b-8a2b-114083bcf2a7" alt="Img ASG" width="150">
</p>
<br>

# Auto Scaling Group

## Criação do ASG (parte 1)

1. Abra o painel principal da AWS e pesquise por `Auto scaling groups`
2. Clique em `Auto scaling groups`

![img](https://github.com/user-attachments/assets/d8ee1450-4d1c-42e5-934d-60f405ae0ec5)

## Criação do ASG (parte 2)

1. Clique em `Create Auto Scaling group`

![img](https://github.com/user-attachments/assets/d0e3a56d-f725-4f93-b20f-ab6c6ddb1d5e)

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

> [!NOTE]
> Após seguir esses passos, você consegue criar o `Auto Scaling Group` da forma correta
