create database atividade;
use atividade;

create table clientes (
	id_cliente int primary key auto_increment,
    nome varchar(100)
);

create table pedidos (
	id_pedidos int primary key auto_increment,
    id_cliente int not null,
    data_pedido varchar(11),
    foreign key (id_cliente) references clientes(id_cliente)
);

insert into clientes (nome) values ("Carlos");
insert into pedidos (id_cliente, data_pedido) values (1, "18/02/2025");
insert into pedidos (id_cliente, data_pedido) values (1, "19/02/2025");
insert into pedidos (id_cliente, data_pedido) values (1, "20/02/2025");

insert into clientes (nome) values ("Ana");
insert into pedidos (id_cliente, data_pedido) values (2, "18/02/2025");

insert into clientes (nome) values ("Bruna");

insert into clientes (nome) values ("Jessica");

insert into clientes (nome) values ("Victor");
insert into pedidos (id_cliente, data_pedido) values (5, "18/02/2025");

insert into clientes (nome) values ("Fernanda");
insert into pedidos (id_cliente, data_pedido) values (6, "18/02/2025");
insert into pedidos (id_cliente, data_pedido) values (6, "19/02/2025");

select * from clientes;
select * from pedidos;

select pedidos.id_pedidos, clientes.nome from pedidos inner join clientes on pedidos.id_cliente = clientes.id_cliente;
select clientes.nome, pedidos.id_pedidos from clientes left join pedidos on pedidos.id_cliente = clientes.id_cliente;
select id_cliente, count(id_pedidos) from pedidos group by id_cliente;
select clientes.nome, count(pedidos.id_pedidos) from pedidos left join clientes on pedidos.id_cliente = clientes.id_cliente group by clientes.nome;
select clientes.nome, count(pedidos.id_pedidos) from clientes left join pedidos on pedidos.id_cliente = clientes.id_cliente group by clientes.nome;