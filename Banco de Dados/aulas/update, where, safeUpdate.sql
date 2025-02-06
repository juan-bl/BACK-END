SELECT * FROM employees;
select * from employees where first_name = "Juan";

insert into employees (birth_date, first_name, last_name, gender, hire_date) value ("2005-02-25", "Juan", "Costa", "M", "2024-09-02");

SET SQL_SAFE_UPDATES =0;
update employees set last_name = "Santos Rohod" where last_name = "Costa";