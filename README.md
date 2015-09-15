# TaxiExpress
Trabajo de curso Desarrollo web

## Pasos realizados: (no es necesario volver a realizarlo)

* Crear proyecto
    * rails new taxiexpress -d mysql  
    * Agregamos version de mysql en gemfile --> '~> 0.3.18'
    * Instalamos gemas con "bundle install"

* Configurar base de datos
    * Agregamos las variables de entorno en los campos user y host de database.yml
    * Iniciar base de datos "mysql-ctl start"
    * creamos la base de datos con "rake db:create"

* Agregar gemas de diseño
    * Agregar las gemas simple_form, annotate, therubyracer, twitter-bootstrap-rails
    * rails generate bootstrap:install static
    * rails generate simple_form:install --bootstrap

## Para iniciar por primera vez:
* despues de clonar "git clone http://...." (obviar este paso si se coloco el url en la creacion de la maquina c9)
* mysql-ctl start
* rake db:create
 
