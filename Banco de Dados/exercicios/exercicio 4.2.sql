create table produtos (id_produto int primary key not null auto_increment, nome_produto varchar(100) not null unique, preco decimal(6,2) not null, estoque int not null);

insert into produtos (nome_produto, preco , estoque) values ("Smartphone", 1300, 10);
insert into produtos (nome_produto, preco , estoque) values ("Smartwatch", 800, 10);

select id_produto, nome_produto from produtos where nome_produto like "smart%";