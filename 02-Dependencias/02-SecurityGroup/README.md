<p align="center">
  <img src="https://github.com/user-attachments/assets/2937f94e-9467-44f1-a972-69055ae2aa01" alt="Img VPC" width="300">
</p>
<br>

# Security Groups

## Criação de SGs (parte 1)

1. Abra o painel principal da AWS e pesquise por `VPC`

2. Clique em `Security groups`

![image](https://github.com/user-attachments/assets/13e8b4fc-7c49-4176-be81-09a8e2158da2)

## Criação de SGs (parte 2)

1. Clique em `Create security groups`

![image](https://github.com/user-attachments/assets/ec455d28-ee7d-4494-b155-69075d001be2)

## Criação de SGs (parte 3) - EC2 Pública

1. Dê um nome para o security group

2. Dê uma descrição

3. Selecione a VPC criada nos passos anteriores

![image](https://github.com/user-attachments/assets/cdd1f5f1-964c-4d7b-b73c-f52b06d87157)

## Criação de SGs (parte 4)

1. Clique em `Create security group`

![image](https://github.com/user-attachments/assets/066ac162-be6c-4b64-975a-e536dc58d2fe)

## Criação de SGs (parte 5) - EC2 Privada

1. Dê um nome para o security group

2. Dê uma descrição

3. Selecione a VPC criada nos passos anteriores

4. Clique em `Create security group`

![image](https://github.com/user-attachments/assets/410b4146-982e-4550-884f-5aa1d1774ffc)

## Criação de SGs (parte 6) - RDS

1. Dê um nome para o security group

2. Dê uma descrição

3. Selecione a VPC criada nos passos anteriores

4. Clique em `Create security group`

![image](https://github.com/user-attachments/assets/0e6e5606-187c-4f56-bb2e-d7b007d595a8)

## Criação de SGs (parte 7) - EFS

1. Dê um nome para o security group

2. Dê uma descrição

3. Selecione a VPC criada nos passos anteriores

4. Clique em `Create security group`

![image](https://github.com/user-attachments/assets/e39fdbfb-dacf-4e02-b8fa-4819cc820294)

## Criação de SGs (parte 8) - EFS

1. Dê um nome para o security group

2. Dê uma descrição

3. Selecione a VPC criada nos passos anteriores

4. Clique em `Create security group`

![image](https://github.com/user-attachments/assets/1ad457d8-aaee-45c9-998e-22a2941a2329)

## Criação de SGs (parte 9)

1. No dashboard de security groups, na lupa de pesquisas procure pelos nomes que você deu na criação dos SGs

2. Clique no ID do sg

![image](https://github.com/user-attachments/assets/05f303ba-a59d-454c-8540-c3b084add7c2)

## Criação de SGs (parte 10)

1. Em inbound rules, clique em `Edit inbound rules`

![image](https://github.com/user-attachments/assets/5f246352-1646-4af6-ac44-23f28c104ab9)

> [!IMPORTANT]
> E para as outbounds rules, clique em `Edit inbound rules`

![image](https://github.com/user-attachments/assets/dc6ab432-3da0-4c49-8856-f3e1614568cf)

## Criação de SGs (parte 11) - IR EC2 Pública

> [!NOTE]
> IR = Inbound Rules
> OR = Outbound Rules

1. Clique em `Add rule`
2. No tipo selecione `SSH`
3. Selecione `My IP`

> [!NOTE]
> Meu IP não está sendo exibido por segurança

4. No tipo selecione `HTTP`
5. Selecione `Anywhere-IPv4`
6. Clique em `Save rules`

![image](https://github.com/user-attachments/assets/b02aba45-030a-4b66-b464-6587a74b6770)

## Criação de SGs (parte 12) - OR EC2 Pública

1. Clique em `Add rule`
2. No tipo selecione `All traffic`
3. Selecione `custom` como `0.0.0.0/0`
4. Clique em `Save rules`

![image](https://github.com/user-attachments/assets/a97fb132-10c3-4d6d-966f-1d7ba8b96a6f)

## Criação de SGs (parte 13) - IR EC2 Privada

1. Clique em `Add rule`
2. No tipo selecione `SSH`
3. Selecione `custom` como `ec2-pub-sg`
4. No tipo selecione `NFS`
5. Selecione `custom` como `efs-sg`
6. No tipo selecione `HTTP`
7. Selecione `custom` como `elb-sg`
8. No tipo selecione `MYSQL/Aurora`
9. Selecione `custom` como `rds-sg`
10. Clique em `Save rules`

![image](https://github.com/user-attachments/assets/adae238c-2760-404d-a026-494316c1c806)

## Criação de SGs (parte 14) - OR EC2 Privada

1. Clique em `Add rule`
2. No tipo selecione `HTTP`
3. Selecione `custom` como `Anywhere-IPv4`
4. No tipo selecione `MYSQL/Aurora`
5. Selecione `custom` como `rds-sg`
6. No tipo selecione `NFS`
7. Selecione `custom` como `efs-sg`
8. No tipo selecione `All traffic`
9. Selecione `Anywhere-IPv4`
10. Clique em `Save rules`

![image](https://github.com/user-attachments/assets/fc4ad4bd-5612-49d3-9b77-c8eb242b8e8d)

## Criação de SGs (parte 15) - IR EC2 Privada

1. Clique em `Add rule`

10. Clique em `Save rules`

![image](https://github.com/user-attachments/assets/728e5464-8e9c-408b-a1e8-504685be4c9a)

![image](https://github.com/user-attachments/assets/6aeea532-2c83-4334-bb55-a812fb6b4bc4)

![image](https://github.com/user-attachments/assets/ff072b28-5007-4791-bdff-9710d660bffb)

![image](https://github.com/user-attachments/assets/1c61d783-468f-4cc6-a403-a06de00ba160)

![image](https://github.com/user-attachments/assets/db7fd2b4-4a64-416a-818b-4450c9f9148f)

![image](https://github.com/user-attachments/assets/db4a7754-0703-4877-ad36-e383dfa4ffb5)

**CONFIGURAÇÃO DO SECURITY GROUP EC2 PÚBLICO**

INBOUND RULES:
<table>
  
  <thead>
    <tr>
      <th>TIPO
      </th>
      <th>
        INTERVALO DE PORTAS
      </th>
      <th>
        ORIGEM
      </th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>SHH</td>
      <td>22</td>
      <td>Meu IP</td>
    </tr>
    <tr>
      <td>HTTP</td>
      <td>80</td>
      <td>0.0.0.0/0</td>
    </tr>
  </table>

OUTBOUND RULES:


<table>
  
  <thead>
    <tr>
      <th>TIPO
      </th>
      <th>
        INTERVALO DE PORTAS
      </th>
      <th>
        ORIGEM
      </th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Todo o tráfego</td>
      <td>Tudo</td>
      <td>0.0.0.0/0</td>
    </tr>
  </tbody>
</table>
  
 <hr>
      
**CONFIGURAÇÃO DO SECURITY GROUP EC2 PRIVADO**  


INBOUND RULES:
<table>
  
  <thead>
    <tr>
      <th>TIPO
      </th>
      <th>
        INTERVALO DE PORTAS
      </th>
      <th>
        ORIGEM
      </th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>SHH</td>
      <td>22</td>
      <td>Security Group da EC2 Pública</td>
    </tr>
    <tr>
      <td>NFS</td>
      <td>2049</td>
      <td>Security Group do EFS</td>
    </tr>
    <tr>
      <td>HTTP</td>
      <td>80</td>
      <td>Security Group do ELB</td>
    </tr>
    <tr>
      <td>MYSQL/Aurora</td>
      <td>3306</td>
      <td>Security Group do RDS</td>
    </tr>
  </tbody>
</table>


OUTBOUND RULES:


<table>
  
  <thead>
    <tr>
      <th>TIPO
      </th>
      <th>
        INTERVALO DE PORTAS
      </th>
      <th>
        ORIGEM
      </th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>HTTP</td>
      <td>80</td>
      <td>0.0.0.0/0</td>
    </tr>
    <tr>
      <td>MYSQL/Aurora</td>
      <td>3306</td>
      <td>Security Group do RDS</td>
    </tr>
    <tr>
      <td>NFS</td>
      <td>2049</td>
      <td>Security Group do EFS</td>
    </tr>
    <tr>
      <td>Todo o tráfego</td>
      <td>Tudo</td>
      <td>0.0.0.0/0</td>
    </tr>
  </tbody>
</table>
</br>
<hr>
<b>CONFIGURAÇÃO DO SECURITY GROUP DA RDS: </b>
<br>

INBOUND RULES:


<table>
  <thead>
    <tr>
      <th>TIPO
      </th>
      <th>
        INTERVALO DE PORTAS
      </th>
      <th>
        ORIGEM
      </th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>MYSQL/Aurora</td>
      <td>3306</td>
      <td>Security Group da EC2</td>
    </tr>
  </tbody>
</table>


OUTBOUND RULES:


<table>
  <thead>
    <tr>
      <th>TIPO
      </th>
      <th>
        INTERVALO DE PORTAS
      </th>
      <th>
        ORIGEM
      </th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Todo o tráfego</td>
      <td>Todas</td>
      <td>0.0.0.0/0</td>
    </tr>
  </tbody>
</table>
</br>
<hr>
<b>CONFIGURAÇÃO DO SECURITY GROUP DA EFS: </b></br>


INBOUND RULES:


<table>
  <thead>
    <tr>
      <th>TIPO
      </th>
      <th>
        INTERVALO DE PORTAS
      </th>
      <th>
        ORIGEM
      </th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>NFS</td>
      <td>2049</td>
      <td>Security Group da EC2</td>
    </tr>
  </tbody>
</table>


OUTBOUND RULES:


<table>
  <thead>
    <tr>
      <th>TIPO
      </th>
      <th>
        INTERVALO DE PORTAS
      </th>
      <th>
        ORIGEM
      </th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Todo o tráfegos</td>
      <td>Todas</td>
      <td>0.0.0.0/0</td>
    </tr>
  </tbody>
</table>
<hr>
<b>CONFIGURAÇÃO DO SECURITY GROUP DA ELB: </b></br>


INBOUND RULES:


<table>
  <thead>
    <tr>
      <th>TIPO
      </th>
      <th>
        INTERVALO DE PORTAS
      </th>
      <th>
        ORIGEM
      </th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>HTTP</td>
      <td>80</td>
      <td>0.0.0.0/0</td>
    </tr>
  </tbody>
</table>


OUTBOUND RULES:


<table>
  <thead>
    <tr>
      <th>TIPO
      </th>
      <th>
        INTERVALO DE PORTAS
      </th>
      <th>
        ORIGEM
      </th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>HTTP</td>
      <td>80</td>
      <td>0.0.0.0/0</td>
    </tr>
  </tbody>
</table>
<hr>