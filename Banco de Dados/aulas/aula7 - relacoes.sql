CREATE DATABASE relacionamentos;
USE relacionamentos;

-- one to one (um para um)
CREATE TABLE alunos (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    turma VARCHAR(5)
);

create table contatos (
	id int primary key auto_increment,
    telefone varchar(20),
    aluno_id int not null,
    foreign key (aluno_id) references alunos(id)
);

INSERT INTO contatos (telefone, aluno_id) values ("(61)999999999", 1);
INSERT INTO contatos (telefone, aluno_id) values ("(61)999999999", 2);
INSERT INTO contatos (telefone, aluno_id) values ("(61)999999999", 3);


INSERT INTO alunos (nome, turma) values ("Juan", "002M");
INSERT INTO alunos (nome, turma) values ("Raeyson", "003V");
INSERT INTO alunos (nome, turma) values ("Giovana", "003V");



SELECT * FROM alunos;
SELECT * FROM contatos;
SELECT * FROM contatos where aluno_id = 1;
select *, alunos.nome, alunos.turma, contatos.telefone from alunos join contatos on contatos.aluno_id;

-- one to many
create table clientes (
	id int primary key auto_increment,
    nome varchar(100)
);

create table pedidos (
	id int primary key auto_increment,
    valorTotal float,
    cliente_id int not null,
    foreign key (cliente_id) references clientes(id)
);

insert into clientes (nome) values ("George");

insert into pedidos (valorTotal, cliente_id) values (90, 1);
insert into pedidos (valorTotal, cliente_id) values (80, 1);
insert into pedidos (valorTotal, cliente_id) values (100, 1);

select * from clientes;
select * from pedidos;