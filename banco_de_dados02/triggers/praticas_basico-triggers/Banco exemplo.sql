-- Aqui vamos criar o banco de exemplo para usar as triggers.

CREATE TABLE employees (
	id INT GENERATED ALWAYS AS IDENTITY,
	first_name VARCHAR(40) NOT NULL,
	last_name VARCHAR(40) NOT NULL,
	PRIMARY KEY(id)
);

-- Suponha que quando o nome de um funcionário muda, você deseja registrá-lo em uma tabela separada chamada employee_audits:

CREATE TABLE employee_audits (
   id INT GENERATED ALWAYS AS IDENTITY,
   employee_id INT NOT NULL,
   last_name VARCHAR(40) NOT NULL,
   changed_on TIMESTAMP NOT NULL
);


