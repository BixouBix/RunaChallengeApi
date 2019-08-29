# Runa Challenge Api

## Versions
* Ruby
2.5.5
* Rails
5.2.3

## Installation
* Clone repository:
```
git@github.com:BixouBix/RunaChallengeApi.git
```
* Change to directory
```
cd runa-challenge-api
```
* Install dependencies
```
bundle install
```
* Create database (you need to have permission to create databases in postgresql and have it running)
```
rails db:setup
```
* Create admin user
Open the console
```
rails c
```
Create the user
```
User.create!(email: 'you@example.com', password: 'SomePassword', is_admin: true)
```



* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# Requerimientos funcionales:

* Inicio de sesión de administrador de la empresa

* Inicio de sesión de empleado

* El administrador puede marcar la entrada y salida de sus empleados

* El administrador gestione los reportes de entrada y salida de sus empleados

* El administrador gestione la información de empleados

* El empleado revise su reporte de entrada y salida


# Consideraciones:

* Backend en Ruby on Rails v5.2 

* API debe estar documentado

* Usar PostgreSQL

* Aplicar Unit testing o testing funcional

* El criterio del postulante será el punto más importante a evaluar.



# Plus:

* cliente frontend que pueda consumir el API 