# Readme

# Proyecto
Este proyecto se trata de una base pubica para crear desarrollos de manera rapida y sensilla, la idea es ir aumentando las funcionalidades comunes y documentar como integrarlas, con el fin de facilitar y hacer mas rapida la creacion de nuevos proyectos. hasta ahora el proyecto incluye:
- Boostrap 4
- Devise
- Inicio de secion FB
- Inicio de secion google
- Almacenamiento de imagenes Active Storage en bucket de S3

# Crear Proyecto a partir de la base

## Clonar el repo
git clone (repositorio)
remover el .git
apuntar a un nuevo repositorio de preferencia

## crear BD
sudo -u postgres psql
create user "user" with password 'key';
create database "data_base_development" owner "user";

En este punto ya deberias poder desplegar la pagina base sin problemas.

## Configurar claves

Para utilizar servicios externos es nesesario crear las claves y las cuentas para poder iniciar secion. para configurarlos es nesesario acceder al archivo credentials y configurarlas
1- remover las credenciales rm config/master.key rm config/master.key
2- correr el comando: EDITOR="nano" rails credentials:edit
3-  el comando anterior abrira una consola en ella hay que agregar las claves solicitadas, para que funcionen los servicios correctamente
Para generar las claves de acceso hay que seguir los siguientes turoeiales:
- Agregar claves de S3
- Agregar claves Google para inicio de secion
- Agregar claves faceboock para el inicio de secion


