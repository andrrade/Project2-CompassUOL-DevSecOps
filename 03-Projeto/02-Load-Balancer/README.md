<p align="center">
  <img src="https://github.com/user-attachments/assets/ebd86139-6f74-4058-92a4-014b3f4cdba7" alt="Img LoadBalancer" width="150">
</p>
<br>
ERRO NA IMG

# Load Balancer

## Criação do LB (parte 1)

1. Abra o painel principal da AWS e pesquise por `Load Balancers`
2. Clique em `Load balancers`

![image](https://github.com/user-attachments/assets/d193c438-df73-4f10-af3a-cb5e1087c79e)
ERRO NA IMG

## Criação do LB (parte 2)

1. Clique em `Create load balancer`

![image](https://github.com/user-attachments/assets/e3228b75-495e-40a4-a09e-d7b4325128f6)
ERRO NA IMG

## Criação do LB (parte 3)

1. Clique na setinha em `Classic Load Balancer - previous generation`

`Classic Load Balancer`

2. Clique em `Create`

![image](https://github.com/user-attachments/assets/f31c36d1-2606-4569-9f64-a45b7f5d1e54)
ERRO NA IMG

## Criação do LB (parte 4)

> [!NOTE]
> Você pode escolher os nomes que quiser, os que estou deixando documentados foram os que eu usei.

1. Dê um nome para o load balancer

`lb-project2`

![image](https://github.com/user-attachments/assets/82bb2ee7-2103-457f-8774-ce70b3596dd6)

## Criação do LB (parte 5)

1. Em scheme, selecione `Internet-facing`
2. Em `VPC`, selecione a que foi criada nas [etapas anteriores](https://github.com/andrrade/Project2-CompassUOL-DevSecOps/blob/main/02-Dependencias/01-VPC/README.md)

![image](https://github.com/user-attachments/assets/eae02eb2-f122-4f3d-a2d2-357a12821839)

## Criação do LB (parte 6)

1. Marque o checkbox da `us-east-1a`
2. Marque o checkbox da `us-east-1b`
3. Selecione a subnet **pública** da `us-east-1a`
4. Selecione a subnet **pública** da `us-east-1b`

![image](https://github.com/user-attachments/assets/164b5590-a62e-4d4c-bfd0-6561dbc76142)

## Criação do LB (parte 7)

1. Selecione o Security Group do Load Balancer: `lb_SG`

![image](https://github.com/user-attachments/assets/9176d4ec-53e6-45af-a360-15fce6c2091e)

## Criação do LB (parte 8)

1. Em ping path coloque o caminho:

```bash
/wp-admin/install.php
```

2. Em `Response timeout`, colque `5`
3. Em `Interval`, colque `15`
4. Em `Unhealthy threshold`, colque `2`
5. Em `Healthy threshold`, colque `3`

![image](https://github.com/user-attachments/assets/4d1345bb-f92a-4055-af70-7687b0ebd690)

## Criação do LB (parte 9)

1. Clique em `Create load balancer`

![image](https://github.com/user-attachments/assets/fc35b139-3d9c-4169-b6f1-088c3bd03408)

> [!NOTE]
> Após seguir esses passos, você consegue criar o `Load Balancer` da forma correta!