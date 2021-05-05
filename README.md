# Readme

# Proyecto
Este proyecto se trata de una base publica para crear desarrollos de manera rápida y sensilla, la idea es ir aumentando las funcionalidades comunes y documentar como integrarlas, con el fin de facilitar y hacer más rápida la creación de nuevos proyectos. Hasta ahora el proyecto incluye:
- Boostrap 4
- Devise
- Inicio de sesión FB
- Inicio de sesión google
- Almacenamiento de imágenes Active Storage en bucket de S3
- cancancan
- cocoon
- nested_form
- google-analytics-rail

# Crear Proyecto a partir de la base

## 1) Clonar el repositorio

1) Crea un nuevo Repo con el nobre de tu proyecto en github

2) Clona el repo base
``` git clone git@github.com:richard65838/BaseProyectos.git ```

3)Cambia el nombre de la carpeta por la de tu repo

4)Elimina el origen del repo
``` git remote rm origin ```
5) Has el primer push

```
git remote add origin webcomino 'remplazar por origen'

Remplazar por el codigo de github para crear nuevo repo

```
6) Ojo si tienes doble autentificacion falla la password hay que generar un token como dice aca y remplazarlo en la password
https://docs.github.com/en/github/authenticating-to-github/creating-a-personal-access-token


## 2) crear BD
sudo -u postgres psql

create user "user" with password 'key';

create database "data_base_development" owner "user";

En este punto ya deberias poder desplegar la pagina base sin problemas.

## 3) Configurar claves

Para utilizar servicios externos es necesario crear las claves y las cuentas para poder iniciar sesión. Para configurarlos es nesesario acceder al archivo credentials y configurarlas
1. Remover las credenciales rm config/master.key rm config/master.key
2. Correr el comando: EDITOR="nano" rails credentials:edit
3. El comando anterior abrirá una consola, en ella hay que agregar las claves solicitadas, para que funcionen los servicios correctamente.

Para generar las claves de acceso hay que seguir los siguientes tutoriales:
- Agregar claves de S3 --> <a href="https://medium.com/craft-academy/encrypted-credentials-in-ruby-on-rails-9db1f36d8570">Medium credentials RoR</a>
- Agregar claves Google para inicio de sesión --> <a href="https://github.com/heartcombo/devise/wiki/OmniAuth:-Overview">Omniauth</a> 
- Agregar claves faceboock para el inicio de sesión --> <a href="https://github.com/heartcombo/devise/wiki/OmniAuth:-Overview">Omniauth</a> 

## Deploy con Heroku
Crea tu instancia de Heroku
### Si manejas mas de una, crea una instancia especial
link como hacerlo: https://github.com/heroku/heroku-accounts#installation

1) heroku create
2) push
3) bundle
4) heroku run rake db:migrate
