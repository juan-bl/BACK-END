create database coresDoBrasil;
use coresDoBrasil;

create table clientes (
	nome VARCHAR(100), 
    email VARCHAR(255) UNIQUE, 
    telefone VARCHAR(15)
);

INSERT INTO clientes (nome, email, telefone) values ("Juscelio", "emailtop@gmail.com", "(61) 99999");
INSERT INTO clientes (nome, email, telefone) values ("Victor", "", "");
INSERT INTO clientes (nome, email, telefone) values ("Amando", "", "");

alter table clientes modify email VARCHAR(200) UNIQUE NOT NULL;
select * from clientes;

DROP database coresDoBrasil;

-- produtos
create table produtos (
	id INT UNIQUE NOT NULL,
    nome VARCHAR(255) NOT NULL,
    peso DECIMAL(6,2) NOT NULL,
    cor VARCHAR(100)
);

INSERT INTO produtos values (1, "Creme Hidradante Cerave", 469.00, "branco");
INSERT INTO produtos values (2, "Chocolate", 500.00, "");

-- PEDIDO
create table pedidos (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    pagamento VARCHAR(80),
    valor DECIMAL(6,2),
    produto_id INT NOT NULL,
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

INSERT INTO pedidos (pagamento, valor, produto_id) values ("Pix", 79.79, 1);