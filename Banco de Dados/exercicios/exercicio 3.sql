create database banco;
use banco;

create table contas (id INT PRIMARY KEY NOT NULL AUTO_INCREMENT, nome VARCHAR(100) NOT NULL, sobrenome VARCHAR(200) NOT NULL, saldo decimal(6,2) not null, dataNas date not null);

insert into contas (nome, sobrenome, saldo, dataNas) values ("Juan", "Ferreira da Costa", 50000.50, "2005-02-25");
insert into contas (nome, sobrenome, saldo, dataNas) values ("João", "Pedro", 10000, "1997-01-02");
insert into contas (nome, sobrenome, saldo, dataNas) values ("Milena", "Guimaraes", 40000, "2005-12-26");

select * from contas;
drop database banco;