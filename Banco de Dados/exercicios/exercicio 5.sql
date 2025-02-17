create database livrariaDB;
use livrariaDB;

create table autores (id_autor int primary key auto_increment, nome varchar(100) not null, nacionalidade varchar(100));
create table livros (id_livros int primary key auto_increment, titulo varchar(100), ano_publicao int, id_autor int not null, foreign key (id_autor) references autores(id_autor));

insert into autores (nome, nacionalidade) values ("Vitor Martins", "Brasileiro");
insert into autores (nome, nacionalidade) values ("Pedro Rhuas", "Brasileiro");
insert into autores (nome, nacionalidade) values ("Juan Nícolas", "Brasileiro");

insert into livros (titulo, ano_publicao, id_autor) values ("Quinze Dias", 2020, 1);
insert into livros (titulo, ano_publicao, id_autor) values ("Se a Casa 8 Falasse", 2022, 1);
insert into livros (titulo, ano_publicao, id_autor) values ("Um Milhão de Finais Felizes", 2020, 1);
insert into livros (titulo, ano_publicao, id_autor) values ("Enquanto Eu Não Te Encontro", 2021, 2);


CREATE TABLE livros_autores (
	id_autor INT NOT NULL,
    id_livro INT NOT NULL,
    FOREIGN KEY (id_autor) REFERENCES autores(id_autor),
    FOREIGN KEY (id_livro) REFERENCES livros(id_livros)
);

insert into livros_autores (id_autor, id_livro) values (1, 1);
insert into livros_autores (id_autor, id_livro) values (2, 2);
insert into livros_autores (id_autor, id_livro) values (3, 3);

select * from livros_autores;
select * from autores;
select * from livros;
select * from livros where id_autor = 1;