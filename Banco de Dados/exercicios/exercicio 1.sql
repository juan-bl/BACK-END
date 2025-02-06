create database cadastro;
use cadastro;
create table pessoas (nome VARCHAR(100), rg INT(20), cpf INT(20), idade INT(3));
alter table pessoas add saldo decimal(6,2);
select * from pessoas;

insert into pessoas (nome, rg, cpf, idade, saldo) values ("Victor", 1234567, 12345678901, 21, 10.5);
insert into pessoas (nome, rg, cpf, idade, saldo) values ("Juan", 1234567, 12345678902, 19, 600.5);
insert into pessoas (nome, rg, cpf, idade, saldo) values ("Maria Maria", 1234567, 12345678903, 22, 1000);
insert into pessoas (nome, rg, cpf, idade, saldo) values ("Bentinho", 1234567, 12345678904, 30, 15);
insert into pessoas (nome, rg, cpf, idade, saldo) values ("Capitu", 1234567, 12345678905, 28, 50.99);

select * from pessoas;