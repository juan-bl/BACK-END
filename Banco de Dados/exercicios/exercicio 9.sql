SELECT UCASE(nome_completo) from clientes;

SELECT LCASE(email) from clientes;

select * from produtos where descricao like “notebook”;

select count(email) from clientes where email like “%@gmail.com”;

SELECT REPLACE(endereco , "Av.","Avenida") FROM clientes WHERE id_clientes;

SELECT * FROM produtos WHERE codigo = "null";