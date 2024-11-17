SELECT * FROM employees;
SELECT * FROM employee_audits;

-- INSERINDO ALGUNS DADOS

INSERT INTO employees (first_name, last_name) VALUES ('John', 'Doe');
INSERT INTO employees (first_name, last_name) VALUES ('Lily', 'Bush');


-- testando a primeira triggers, sobre guardar o log de alteração do nome dos funcionarios

UPDATE employees SET last_name = 'Brown' WHERE id = 2;


