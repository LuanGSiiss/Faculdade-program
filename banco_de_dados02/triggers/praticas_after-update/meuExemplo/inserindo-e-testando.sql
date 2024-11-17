-- Inserindo dados e testando triggers

SELECT * FROM inventario;
SELECT * FROM inventario_historico;

--INSERTS
INSERT INTO inventario(produto_id, quantidade) VALUES 
	(1, 10),
	(2, 20),
	(5, 10),
	(10, 40);

--UPDATES, TESTANDO
UPDATE inventario SET quantidade = 15 WHERE produto_id = 1;
UPDATE inventario SET quantidade = 12 WHERE produto_id = 1;
UPDATE inventario SET quantidade = 20 WHERE produto_id = 10;
UPDATE inventario SET quantidade = 3 WHERE produto_id = 5;

