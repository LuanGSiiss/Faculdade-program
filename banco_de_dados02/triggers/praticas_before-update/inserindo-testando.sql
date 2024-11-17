-- inserindo dados e testando triggers

INSERT INTO empregados(empregado_nome, salario)
VALUES
   ('John Doe', 70000),
   ('Jane Doe', 80000)
RETURNING *;

UPDATE empregados SET salario = salario * 0.9
	WHERE empregado_id = 1;