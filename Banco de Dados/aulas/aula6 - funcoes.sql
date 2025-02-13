USE employees;

SELECT * FROM salaries;

-- min
SELECT MIN(salary) AS SALARIO_MAIS_BAIXO FROM salaries;
-- min raiz
SELECT salary FROM salaries ORDER BY salary ASC LIMIT 1;

-- max
SELECT MAX(salary) AS SALARIO_MAIS_BAIXO FROM salaries;
-- max raiz
SELECT MAX(salary) FROM salaries ORDER BY salary ASC LIMIT 1;

-- count
select count(*) from salaries;
select count(*) from employees where gender = "M";
select count(*) from employees where first_name = "Juan";

 -- like (* pesquisar)
-- termo% -> desconsidera final
 SELECT * FROM employees where first_name LIKE "Geo%";
 -- %termo -> desconsidera o começo
 SELECT * FROM employees WHERE first_name LIKE "%or";
 -- %termo% -> desconsidera o começo e o fim
 SELECT * FROM employees WHERE first_name LIKE "%in%";
 
 -- IN -> Kalloufi, Genin
 -- o um IN é eficaz para o uso do kalloufi e do genin simultaneamente/vário nomes, se n, só um nome usa o =
 SELECT * FROM employees WHERE last_name IN ("kalloufi", "Genin");
 
 -- Between -> entre
 SELECT * FROM salaries WHERE salary BETWEEN '40000' AND '50000';
 
 -- SUM -> soma
 SELECT SUM(salary) FROM salaries;