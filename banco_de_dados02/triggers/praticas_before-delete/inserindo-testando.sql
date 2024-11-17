-- Inserindo dados e testando trigger

INSERT INTO products (name, price, status) VALUES
 	('A', 10.99, true),
 	('B', 20.49, false),
 	('C', 15.79, true)
	RETURNING *;

--teste

DELETE FROM products WHERE id = 1;