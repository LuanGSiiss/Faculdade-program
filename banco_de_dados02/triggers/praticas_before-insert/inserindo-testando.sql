-- inserindo dados e testando triggers

SELECT * FROM inventory_stat;

INSERT INTO inventory(product_id, quantity)
VALUES(12, 100)
RETURNING *;

INSERT INTO inventory(product_id, quantity)
VALUES(15, 200)
RETURNING *;