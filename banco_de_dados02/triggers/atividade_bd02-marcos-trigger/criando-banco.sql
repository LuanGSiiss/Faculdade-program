-- 
BEGIN;


CREATE TABLE IF NOT EXISTS especie (
    especie_codigo SERIAL NOT NULL,
    descricao VARCHAR(100) NOT NULL,
    CONSTRAINT pk_especie PRIMARY KEY (especie_codigo)
);

CREATE TABLE IF NOT EXISTS raca (
    raca_codigo SERIAL NOT NULL,
    descricao VARCHAR(100) NOT NULL,
    especie_codigo INTEGER NOT NULL, -- AQUI TEM CHAVE ESTRANGEIRA TAMBÉM
    CONSTRAINT pk_raca PRIMARY KEY (raca_codigo),
	CONSTRAINT pk_especie FOREIGN KEY (especie_codigo)
    	REFERENCES especie(especie_codigo)
);

CREATE TABLE IF NOT EXISTS tutor (
    tutor_codigo SERIAL NOT NULL,
    nome VARCHAR(100) NOT NULL,
    contato VARCHAR(100) NOT NULL,
    saldodevedor NUMERIC(10, 2) NOT NULL DEFAULT 0,
    CONSTRAINT pk_tutor PRIMARY KEY (tutor_codigo)
);

CREATE TABLE IF NOT EXISTS animal (
    animal_codigo SERIAL NOT NULL,
    apelido VARCHAR(100) NOT NULL,
    nascimento DATE NOT NULL,
    tutor_codigo INTEGER NOT NULL, -- AQUI TEM CHAVE ESTRANGEIRA TAMBÉM
    raca_codigo INTEGER NOT NULL, -- AQUI TEM CHAVE ESTRANGEIRA TAMBÉM
    CONSTRAINT pk_animal PRIMARY KEY (animal_codigo),
	CONSTRAINT fk_raca FOREIGN KEY (raca_codigo)
    	REFERENCES raca(raca_codigo),
	CONSTRAINT fk_tutor FOREIGN KEY (tutor_codigo)
    	REFERENCES tutor(tutor_codigo)
);

CREATE TABLE IF NOT EXISTS tipo (
    tipo_codigo SERIAL NOT NULL,
    descricao VARCHAR(100) NOT NULL,
    desconto NUMERIC(10, 2) NOT NULL DEFAULT 0,
    CONSTRAINT pk_tipo PRIMARY KEY (tipo_codigo)
);

CREATE TABLE IF NOT EXISTS servico (
    servico_codigo SERIAL NOT NULL,
    descricao VARCHAR(100) NOT NULL,
    valor NUMERIC(10, 2) NOT NULL,
    tipo_codigo INTEGER NOT NULL, -- AQUI TEM CHAVE ESTRANGEIRA TAMBÉM
    CONSTRAINT pk_servico PRIMARY KEY (servico_codigo),
	CONSTRAINT fk_tipo FOREIGN KEY (tipo_codigo)
    	REFERENCES tipo(tipo_codigo)
);

CREATE TABLE IF NOT EXISTS vacina (
    vacina_codigo SERIAL NOT NULL,
    descricao VARCHAR(100) NOT NULL,
    valor NUMERIC(10, 2) NOT NULL,
    CONSTRAINT pk_vacina PRIMARY KEY (vacina_codigo)
);

CREATE TABLE IF NOT EXISTS situacao (
    situacao_codigo SERIAL NOT NULL,
    descricao VARCHAR(50) NOT NULL,
    CONSTRAINT pk_situacao PRIMARY KEY (situacao_codigo)
);

CREATE TABLE IF NOT EXISTS atendimento (
    atendimento_sequencia SERIAL NOT NULL,
    data TIMESTAMP NOT NULL,
    valor NUMERIC(10, 2) NOT NULL DEFAULT 0,
    situacao_codigo INTEGER NOT NULL,  -- AQUI TEM CHAVE ESTRANGEIRA TAMBÉM
    animal_codigo INTEGER NOT NULL,  -- AQUI TEM CHAVE ESTRANGEIRA TAMBÉM
    parcelas INTEGER NOT NULL DEFAULT 0,
    CONSTRAINT pk_atendimento PRIMARY KEY (atendimento_sequencia),
	CONSTRAINT fk_animal FOREIGN KEY (animal_codigo)
    	REFERENCES animal(animal_codigo),
	CONSTRAINT fk_situacao FOREIGN KEY (situacao_codigo)
    	REFERENCES situacao(situacao_codigo)
);

CREATE TABLE IF NOT EXISTS categoria (
    categoria_codigo SERIAL NOT NULL,
    descricao VARCHAR(100) NOT NULL,
    desconto NUMERIC(5, 2) NOT NULL DEFAULT 0,
    CONSTRAINT pk_categoria PRIMARY KEY (categoria_codigo)
);

CREATE TABLE IF NOT EXISTS produto (
    produto_codigo SERIAL NOT NULL,
    descricao VARCHAR(100) NOT NULL,
    valor NUMERIC(10, 2) NOT NULL,
    estoque INTEGER NOT NULL DEFAULT 0,
    categoria_codigo INTEGER NOT NULL, -- AQUI TEM CHAVE ESTRANGEIRA TAMBÉM
    CONSTRAINT pk_produto PRIMARY KEY (produto_codigo),
	CONSTRAINT fk_categoria FOREIGN KEY (categoria_codigo)
    	REFERENCES categoria(categoria_codigo)
);

-- TABELAS ASSOCIATIVAS

CREATE TABLE IF NOT EXISTS atendimento_servico (
    atendimento_servico_sequencia INTEGER NOT NULL, 
    atendimento_sequencia INTEGER NOT NULL,  -- AQUI TEM CHAVE ESTRANGEIRA TAMBÉM
    servico_codigo INTEGER NOT NULL,  -- AQUI TEM CHAVE ESTRANGEIRA TAMBÉM
    quantidade INTEGER NOT NULL,
    CONSTRAINT pk_atendimento_servico PRIMARY KEY (atendimento_servico_sequencia),
	CONSTRAINT fk_atendimento_atendimento_servico FOREIGN KEY (atendimento_sequencia)
    	REFERENCES atendimento (atendimento_sequencia),
	CONSTRAINT fk_atendimento_servico_servico FOREIGN KEY (servico_codigo)
    	REFERENCES servico(servico_codigo)
);

CREATE TABLE IF NOT EXISTS atendimento_vacina (
    atendimento_vacina_sequencia INTEGER NOT NULL,
    atendimento_sequencia INTEGER NOT NULL, -- AQUI TEM CHAVE ESTRANGEIRA TAMBÉM
    vacina_codigo INTEGER NOT NULL, -- AQUI TEM CHAVE ESTRANGEIRA TAMBÉM
    quantidade INTEGER NOT NULL,
    CONSTRAINT pk_atendimento_vacina PRIMARY KEY (atendimento_vacina_sequencia),
	CONSTRAINT fk_atendimento_atendimento_vacina FOREIGN KEY (atendimento_sequencia)
    	REFERENCES atendimento(atendimento_sequencia),
	CONSTRAINT fk_atendimento_vacina_vacina FOREIGN KEY (vacina_codigo)
    	REFERENCES vacina (vacina_codigo)
);


CREATE TABLE IF NOT EXISTS atendimento_produto (
    atendimento_produto_sequencia INTEGER NOT NULL,
    atendimento_sequencia INTEGER NOT NULL, -- AQUI TEM CHAVE ESTRANGEIRA TAMBÉM
    produto_codigo INTEGER NOT NULL, -- AQUI TEM CHAVE ESTRANGEIRA TAMBÉM
    quantidade INTEGER NOT NULL, 
    CONSTRAINT pk_atendimento_produto PRIMARY KEY (atendimento_produto_sequencia),
	CONSTRAINT fk_atendimento_atendimento_produto FOREIGN KEY (atendimento_sequencia)
    	REFERENCES atendimento(atendimento_sequencia),
	CONSTRAINT fk_atendimento_produto_produto FOREIGN KEY (produto_codigo)
    	REFERENCES produto(produto_codigo)
);

END;