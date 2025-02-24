# **Concessionária M.J.**

1️⃣ Escolha do Projeto

- Devem listar os requisitos mínimos do sistema e sobre o sistema escolhido.
    - Escolhemos fazer uma concessionária de carros, então montamos um sistema de vendas. Para isto precisamos de:
        - Cadastro de clientes;
        - Cadastro do colaborador;
        - Cadastro de carros;
        - Cadastro de venda;
        - Histórico de compra do cliente;
        - Histórico de venda do colaborador.
        

2️⃣ Modelagem Conceitual

![concenssionariaDB240225.png](attachment:ffcdf5d7-e29d-4760-aa9e-563e6d4cb3d5:concenssionariaDB240225.png)

- Chaves primárias:
    - id_cliente;
    - id_colaborador;
    - id_produtos;
    - id_vendas;
    - id_historico_de_compra;
    - id_historico_de_venda;
- Chaves estrangeiras:
    - Em vendas - id_cliente, id_colaborador, id_produtos;
    - Em histórico de compra - id_cliente, id_vendas;
    - Em histórico de venda - id_colaborador, id_vendas
    

3️⃣Conversão para Modelo Relacional

```
CREATE DATABASE concessionaria_MJ;
USE concessionaria_MJ;

CREATE TABLE clientes (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome varchar(150) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    telefone VARCHAR(20) NOT NULL UNIQUE
);
select * from clientes;

CREATE TABLE produto_carros (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    marca VARCHAR(100) NOT NULL,
    preco DECIMAL(6,2) NOT NULL
);
select * from produto_carros;

CREATE TABLE colaboradores (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome_colaborador VARCHAR(150) NOT NULL,
    matricula varchar(6) NOT NULL
);
select * from colaboradores;

CREATE TABLE vendas (
	id INT PRIMARY KEY AUTO_INCREMENT,
    id_carro INT NOT NULL,
    id_cliente INT NOT NULL,
    id_colaborador INT NOT NULL,
    dataDaVenda VARCHAR(10),
    horaDaVenda VARCHAR(5),
    quantidade int not null,
    dataDaReserva VARCHAR(10),
    horaDaReserva VARCHAR(5),
    FOREIGN KEY (id_carro) REFERENCES produto_carros(id),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id),
    FOREIGN KEY (id_colaborador) REFERENCES colaboradores(id)
);
select * from vendas;

CREATE TABLE historicoDeCompras (
	id INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT NOT NULL,
    id_venda INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id),
    FOREIGN KEY (id_venda) REFERENCES vendas(id)
);
select * from historicoDeCompras;

CREATE TABLE historicoDeVendas (
	id INT PRIMARY KEY AUTO_INCREMENT,
    id_colaborador INT NOT NULL,
    id_venda INT NOT NULL,
    FOREIGN KEY (id_colaborador) REFERENCES colaboradores(id),
    FOREIGN KEY (id_venda) REFERENCES vendas(id)
);
select * from historicoDeCompras;
```

4️⃣Implementação no Banco de Dados

```
INSERT INTO vendas (id_carro, id_cliente, id_colaborador, dataDaVenda, horaDaVenda, dataDareserva, horaDaReserva, quantidade) VALUES (1,1,1,"25/10/2021","12:24","22/10/2021","10:00",2);
INSERT INTO vendas (id_carro, id_cliente, id_colaborador, dataDaVenda, horaDaVenda, dataDareserva, horaDaReserva, quantidade) VALUES (2,2,2,"12/11/2021","15:25","11/11/2021","16:17",3);
INSERT INTO vendas (id_carro, id_cliente, id_colaborador, dataDaVenda, horaDaVenda, dataDareserva, horaDaReserva, quantidade) VALUES (3,3,3,"17/11/2021","12:24","10/11/2021","09:45",4);
INSERT INTO vendas (id_carro, id_cliente, id_colaborador, dataDaVenda, horaDaVenda, dataDareserva, horaDaReserva, quantidade) VALUES (4,4,4,"25/10/2021","12:24","15/10/2021","15:38",1);

INSERT INTO clientes (nome, email, telefone) VALUES ("Fernanda","fefe@gmail.com", "55 77 9845-6765");
INSERT INTO clientes (nome, email, telefone) VALUES ("Paola","Paolaguerra@hotmail.com", "55 11 99775-6795");
INSERT INTO clientes (nome, email, telefone) VALUES ("Grimaldo","grimas3245@gmail.com", "55 61 97685-4568");
INSERT INTO clientes (nome, email, telefone) VALUES ("Pedro","alvespedro342@hotmail.com", "55 19 99121-4587");

INSERT INTO produto_carros (nome, preco, marca) VALUES ("BYD Dolphin",140.000, "BYD");
INSERT INTO produto_carros (nome, preco, marca) VALUES ("Renault Kwid",77.000, "Renault");
INSERT INTO produto_carros (nome, preco, marca) VALUES ("FIAT Toro",140.000, "FIAT");
INSERT INTO produto_carros (nome, preco, marca) VALUES ("Volkswagen Nivus",140.000, "Volkswagen");

INSERT INTO colaboradores (nome_colaborador, matricula) VALUES ("Pablo","123456");
INSERT INTO colaboradores (nome_colaborador, matricula) VALUES ("Cintia","654321");
INSERT INTO colaboradores (nome_colaborador, matricula) VALUES ("Lauana","098765");
INSERT INTO colaboradores (nome_colaborador, matricula) VALUES ("Olivia","567890");

INSERT INTO historicoDeCompras (id_cliente, id_venda) VALUE (1,1);
INSERT INTO historicoDeCompras (id_cliente, id_venda) VALUE (2,2);
INSERT INTO historicoDeCompras (id_cliente, id_venda) VALUE (3,3);
INSERT INTO historicoDeCompras (id_cliente, id_venda) VALUE (4,4);

INSERT INTO historicoDeVendas (id_colaborador, id_venda) VALUE (1,1);
INSERT INTO historicoDeVendas (id_colaborador, id_venda) VALUE (2,2);
INSERT INTO historicoDeVendas (id_colaborador, id_venda) VALUE (3,3);
INSERT INTO historicoDeVendas (id_colaborador, id_venda) VALUE (4,4);
```

5️⃣ Análise Cruzada e Feedback

- Só apontaram o erro em uma chave estrangeira, e já corrigimos.

6️⃣Documentação no GitHub

- [https://github.com/juan-bl/BACK-END/tree/main/Banco de Dados/exercicios/projeto 1](https://github.com/juan-bl/BACK-END/tree/main/Banco%20de%20Dados/exercicios/projeto%201)
