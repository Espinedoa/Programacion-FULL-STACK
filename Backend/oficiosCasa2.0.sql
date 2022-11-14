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

insert into usuarios values(27461002,"juan", "benavidez",223144, "juanb@gmail.com","sarmiento",130,0,"a","buenos aires", "a")
insert into usuarios values(25444021,"pedro", "valdez",442233, "pedrov@gmail.com","junin",545,0,"a","cordoba", "a")
insert into usuarios values(33585999,"teresa", "ricard",654987, "tereri@gmail.com","vidt",444,0,"a","buenos aires", "a")
insert into usuarios values(14332388,"fabiana", "gimenez",265412, "fabig@gmail.com","buenos aires",1100,1,"d","buenos aires", "a")
insert into usuarios values(44771325,"vicente", "perroni",335544, "vicentperroni@gmail.com","paraguay",530,0,"a","buenos aires", "a")
insert into usuarios values(23281118,"felipe", "hoya",741852, "felih@gmail.com","thames",878,3,"c","buenos aires", "a")
insert into usuarios values(15656444,"matias", "sffaeir",363451, "matis@gmail.com","av.belgrano",1585,6,"d","buenos aires", "a")
insert into usuarios values(22313646,"francisco", "di paolo",332145, "kiko@gmail.com","av.alsina",457,0,"a","cordoba", "a")
insert into usuarios values(17457489,"gonzalo", "muñoz",227814, "gonza@gmail.com","lopez de vega",1300,9,"a","cordoba", "a")
insert into usuarios values(33445512,"valeria", "perez",465123, "valep@gmail.com","guzman",4553,0,"a","cordoba", "a")
insert into usuarios values(29111002,"micaela", "alvarez",451124, "micaal@gmail.com","av.colon",775,0,"a","cordoba", "casa")


insert into tecnicos values(28641478,"roberto", "perez",332266, "robert@gmail.com","salta",705,0,"a","cordoba","electricista", "casa")
insert into tecnicos values(22334455,"silvio", "palvecino",787878, "silvio@gmail.com","alem",225,0,"a","cordoba","electricista", "casa")
insert into tecnicos values(35442211,"pablo", "martinez",998844, "pablom@gmail.com","9 de julio",357,0,"a","cordoba","gasista", "casa")
insert into tecnicos values(55224411,"diego", "fasano",778812, "diegof@gmail.com","maipu",1100,0,"a","cordoba","gasista", "local")
insert into tecnicos values(36364545,"alberto", "denis",7489658, "alber@gmail.com","libertad",165,0,"a","buenos aires","gasista", "local")
insert into tecnicos values(23456111,"juan", "nicastro",748596, "juann@gmail.com","almagro",780,0,"a","buenos aires","gasista", "local")
insert into tecnicos values(10222111,"nicolas", "albarracin",937182, "nicob@gmail.com","nuñez",3605,0,"a","buenos aires","electricista", "local")
insert into tecnicos values(16641322,"sebastian", "rodriguez",456132, "sebas@gmail.com","galvan",741,0,"a","buenos aires","electricista", "local")

insert into solicitud_trabajo values(001,13/01/2022,"tengo una perdida de gas en la cocina",25444021, 55224411)
insert into solicitud_trabajo values(002,10/11/2022,"cuando enchufo la soldadora salta la termica gral de la casa",17457489,28641478)
insert into solicitud_trabajo values(003,22/05/2021,"necesito hacer la conexion del pilar de luz al tablero pricipal de la casa",44771325,16641322)
insert into solicitud_trabajo values(004,"2022-11-05","necesito hacer la conexion del pilar de luz al tablero pricipal de la casa",44771325,16641322)


select * from tecnicos
select * from usuarios
update tecnicos set aclaraciones="casa" where dni_t=10222111
update solicitud_trabajo set fecha="2021-05-22" where num_sol=003
update solicitud_trabajo set fecha="2022-11-10" where num_sol=002
update solicitud_trabajo set fecha="2022-01-13" where num_sol=001
select * from solicitud_trabajo

select fecha, descripcion from solicitud_trabajo inner join tecnicos on solicitud_trabajo.sol_t=tecnicos.dni_t
select fecha, descripcion,dni_t,nombre, telefono from solicitud_trabajo inner join tecnicos on solicitud_trabajo.sol_t=tecnicos.dni_t








 