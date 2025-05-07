<p align="center">
  <img src="https://github.com/user-attachments/assets/5937b1ac-e32a-458c-94d7-c9f430fe63cb" alt="Img Testes" width="150">
</p>
<br>

## Testar e Documentar:

- [X] [**Load Balancer**](https://github.com/andrrade/Project2-CompassUOL-DevSecOps/blob/main/05-Testes/README.md#teste-do-load-balancer-lb)
- [X] [**Wordpress**](https://github.com/andrrade/Project2-CompassUOL-DevSecOps/blob/main/05-Testes/README.md#teste-do-wordpress-wp)
- [X] [**Auto Scaling Groups**](https://github.com/andrrade/Project2-CompassUOL-DevSecOps/blob/main/05-Testes/README.md#teste-do-auto-scaling-groups-asgs)
- [X] [**EFS**](https://github.com/andrrade/Project2-CompassUOL-DevSecOps/blob/main/05-Testes/README.md#teste-do-elastic-file-system-efs)
- [X] [**Cloud Watch**](https://github.com/andrrade/Project2-CompassUOL-DevSecOps/blob/main/05-Testes/README.md#teste-do-cloud-watch-cw)

# Teste do Load Balancer (LB)

[🔼 Voltar ao Início](https://github.com/andrrade/Project2-CompassUOL-DevSecOps/blob/main/05-Testes/README.md#testar-e-documentar)

## Teste do LB (parte 1)

1. Abra o painel principal da AWS e pesquise por `Load Balancers`

2. Clique em `Load Balancers`:

![image](https://github.com/user-attachments/assets/c34a022c-eb6e-481d-864e-d84d189b91f5)

## Teste do LB (parte 2)

1. Selecione o checkbox do `Load Balancer` criado

![image](https://github.com/user-attachments/assets/8c49e671-29ae-4986-94fc-251e9a31bedc)

## Teste do LB (parte 3)

1. No canto inferior, selecione `Target instances` e verifique se o healthy status está como
`In-service`

![image](https://github.com/user-attachments/assets/6cf1c1b5-ae73-4934-8e26-a2969d71144a)

## Teste do LB (parte 4)

1. Copie o `DNS` do Load Balancer

![image](https://github.com/user-attachments/assets/45b52f49-3c08-4045-8534-22b42461781a)

## Teste do LB (parte 5)

> [!NOTE]
> Cole o link no navegador para abrir a página inicial do `WordPress`

1. Selecione o idioma `Português do Brasil`

2. Clique em `Continuar`

![image](https://github.com/user-attachments/assets/64a073d6-0cb7-428b-a5a8-e101f882d0c5)

> [!NOTE]
> Aqui pudemos testar que o Load Balancer acessa corretamente as instâncias

# Teste do WordPress (WP)

[🔼 Voltar ao Início](https://github.com/andrrade/Project2-CompassUOL-DevSecOps/blob/main/05-Testes/README.md#testar-e-documentar)

## Teste do WP (parte 1)

> [!NOTE]
> Agora vamos testar se conseguimos criar um post no WordPress

1. Dê um título para o site

`Projeto 2 - Compass Uol`

2. Escolha um nome de usuário

`Laura`

3. Crie uma senha

> [!NOTE]
> De preferência, que seja uma senha forte

4. Coloque algum e-mail seu

5. Clique em `Instalar WordPress`

![image](https://github.com/user-attachments/assets/f17d6458-3098-488e-821a-8d56a1bb1a32)

## Teste do WP (parte 2)

1. Clique em `Acessar` 

![image](https://github.com/user-attachments/assets/2c6fda83-9a20-4329-b164-88dbb8b258d2)

## Teste do WP (parte 3)

1. Insira o nome de usuário criado

2. Insira sua senha

3. Marque o checkbox `Lembrar-me`

4. Clique em `Acessar`

![image](https://github.com/user-attachments/assets/05883722-4fa9-4ce8-86f3-47bdaf3736e6)

## Teste do WP (parte 4)

> [!NOTE]
> Será mostrada uma mensagem de boas vindas ao WordPress

![image](https://github.com/user-attachments/assets/f3bc0095-a408-41d7-a372-64736097459a)

## Teste do WP (parte 5)

> [!NOTE]
> Vamos criar nossa página padrão

1. No canto superior esquerdo, clique em `Posts`

2. Exclua o padrão, clicando em `Colocar na lixeira`

![image](https://github.com/user-attachments/assets/8d86f9c7-01a8-426b-850d-5aa3e2cae6c1)

## Teste do WP (parte 6)

1. Clique em `Adicionar post`

![image](https://github.com/user-attachments/assets/7c1ac143-6ec0-4596-86ba-f6aba592b242)

## Teste do WP (parte 7)

> [!NOTE]
> Personalize da forma que preferir

1. Clique em `Publicar`

![image](https://github.com/user-attachments/assets/85698f63-a0d9-471c-954d-4fc83d4d3bd2)

## Teste do WP (parte 8)

1. Clique em `Publicar`

![image](https://github.com/user-attachments/assets/388b5761-52eb-4e0d-aeeb-2fde211da4f4)

## Teste do WP (parte 9)

1. Clique em `Ver Post`

![image](https://github.com/user-attachments/assets/92fb2fda-5a2f-45d9-ba05-b9f5b3e282c9)

## Teste do WP (parte 10)

> [!NOTE]
> Prontinho, seu post foi publicado e foi testado que o WP está funcionando corretamente!

![image](https://github.com/user-attachments/assets/3f4d0a61-4b24-4b95-8df7-981abe6592a2)

# Teste do Auto Scaling Groups (ASGs)

[🔼 Voltar ao Início](https://github.com/andrrade/Project2-CompassUOL-DevSecOps/blob/main/05-Testes/README.md#testar-e-documentar)

## Teste do ASGs (parte 1)

> [!NOTE]
> Voltando para a AWS, vamos apagar as instâncias para ver se elas sobem automaticamente

1. Clique em `Instances`
2. Selecione as instâncias para apagar
3. Clique em `Instance state`

![image](https://github.com/user-attachments/assets/8f6a7ecb-78ce-4a79-8ad8-6b1d7cfc0b15)

## Teste do ASGs (parte 2)

1. Clique em `Terminate (delete) instance`

![image](https://github.com/user-attachments/assets/8d188c98-c56e-455a-9e5b-0941dcee0ceb)

## Teste do ASGs (parte 3)

1. Clique em `Terminate (delete)`

![image](https://github.com/user-attachments/assets/c91168fe-00aa-4544-89ff-289aaf6fb1ca)

## Teste do ASGs (parte 4)

1. Você verá uma mensagem de sucesso

![image](https://github.com/user-attachments/assets/b2c8ea70-0950-4f30-b877-5f592e742422)

> [!IMPORTANT]
> Os testes abaixo foram feitos com um vídeo: 

## Teste do ASGs (parte 5) 

# Teste do Elastic File System (EFS)

[🔼 Voltar ao Início](https://github.com/andrrade/Project2-CompassUOL-DevSecOps/blob/main/05-Testes/README.md#testar-e-documentar)

## Teste do EFS (parte 1)

Para concluir os testes do ASGs, gravei um vídeo mostrando que as instâncias são criadas imediatamente quando as
outras não estão mais no estado `healthy`. Além disso, testei o EFS mostrando que mesmo após as instâncias serem
deletadas, ocorre a persistência dos dados.

## [Clique aqui](https://github.com/user-attachments/assets/a5f938a2-d8f9-4d12-8c54-6b1a91a5c896) para ver o Vídeo validando os testes :)

## Teste do EFS (parte 2)

1. Além desse teste mostrado no vídeo, abri o painel do EFS e cliquei em `Network`

![efs](https://github.com/user-attachments/assets/6d63230d-6420-4a5a-bf5c-b8107303f800)

É mostrado que as montagens foram feitas corretamente e estão `Available`

# Teste do Cloud Watch (CW)

Para testar o CloudWacth, fui no caminho:

**CloudWatch > Alarms > Alarme de Escalonamento**

Cliquei em `All alarms`

Nessa tela ele mostra na linha vermelha o `85`, que foi o número que defini para alertar sobre o uso
da `CPU`.
Já na linha azul, mostra o quando minha `CPU` está sendo usada, logo, não foi necessário que ele alarmasse nada.

[🔼 Voltar ao Início](https://github.com/andrrade/Project2-CompassUOL-DevSecOps/blob/main/05-Testes/README.md#testar-e-documentar)

![cw](https://github.com/user-attachments/assets/d2fd2b69-4422-4c22-88d4-fbb0bd53e859)

> [!NOTE]
> Após seguir esses passos, você consegue `testar` corretamente e provar que o projeto está funcionando perfeitamente!
