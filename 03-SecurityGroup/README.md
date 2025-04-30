# SG

![image](https://github.com/user-attachments/assets/13e8b4fc-7c49-4176-be81-09a8e2158da2)

![image](https://github.com/user-attachments/assets/ec455d28-ee7d-4494-b155-69075d001be2)

![image](https://github.com/user-attachments/assets/cdd1f5f1-964c-4d7b-b73c-f52b06d87157)

![image](https://github.com/user-attachments/assets/066ac162-be6c-4b64-975a-e536dc58d2fe)

![image](https://github.com/user-attachments/assets/410b4146-982e-4550-884f-5aa1d1774ffc)

![image](https://github.com/user-attachments/assets/0e6e5606-187c-4f56-bb2e-d7b007d595a8)

![image](https://github.com/user-attachments/assets/e39fdbfb-dacf-4e02-b8fa-4819cc820294)

![image](https://github.com/user-attachments/assets/1ad457d8-aaee-45c9-998e-22a2941a2329)

![image](https://github.com/user-attachments/assets/05f303ba-a59d-454c-8540-c3b084add7c2)

![image](https://github.com/user-attachments/assets/5f246352-1646-4af6-ac44-23f28c104ab9)

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