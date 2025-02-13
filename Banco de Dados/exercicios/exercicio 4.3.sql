create table clientes (id_cliente int primary key not null auto_increment, nome_cliente varchar(100) not null, estado varchar(2) not null);

insert into clientes (nome_cliente, estado) values ("Juan", "DF");
insert into clientes (nome_cliente, estado) values ("Mario", "SP");
insert into clientes (nome_cliente, estado) values ("Ana", "RJ");
insert into clientes (nome_cliente, estado) values ("Mario", "MG");

select * from clientes where estado in ("SP", "RJ", "MG");