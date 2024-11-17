-- Nesse banco, terá um inventario e um historico de movimentação.

CREATE TABLE inventario(
	produto_id INTEGER PRIMARY KEY,
	quantidade INTEGER NOT NULL DEFAULT 0
);

CREATE TABLE inventario_historico(
	produto_id INTEGER NOT NULL,
	tipo VARCHAR(7) NOT NULL,
	quantidade_movimento INTEGER NOT NULL
	datahora TIMESTAMP NO NULL,
);

