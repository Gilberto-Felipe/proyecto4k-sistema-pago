## Proyecto4k-sistema-pagos

drop database if exists proyecto4kPagos; 
create database proyecto4kPagos CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
use proyecto4kPagos;

drop table if exists perfiles;
create table perfil(
	id int auto_increment,
    perfil varchar(15) not null,
    primary key (id)
);
desc perfil;

drop table if exists usuario;
create table usuario(
	id int auto_increment,
    nombre varchar(50) not null,
    apellido varchar(50) not null,
    telefono varchar(10) not null,
    email varchar(255) not null,
    contraseña varchar(8) not null, 
	primary key (id)
);
desc usuario;

drop table if exists deuda;
create table deuda(
	id int auto_increment,
    id_usuario int not null,
    porcionDeuda decimal(15,2) not null,
    fechaDeuda datetime not null,
    estado varchar(10) not null,
    primary key (id), 
    constraint FK_usuarioDeuda foreign key (id_usuario) references usuario(id)
);
desc deuda;

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
desc detallePagos;

# fin

