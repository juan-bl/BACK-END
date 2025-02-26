create database loja;
use loja;

create table clientes (
	id_cliente int primary key auto_increment,
    nome VARCHAR(150),
	email VARCHAR(255) not null unique,
	telefone VARCHAR(20) not null unique,
	endereco VARCHAR(255) not null unique
);

create table pedidos (
	id_pedido INT primary key auto_increment,
	id_cliente INT not null,
	data_pedido DATE not null,
	total DECIMAL(6,2) not null,
	status_pedido VARCHAR(45) not null,
    foreign key (id_cliente) references clientes(id_cliente)
);

create table fornecedores (
	id_fornecedor INT primary key auto_increment,
	nome_fornecedor VARCHAR(150) not null,
	contato VARCHAR(20) not null unique,
	endereco VARCHAR(255) not null unique
);

create table produtos (
	id_produto INT primary key auto_increment,
	nome_produto VARCHAR(150) not null,
	preco DECIMAL(6,2) not null,
	id_fornecedor INT not null,
	estoque INT not null,
    foreign key (id_fornecedor) references fornecedores(id_fornecedor)
);

create table pagamentos (
	id_pagamento INT primary key auto_increment,
	id_pedido INT not null,
	metodo_pagamento VARCHAR(45) not null,
	status_pagamento VARCHAR(45) not null,
	valor_pago DECIMAL(6,2) not null,
    foreign key (id_pedido) references pedidos(id_pedido)
);

INSERT INTO clientes (nome, email, telefone, endereco) values ("Juan", "juan@email.com", "61 91234-5678", "QNL 10 Conjunto E Casa 22 - Taguatinga Norte");
INSERT INTO fornecedores (nome_fornecedor, contato, endereco) values ("Mario", "61 91111-1111", "Super Mario World");
INSERT INTO pedidos (id_cliente, data_pedido, total, status_pedido) values (1, "2025-02-25", 500, "Concluido");
INSERT INTO produtos (nome_produto, preco, id_fornecedor, estoque) values ("Celular", 1500, 1, 20);
INSERT INTO pagamentos (id_pedido, metodo_pagamento, status_pagamento, valor_pago) values (1, "Cartão de credito", "pago", 1500);