create database oficios_a_casa
use oficios_a_casa


create table usuarios (
dni_u int,
nombre_u varchar(30),
apellido_u varchar(25),
telefono_u int,
email_u varchar(40),
calle_u varchar (30),
numero_u int,
piso_u int,
dpto_u varchar (2),
localidad_u varchar(25),
aclaraciones_u varchar (150),
constraint pk_u primary key (dni_u)
)

create table tecnicos (
dni_t int,
nombre varchar(30),
apellido varchar(25),
telefono int,
email varchar(40),
calle varchar (30),
numero int,
piso int,
dpto varchar(2),
localidad varchar(25),
profesion varchar(20),
aclaraciones varchar(150),
constraint pk_t primary key (dni_t)
)


create table solicitud_trabajo (
num_sol int,
fecha date,
descripcion varchar (200),
sol_us int,
sol_t int,
constraint pk_st primary key (num_sol),
constraint fk_stu foreign key(sol_us) references usuarios (dni_u),
constraint fk_stt foreign key(sol_t) references tecnicos (dni_t)
)

create table usuar_tec (
dni_u1 int,
dni_t1 int,
constraint fk_u1 foreign key(dni_u1) references usuarios(dni_u),
constraint fk_t1 foreign key(dni_t1) references tecnicos(dni_t)
)





 