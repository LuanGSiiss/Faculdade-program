--

CREATE TABLE empregados (
	empregado_id SERIAL PRIMARY KEY,
	empregado_nome VARCHAR(100) NOT NULL,
	salario NUMERIC NOT NULL
)