create table cliente (
id serial primary key, nome varchar(20), cpf char(3), endereco_id int --chave estrangeira
);

create table endereco (
 id serial primary key, rua varchar (10), numero int, cidade varchar(10));

alter table cliente add foreign key (endereco_id) references endereco(id);

insert into endereco (rua, numero, cidade)
values('x', 100, 'A'), ('y', 101, 'B'), ('z', 200, 'C'), ('w', 300, 'D');

insert into cliente (nome, cpf, endereco_id)
values('Ana', '123', 1), ('César', '456', 2), ('Júlia', '789', 3), ('Amanda', '111', null), ('Cássiio', '258', null), ('Gabriel', '614', null) ;

select * from cliente; 
select * from endereco;


































select
	*
from
	cliente c
inner join endereco e on
	c.endereco_id = e.id;

