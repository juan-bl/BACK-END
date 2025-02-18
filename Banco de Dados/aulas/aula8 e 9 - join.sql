create database joinaula;
use joinaula;

create table pessoa (
	id int primary key auto_increment,
    nome varchar(100),
    nacionalidade varchar(100)
);

create table endereco (
	id int primary key auto_increment,
	rua varchar(255),
    numero varchar(100),
    pessoa_id int not null,
    foreign key (pessoa_id) references pessoa(id)
);

insert into pessoa (nome, nacionalidade) values ("Victor", "BR");
insert into pessoa (nome, nacionalidade) values ("Rudson", "USA");
insert into endereco (rua, numero, pessoa_id) values ("Ceilandia, P Norte", "QNQ 14", 1);

-- INNER (INTERSEÇÃO OU "COMUM NAS DUAS COLUNAS")
select pessoa.nome, endereco.rua from pessoa inner join endereco on pessoa.id = endereco.id;
-- SEM INNER
select pessoa.nome, endereco.rua from endereco right join pessoa on pessoa.id = endereco.id;
-- RIGHT JOIN (JUNTA AS DUAS, PRIORIZANDO A TABELA DA DIREITA)
select pessoa.nome, endereco.rua from endereco right join pessoa on pessoa.id = endereco.id;
-- LEFT JOIN (JUNTA AS DUAS, PRIORIZANDO A TABELA DA ESQUERDA)
select pessoa.nome, endereco.rua from endereco left join pessoa on pessoa.id = endereco.id;

use employees;
select * from employees;

-- O QUE QUERO, DE ONDE, AGRUPAR QUEM?
select gender, count(gender) from employees group by gender;
select dept_no, count(dept_no) from dept_emp group by dept_no;