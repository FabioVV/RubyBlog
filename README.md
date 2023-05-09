# Blog em ruby (Explicações abaixo foram feitas para o eu do futuro.)
## _Projeto de blog de postagens_

É um simples blog, onde será possivel registrar usuários, e posts.

```sh
puts "Crud completo"
puts "Ruby on rails"
puts "Tailwind"
```


Feito por [Fábio Varela] 


## Features

- Registrar usuário (Admin)
- Registro novo usuário do blog.
- Visualizar, criar, editar e apagar usuários.
- Visualizar, criar, editar e apagar posts.
- Visualizar, criar, editar e apagar categorias de posts.

> Blog


## Tech

 Tecnologias utilizadas:

- [Ruby on rails] - Framework da linguagem Ruby para criar sites, sistemas web e etc
- [Tailwind] - Framework CSS para melhor produtividade e estilização da página
- [Kaminari] - Usado para criar paginação.
- [bcrypt] - Usado para armezenar as senhas com segurança.

## Installation

## Para usar, instalar todas as dependecias e rodar o server.

Para rodar, necessita do tailwind e ruby on rails [Ruby on Rails](https://rubyonrails.org/) ultima versão.

Instalar a linguagem [Ruby](https://www.ruby-lang.org/pt/)
Instalar [RVM](https://rvm.io/) Ultima versão.


Instalar o ruby on rails dentro do enviroment com o comando:

```sh
gem install rails
```

Quando instalar, precisamos configurar o RVM com o seguinte comando: 

```sh
source ~/.rvm/scripts/rvm 
```

E instalar a versão [Ruby] utilizado nesse projeto: 

```sh
rvm install 3.1.0
```

E utilizar está mesma versão no seu enviroment: 

```sh
rvm use --default 3.1.0
```

Dentro da pasta do projeto, rodar o seguinte comando no terminal: 

```sh
bundle install --without production
```

Irá instalar todas as demais dependencias do projeto.


Para fazer com que o tailwind funcione (_É NECESSÁRIO PARA O PROJETO RODAR_) , digitar os seguintes comandos no terminal: 

```sh
- ./bin/bundle add tailwindcss-rails    --------   Caso esse comando resulte em algum tipo de erro, ignorar e executar o próximo.
- ./bin/rails tailwindcss:install
```

### _Rode o server com o comando:_

```sh
rails s 
```
ou

```sh
rails server 
```

### _Para que tudo funcione, é necessário fazer a migração do banco de dados com o comando:_

```sh
rails db:migrate 
```

## - Utilização do console para criar posts e usuarios pelo back-end:

```sh
rails c
```
ou

```sh
rails console
```

Alguns comandos simples para realizar as operações descritas acima>>>>

```sh
User.new(:username="nome de usuario",:email="Email do usuario", :password="senha do usuario")

Article.new(:title="titulo do post",:description="seu post")
```


## License

**Free Software, Hell Yeah!**
