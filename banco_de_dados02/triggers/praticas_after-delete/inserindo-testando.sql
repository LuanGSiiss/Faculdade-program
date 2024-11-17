-- Inserindo dados e testando triggers

SELECT * FROM employee_archives;

INSERT INTO employees02(name, salary) VALUES
   ('John Doe', 90000),
   ('Jane Doe', 80000)
	RETURNING *;

-- testando

DELETE FROM employees02 WHERE id = 1 RETURNING *;