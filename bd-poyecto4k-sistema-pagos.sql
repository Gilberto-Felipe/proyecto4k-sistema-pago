## 				Proyecto4k-sistema-pagos

/*+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
+ 						DDL														  -
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

drop database if exists proyecto4kPagos; 
create database proyecto4kPagos CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
use proyecto4kPagos;

drop table if exists perfiles;
create table perfil(
	id int auto_increment,
    perfil varchar(15) not null,
    primary key (id)
);
-- desc perfil;

drop table if exists concepto;
create table concepto(
	id int auto_increment,
    concepto varchar(100) not null,
    precio decimal(15,2) not null,
    primary key (id)
);
-- desc concepto;

drop table if exists usuarios;
create table usuarios(
	id int auto_increment,
    nombre varchar(50) not null,
    apellido varchar(50) not null,
    telefono varchar(10) not null,
    email varchar(255) not null,
    contraseña varchar(10) not null, 
    id_perfil int not null,
	primary key (id),
    constraint FK_perfilUsuario foreign key (id_perfil) references perfil(id)
);
-- desc usuario;

drop table if exists deuda;
create table deuda(
	id int auto_increment,
    id_usuario int not null,
    id_concepto int not null,
    cantidadDeuda decimal(15,2) not null,
    fechaDeuda datetime,
    deudaRestante decimal(15,2),
    estadoDeuda bool not null,
    primary key (id), 
    constraint FK_usuarioDeuda foreign key (id_usuario) references usuario(id),
    constraint FK_conceptoDeuda foreign key (id_concepto) references concepto(id)
);
-- desc deuda;

drop table if exists detallePagos;
create table detallePagos(
	id_usuario int,
	id_deuda int,
    cantidadPagada decimal(15,2) default 0,
    fechaPago datetime not null,
    primary key (id_usuario, id_deuda),
    constraint FK_usuarioDetalles foreign key (id_usuario) references usuario(id),
    constraint FK_deudaDetalles foreign key (id_deuda) references deuda(id)
);
-- desc detallePagos;


/*+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
+ 							DML
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/


# insertando datos a tabla perfil
-- desc perfil;
insert into perfil (perfil) values ('administrador');
insert into perfil (perfil) values ('usuario');
-- select * from perfil;

# insertando datos en usuario
-- desc usuario;
insert into usuario (nombre, apellido, telefono, email, contraseña, id_perfil) 
values ('Humberto', 'Ramírez', '1234554321', 'raghum76@ucol.mx', 'qweRty789', 1);
insert into usuario (nombre, apellido, telefono, email, contraseña, id_perfil) 
values ('Pedro', 'Ortiz', '2345678901', 'raghum76@ucol.mx', '123', 2);
insert into usuario (nombre, apellido, telefono, email, contraseña, id_perfil) 
values ('Gilberto', 'Ramírez', '3345678901', 'gramirez25@ucol.mx', '123', 2);
insert into usuario (nombre, apellido, telefono, email, contraseña, id_perfil) 
values ('Ismael', 'Meza', '4345678901', 'imeza@ucol.mx', '123', 2);
insert into usuario (nombre, apellido, telefono, email, contraseña, id_perfil) 
values ('Gerardo', 'Barreto', '5345678901', 'gbarreto@ucol.mx', '123', 2);
-- select * from usuario;

#insertando datos en concepto
-- desc concepto;
insert into concepto (concepto) values ('música');
insert into concepto (concepto) values ('mesa');
insert into concepto (concepto) values ('hora de mariachi');
insert into concepto (concepto) values ('tequila');

# insertando datos en deuda
-- desc deuda;
insert into deuda (id_usuario, id_concepto, cantidadDeuda, fechaDeuda, deudaRestante, estado) 
values (2, 1, 500, '2019-06-07', null, 0);

(id_usuario, id_concepto, cantidadDeuda, fechaDeuda, deudaRestante, estado) 
values (2, 1, 500, '2019-06-07', null, 0);
insert into deuda (id_usuario, id_concepto, porcionDeuda, fechaDeuda, estado) 
values (4, 3, 1000, '2019-06-07',0);
insert into deuda (id_usuario, porcionDeuda, fechaDeuda, estado) 
values (5, 1, 500, '2019-06-07',1);
-- select * from deuda;

# insertando datos en detallePagos
desc detallePagos;
insert into detallePagos (id_usuario, id_deuda, cantidadPagada, fechaPago) 
values (2, 1, 100, '2019-06-10');
insert into detallePagos (id_usuario, id_deuda, cantidadPagada, fechaPago) 
values (3, 1, 500, '2019-06-10');


