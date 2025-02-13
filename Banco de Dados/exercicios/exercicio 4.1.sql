create database atividade;
use atividade;
create table vendas (id_venda int primary key not null auto_increment, id_produto int not null, quantidade int not null, preco_unitario decimal(6,2) not null, id_categoria int NOT NULL);

insert into vendas (id_produto, quantidade, preco_unitario, id_categoria) values (1, 2, 500, 2);
insert into vendas (id_produto, quantidade, preco_unitario, id_categoria) values (2, 5, 10, 1);
insert into vendas (id_produto, quantidade, preco_unitario, id_categoria) values (3, 2, 1000, 2);
insert into vendas (id_produto, quantidade, preco_unitario, id_categoria) values (4, 2, 5.50, 1);

select id_categoria, sum(preco_unitario * quantidade) from vendas where id_categoria = 1;
select id_categoria, sum(preco_unitario * quantidade) from vendas where id_categoria = 2;