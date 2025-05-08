<p align="center">
  <img src="https://github.com/user-attachments/assets/fd67f97c-93f2-4ae5-a2fe-97b164f1b83c" alt="Img Cloud Watch" width="150">
</p>
<br>

# Cloud Watch

## Criação do Automatic scaling (parte 1)

**Vá em EC2 > Auto Scaling groups**

1. Selecione o checkbox do seu ASG

2. No canto inferior, selecione `Automatic scaling`

3. Clique em `Create dynamic scaling policy`

![image](https://github.com/user-attachments/assets/3fb1aca8-7f38-405b-94aa-6fb1fb53da97)

## Criação do Automatic scaling (parte 2)

1. Em Policy type, selecione `Simple scaling`

2. Dê um nome para o seu Scaling policy

`Alarme sobre o uso da CPU`

> [!NOTE]
> Você pode escolher o nome que quiser, o que estou deixando documentado foi o que eu usei.

3. Em Take the action, selecione `2`

> [!NOTE]
> 2 = 2 instâncias

4. Clique em `Create`

![image](https://github.com/user-attachments/assets/6a0df6d6-d951-4d4f-ab28-c75eeb0dbf93)

---

## Criação CW (parte 1)

1. Abra o painel principal da AWS e pesquise por `Cloud Watch`

2. Clique em `Alarms`:

![image](https://github.com/user-attachments/assets/751f1bfb-3feb-4321-b6c4-de994201bd2e)

## Criação CW (parte 2)

1. Clique em `Create alarm`

![image](https://github.com/user-attachments/assets/e47c9175-f1a8-4ccb-adeb-068d0aa90f5a)

## Criação CW (parte 3)

1. Clique em `Select metric`

![image](https://github.com/user-attachments/assets/6f7279cc-2f8b-4ad4-a3bd-ba2f38a9399b)

## Criação CW (parte 4)

1. Clique em `EC2`

![image](https://github.com/user-attachments/assets/77cfe38c-2f6a-479d-a06a-c2c32b6c89fc)

## Criação CW (parte 5)

1. Clique em `By Auto Scaling Group`

![image](https://github.com/user-attachments/assets/b6f64e81-4bc5-4f3c-a16c-99a2758f07cf)

## Criação CW (parte 6)

1. Selecione `CPUUtilization`

2. Clique em `Select metric`

![image](https://github.com/user-attachments/assets/b99244bd-4ab3-413b-a63d-21e361b39f50)

## Criação CW (parte 7)

> [!NOTE]
> Não é necessário fazer nada nessa parte

![image](https://github.com/user-attachments/assets/e2be984a-c986-4053-add8-c7f690407efc)

## Criação CW (parte 8)

1. Selecione `Static`
2. Selecione `Greater/Equal`
3. Escreva o valor que deseja alarmar

`85`

> [!NOTE]
> Você pode escolher o valor que quiser, estou deixando documentado o que eu usei.

![image](https://github.com/user-attachments/assets/5bdde8a2-f77d-453f-b531-60e29345ea36)

## Criação CW (parte 9)

1. Clique em `Next`

![image](https://github.com/user-attachments/assets/d87ee585-c9e2-4258-b99e-12af15ebedf3)

## Criação CW (parte 10)

1. Remova essa notificação existente clicando em `Remove`

![image](https://github.com/user-attachments/assets/b764042b-9ee8-439b-8a8b-73699eee43fb)

## Criação CW (parte 11)

1. Clique em `Add Auto Scaling action`

![image](https://github.com/user-attachments/assets/31ae241a-dd92-43d2-8d99-bbcb14ae0e01)

## Criação CW (parte 12)

1. Selecione `In alarm`
2. Selecione `EC2 Auto scaling group`
3. Selecione o grupo criado anteriormente
4. Selecione as 2 instâncias

![image](https://github.com/user-attachments/assets/71c86813-d048-46af-a507-60f4610bac89)

## Criação CW (parte 13)

1. Clique em `Next`

![image](https://github.com/user-attachments/assets/85ffbf01-6d09-45c4-9123-119729289553)

## Criação CW (parte 14)

1. Dê um nome para o seu alarme

`Alarme de Escalonamento`

> [!NOTE]
> Você pode escolher o nome que quiser, estou deixando documentado o que eu usei.

![image](https://github.com/user-attachments/assets/efe41bf2-42dd-4c0b-903a-15c6d96eb841)

2. Clique em `Next`

## Criação CW (parte 15)

1. Clique em `Create alarm`

![image](https://github.com/user-attachments/assets/3243fcd0-34b7-4832-920f-1c9eb15c99d8)

## Criação CW (parte 16)

> [!NOTE]
> Você verá uma mensagem de sucesso

![image](https://github.com/user-attachments/assets/06661c06-c8a6-4d57-ac93-4dd518d79e75)

## Criação CW (parte 17)

> [!NOTE]
> Espere o seu Alarme ficar no estado `OK`

![image](https://github.com/user-attachments/assets/95a23ed8-02a8-4f72-b6f3-d419c21b94c9)

> [!NOTE]
> Após seguir esses passos, você consegue criar o `Cloud Watch` da forma correta!
