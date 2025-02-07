create database loja;
use loja;
create table roupas (nome VARCHAR(100), tamanho varchar(3), cor VARCHAR(100), preco DECIMAL(4,2));

insert into roupas (nome, tamanho, cor, preco) values ("Calça Jens", "M", "Azul", 45.50);
insert into roupas (nome, tamanho, cor, preco) values ("Jaqueta", "G", "Preto", 60);
insert into roupas (nome, tamanho, cor, preco) values ("Tenis", "42", "Amarelo", 120.99);
insert into roupas (nome, tamanho, cor, preco) values ("Camiseta", "P", "Azul", 55);
insert into roupas (nome, tamanho, cor, preco) values ("luvas", "35", "Preto", 40);
insert into roupas (nome, tamanho, cor, preco) values ("Meias", "42", "Rosa", 29.99);
#drop database loja;
select * from roupas;
select * from roupas where cor = "Azul"