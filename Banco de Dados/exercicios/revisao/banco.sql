create database revisao;
use revisao;

create table aluno (
	id int primary key auto_increment,
    nome varchar(100) not null,
    email varchar(255) not null,
    data_nascimento date not null
);

create table professor (
	id int primary key auto_increment,
    nome varchar(100) not null,
    email varchar(255) not null,
    especialidade varchar(255) not null
);

create table curso (
	id int primary key auto_increment,
    nome varchar(100) not null,
    descricao varchar(255) not null,
    id_professor int not null,
    FOREIGN KEY (id_professor) REFERENCES professor(id)
);

create table matricula (
	id int primary key auto_increment,
    id_aluno int not null,
    id_curso int not null,
    data_matricula date not null,
    FOREIGN KEY (id_aluno) REFERENCES aluno(id),
    FOREIGN KEY (id_curso) REFERENCES curso(id)
);

create table avaliacao (
	id int primary key auto_increment,
    id_matricula int not null,
    nota decimal(3,2) not null,
    data_avaliacao date not null,
    FOREIGN KEY (id_matricula) REFERENCES matricula(id)
);

select * from aluno;
select nome, id_professor from curso;
select * from matricula where id_curso = "Banco de Dados";
select count(id_curso) from matricula group by id_curso;
select AVG(nota) as media_de_notas from avaliacao;
select * from avaliacao where nota = "null";

