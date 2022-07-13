SET DATESTYLE TO 'European'
CREATE TABLE clientes(
	id_cliente int primary key,
	cedula varchar(20),
	nombre varchar(20),
	apellido varchar(20),
	sexo char(1),
	fecha_nacimiento date
);

create table productos(
	id_producto int primary key,
	descripcion varchar(200),
	precio double precision 
);
create table compras(
	id_cliente int,
	id_producto int,
	fecha_compra date,
	foreign key (id_cliente) references clientes (id_cliente),
	foreign key (id_producto) references productos (id_producto)
);

select * from clientes
insert into clientes values(1,'123456789','Nestor','Romero','M','29/06/02')--Datos de prueba
COMMIT
