# Lenin blog (Explicações abaixo foram feitas para o eu do futuro.)
## _Projeto de blog de postagens_

É um simples blog, onde será possivel registrar usuários, e posts.

- CRUD completo.
- 99% Ruby on rails;
- ✨1% Tailwind✨


Feito por [Fábio Varela] 


## Features

- Registrar usuário (Admin)
- Registro de novo usuário do blog.
- Visualizar, criar, editar e apagar usuários.
- Visualizar, criar, editar e apagar posts.



> Lenin's blog



## Tech

Poucos tecnologias utilizadas até o momento:

- [Ruby on rails] - (_Obviamente_)
- [Tailwind] - Ótimo para criar CSS rapidamente.
- [Ruby] - A linguagem de programação principal do projeto.

## Installation

### _DE PREFERENCIA UTILIZAR O EDITOR [VSCODE](https://code.visualstudio.com/) E SEU TERMINAL_

Para rodar, necessita do tailwind e ruby on rails  (_duh_) [Ruby on Rails](https://rubyonrails.org/) ultima versão.

#### _Instale as dependencias e rode o server para usar._


Instalar o ruby on rails com o comando:

```sh
gem install rails
```

Instalar a linguagem [Ruby](https://www.ruby-lang.org/pt/)
Instalar [RVM](https://rvm.io/) Ultima versão.



Quando instalar, precisamos configurar o RVM com o seguinte comando: 

```sh
source ~/.rvm/scripts/rvm 
```


E instalar a versão [Ruby] utilizado nesse projeto com o comando com o comando: 


```sh
rvm install 3.1.0
```

E utilizar está mesma versão no seu enviroment: 


```sh
rvm use --default 3.1.0
```


Após tudo isso, fazer o download do projeto com [git clone] ou baixar o [zip](https://github.com/FabioVV/lenin-blog/archive/refs/heads/main.zip)

Dentro da pasta do projeto, rodar o seguinte comando no terminal: 

```sh
bundle install --without production
```
Irá instalar todas as demais dependencias do projeto.


Para fazer com que o tailwind funcione (_É NECESSÁRIO PARA O PROJETO RODAR_) , digitar os seguintes comandos no terminal: 

```sh
- ./bin/bundle add tailwindcss-rails --- Caso esse comando resulte em algum tipo de erro, ignorar e executar o próximo.

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

- User.new(:username="nome de usuario",:email="Email do usuario", :password="senha do usuario")
- Article.new(:title="titulo do post",:description="seu post")

```sh
User.new(:username="nome de usuario",:email="Email do usuario", :password="senha do usuario")

Article.new(:title="titulo do post",:description="seu post")
```


## License

**Free Software, Hell Yeah!**
