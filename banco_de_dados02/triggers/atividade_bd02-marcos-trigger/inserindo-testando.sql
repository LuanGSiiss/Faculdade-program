-- Alimentando as tabelas

-- Inserindo nas tabelas não associativas

SELECT * FROM TUTOR;
SELECT * FROM ESPECIE;
SELECT * FROM RACA;
SELECT * FROM ANIMAL;
SELECT * FROM SITUACAO;
SELECT * FROM ATENDIMENTO;
SELECT * FROM VACINA;
SELECT * FROM PARCELAS;
SELECT * FROM CATEGORIA;
SELECT * FROM PRODUTO;
SELECT * FROM TIPO;
SELECT * FROM SERVICO;
SELECT * FROM ATENDIMENTO_VACINA;
SELECT * FROM ATENDIMENTO_PRODUTO;
SELECT * FROM ATENDIMENTO_SERVICO;

-- VACINA
--ATENDIMENTO 
-- SITUACOES
-- animal 
-- raca 
-- especie
-- tutor

-- TUTORES
INSERT INTO tutor(nome, contato) VALUES
	('Luan Gerber Siiss', '47991111222'),
	('Pedro Looss', '52993111222'),
	('Ana dos Campos', '47992221222');

-- ESPECIE
INSERT INTO especie(descricao) VALUES
	('Cachorro'),
	('Gato'),
	('Tartaruga');

-- RACA
INSERT INTO raca(descricao, especie_codigo) VALUES
	('Pastor-Alemão', 1 ), -- Cachorro1
	('Border Collie', 1), -- Cachorro
	('Husky Siberiano', 1), -- Cachorro
	('Poodle', 1), -- Cachorro
	('Viralata', 1), -- Cachorro
	('Siamês', 2), -- Gato
	('Maine Coon', 2), -- Gato
	('Tartaruga-russa', 3), -- Tartaruga
	('Tartaruga-tigre-dágua', 3); -- Tartaruga

-- ANIMAL
INSERT INTO animal(apelido, nascimento, tutor_codigo, raca_codigo) VALUES
	('Guigui', '2019-10-15', 1, 5),
	('Rex', '2022-03-21', 1, 1),
	('Fumaça', '2021-04-01', 3, 7),
	('Flash', '2017-01-24', 2, 8);

-- SITUACOES
INSERT INTO situacao(descricao) VALUES
	('Aberto'),
	('Fechado'),
	('Cancelado');

-- ATENDIMENTO
INSERT INTO atendimento(data, situacao_codigo, animal_codigo, parcelas) VALUES
	('2024-10-15 15:31:00', 1, 1, 1),
	('2024-11-11 09:10:00', 1, 2, 1),
	('2024-10-02 17:02:00', 1, 4, 1),
	('2024-10-22 13:51:00', 1, 3, 2);

-- VACINA 
INSERT INTO vacina(descricao, valor) VALUES
	('Gripe Canina', 62.21),
	('Raiva Canina', 119.99),
	('Antirrábica', 210.00);

-- CATEGORIA
INSERT INTO categoria(descricao, desconto) VALUES 
	('Cachorro', 0.0), -- Nenhum desconto
	('Gato', 0.20); -- 20% de desconto

-- TIPO
INSERT INTO tipo(descricao, desconto) VALUES 
	('Beleza', 0.10), -- Nenhum desconto
	('Tratamento', 0.15); -- 20% de desconto

-- PRODUTO
INSERT INTO produto(descricao, valor, estoque, categoria_codigo) VALUES
	('Coleira de Chachorro M', 45.0, 5, 1),
	('Arranhador Caixa 25/25', 150, 3, 2);

INSERT INTO servico(descricao, valor, tipo_codigo) VALUES
	('Banho e Tosa', 110, 1),
	('Tratamento Contra Vermes', 370, 2);





--  ATENDIMENTO_PRODUTO, AQUI TEM TRIGGER!!!

INSERT INTO atendimento_produto(atendimento_produto_sequencia, atendimento_sequencia, produto_codigo, quantidade) VALUES
	(11, 1, 1, 2),
	(32, 3, 2, 1), 
	(21, 2, 1, 2);

-- ATENDIMENTO_PRODUTO, fazendo inclusao/alterao/exclusao, AQUI TEM TRIGGER!!!

 --insert já feito antes
UPDATE atendimento_produto SET quantidade = quantidade + 1
	WHERE atendimento_sequencia = 3;
UPDATE atendimento_produto SET quantidade = quantidade - 2
	WHERE atendimento_sequencia = 3;

DELETE FROM atendimento_produto WHERE atendimento_sequencia = 1;


-- ATENDIMENTO_SERVICO, AQUI TEM TRIGGER!!!
INSERT INTO atendimento_servico(atendimento_servico_sequencia, atendimento_sequencia, servico_codigo, quantidade) VALUES
	(31, 3, 1, 1),
	(12, 1, 2, 1);

-- ATENDIMENTO_VACINA , AQUI TEM TRIGGER!!!

INSERT INTO atendimento_vacina(atendimento_vacina_sequencia, atendimento_sequencia, vacina_codigo, quantidade) VALUES
	(11, 1, 1, 1), 
	(22, 2, 2, 1),
	(43, 4, 3, 2); 
--vendo se soma com anterior
INSERT INTO atendimento_vacina(atendimento_vacina_sequencia, atendimento_sequencia, vacina_codigo, quantidade) VALUES
	(12, 1, 2, 1);


-- ALTERANDO A SITUAÇÃO DE UM ATENDIMENTO PARA "FECHADO", AQUI TEM TRIGGER!!!
UPDATE atendimento SET situacao_codigo = 2
	WHERE animal_codigo = 1;
UPDATE atendimento SET situacao_codigo = 2
	WHERE animal_codigo = 3;


