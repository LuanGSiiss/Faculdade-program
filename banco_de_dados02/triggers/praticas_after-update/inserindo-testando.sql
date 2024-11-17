-- inserindo dados e testando triggers

SELECT * FROM salarios;
SELECT * FROM salarios_mudancas;

INSERT INTO salarios(nome, salario) VALUES
   ('John Doe', 90000),
   ('Jane Doe', 95000)
	RETURNING *;

UPDATE salarios SET salario = salario * 1.05
	WHERE empregado_id = 1;

