<p align="center">
  <img src="https://github.com/user-attachments/assets/fa5618a7-1c08-408c-b6ed-750b2d5aeed0" alt="Img WordPress" width="150">
</p>
<br>

> [!IMPORTANT]
> Você precisa testar o WordPress localmente para depois subir na instância, são boas práticas!

# WordPress

### **O que é o WordPress?**  
O **WordPress** é um sistema de gerenciamento de conteúdo (CMS) gratuito e de código aberto, usado para criar sites, blogs e até lojas virtuais. Ele é **flexível**, com milhares de temas e plugins, e **fácil de usar**, mesmo para quem não sabe programar.  

### **Por que o WordPress Precisa de um Banco de Dados?**  

O WordPress é **dinâmico**, ou seja, ele não armazena páginas em arquivos estáticos, mas sim em um **banco de dados** (como MySQL ou MariaDB). Lá ficam:  
- **Conteúdo** (posts, páginas, comentários)  
- **Configurações** (tema, plugins, usuários)  
- **Estrutura** (menus, widgets)  

**Sem o banco de dados, o WordPress não funciona**, pois não tem onde buscar ou salvar informações.

## Criação do WordPress localmente

1. Acesse documentação oficial:
https://hub.docker.com/_/wordpress

2. Role a tela e copie esse código

![image](https://github.com/user-attachments/assets/4ac23622-3950-43e1-b991-056657fdcb1f)

3. No seu terminal crie uma pasta e entre nela:

```fish
mkdir Project2
```

```fish
cd Project2
```

4. Confirme que não tem nenhum arquivo ainda:

```fish
ls
```

5. Crie um arquivo chamado `docker-compose.yml` e abri ele no VSCode:

```fish
code docker-compose.yml
```

![image](https://github.com/user-attachments/assets/af0303ba-51b4-48f6-a655-f4379adee47b)

6. No VSCode, cole o código que havia copiado: 

```yml
services:

  wordpress:
    image: wordpress
    restart: always
    ports:
      - 8080:80
    environment:
      WORDPRESS_DB_HOST: db
      WORDPRESS_DB_USER: exampleuser
      WORDPRESS_DB_PASSWORD: examplepass
      WORDPRESS_DB_NAME: exampledb
    volumes:
      - wordpress:/var/www/html

  db:
    image: mysql:8.0
    restart: always
    environment:
      MYSQL_DATABASE: exampledb
      MYSQL_USER: exampleuser
      MYSQL_PASSWORD: examplepass
      MYSQL_RANDOM_ROOT_PASSWORD: '1'
    volumes:
      - db:/var/lib/mysql

volumes:
  wordpress:
  db:
```

![image](https://github.com/user-attachments/assets/73d70764-44bc-449a-9a43-cdc4eb6448f6)

> [!IMPORTANT]
> Não se esqueça de executar um `CTRL + S` para que o arquivo seja salvo.

7. Execute o `ls` para mostrar que o arquivo foi criado

```fish
ls
```

8. Suba o docker-compose:

```fish
docker-compose up -d
```

![image](https://github.com/user-attachments/assets/bc776630-1cb7-4a19-a3a9-e7ec35d9b5b6)

9. Acesse meu navegador com:

```fish
localhost:8080
```

10. Selecione o idioma `Português do Brasil`
![image](https://github.com/user-attachments/assets/b74d32cb-69c8-403d-9c04-b4f747d9432c)

11. Role a tela e selecione `Continuar`

![image](https://github.com/user-attachments/assets/da16c74e-238c-4b00-9cc6-7f2b6a443a24)

12. Dê um título para o seu site, crie um nome de usuário, coloque uma senha forte e guarde-a, coloque
seu e-mail e selecione `Install WordPress`:

![image](https://github.com/user-attachments/assets/6e1422a7-aa73-4c95-88ff-d5d1e1ed2433)

13. Aparecerá uma mensagem de sucesso, você deve clicar em `Log In`, situado no canto inferior esquerdo
da tela:

![image](https://github.com/user-attachments/assets/336d963f-9f79-4c6d-ad0c-8594f531a509)

14. Na página de login, insira o nome do usuário e senha criados nas etapas anteriores.
Selecione `Remember me` e depois clique em `Log In`:

![image](https://github.com/user-attachments/assets/a7a25533-7eef-4d0c-9525-cf7a2d614da1)

15. Aparecerá uma mensagem de bem-vindo(a) `Welcome to WordPress`:

![image](https://github.com/user-attachments/assets/0ac5f771-c3e4-4c71-a6a8-549329e92637)

> [!NOTE]
> Prontinho, com esses passos você conseguiu testar e fazer que funcionasse localmente o `WordPress`!