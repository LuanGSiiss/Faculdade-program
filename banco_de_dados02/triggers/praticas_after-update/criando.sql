-- Criando banco

CREATE TABLE salarios(
	empregado_id SERIAL PRIMARY KEY,
	nome VARCHAR(100) NOT NULL,
	salario NUMERIC NOT NULL
);

CREATE TABLE salarios_mudancas(
	sm_id SERIAL PRIMARY KEY,
	empregado_id INTEGER NOT NULL,
	salario_antigo NUMERIC NOT NULL,
	novo_salario NUMERIC NOT NULL,
	mudanca_data TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
