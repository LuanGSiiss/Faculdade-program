--------------------------   INSERINDO TODOS OS DADOS DAS TABELAS   --------------------------
-- TEM QUE EXECUTAR AS INSERÇÕES DE:
-- 


--------------------------   INSERINDO OS GRUPOS   --------------------------

INSERT INTO grupo(descricao, ingredientes) VALUES('BURGERS', 'S');
INSERT INTO grupo(descricao, ingredientes) VALUES('BURGERS VEGETARIANOS E VEGANOS', 'S');
INSERT INTO grupo(descricao, ingredientes) VALUES('SANDWICHES FIT', 'S');
INSERT INTO grupo(descricao, ingredientes) VALUES('SANDWICHES', 'S');
INSERT INTO grupo(descricao, ingredientes) VALUES('BURGERS KIDS', 'S');
INSERT INTO grupo(descricao, ingredientes) VALUES('APERITIVOS', 'N');
INSERT INTO grupo(descricao, ingredientes) VALUES('EXTRAS', 'N');
INSERT INTO grupo(descricao, ingredientes) VALUES('SOBREMESAS', 'N');
INSERT INTO grupo(descricao, ingredientes) VALUES('BEBIDAS', 'N');

SELECT * FROM INGREDIENTE;
--------------------------   INSERINDO OS INGREDIENTES   --------------------------

INSERT INTO ingrediente(descricao, quantidade) VALUES('Pão Crocante', 10); -- 1
INSERT INTO ingrediente(descricao, quantidade) VALUES('Pão Crocante Integral', 10); -- 2
INSERT INTO ingrediente(descricao, quantidade) VALUES('Pão Crocante Pequeno', 10); -- 3
INSERT INTO ingrediente(descricao, quantidade) VALUES('Alface', 10); -- 4
INSERT INTO ingrediente(descricao, quantidade) VALUES('Tomate', 10); -- 5
INSERT INTO ingrediente(descricao, quantidade) VALUES('Tomate Seco', 10); -- 6
INSERT INTO ingrediente(descricao, quantidade) VALUES('Queijo Cheddar', 10); -- 7
INSERT INTO ingrediente(descricao, quantidade) VALUES('Maionese Artesanal', 10); -- 8
INSERT INTO ingrediente(descricao, quantidade) VALUES('Hamburguer de 180g', 10); -- 9
INSERT INTO ingrediente(descricao, quantidade) VALUES('Hamburguer de 130g', 10); -- 10
INSERT INTO ingrediente(descricao, quantidade) VALUES('Hamburguer de 110g', 10); -- 11
INSERT INTO ingrediente(descricao, quantidade) VALUES('Hamburguer de 100g', 10); -- 12
INSERT INTO ingrediente(descricao, quantidade) VALUES('Hamburguer de 45g', 10); -- 13
INSERT INTO ingrediente(descricao, quantidade) VALUES('Bacon', 10); -- 14
INSERT INTO ingrediente(descricao, quantidade) VALUES('Cogumelo-de-Paris', 10); -- 15
INSERT INTO ingrediente(descricao, quantidade) VALUES('Feijão Rosinha', 10); -- 16
INSERT INTO ingrediente(descricao, quantidade) VALUES('Grão-de-Bico', 10); -- 17
INSERT INTO ingrediente(descricao, quantidade) VALUES('Arroz Integral', 10); -- 18
INSERT INTO ingrediente(descricao, quantidade) VALUES('Proteína de Ervilha', 10); -- 19
INSERT INTO ingrediente(descricao, quantidade) VALUES('Temperos', 10); -- 20
INSERT INTO ingrediente(descricao, quantidade) VALUES('Especiarias', 10); -- 21
INSERT INTO ingrediente(descricao, quantidade) VALUES('Espessante', 10); -- 22
INSERT INTO ingrediente(descricao, quantidade) VALUES('Molho de Pimentas-Verdes', 10); -- 23
INSERT INTO ingrediente(descricao, quantidade) VALUES('Creme de Palmito', 10); -- 24
INSERT INTO ingrediente(descricao, quantidade) VALUES('Linguicinha Artesanal de 130g', 10); -- 25
INSERT INTO ingrediente(descricao, quantidade) VALUES('Vinagrete', 10); -- 26
INSERT INTO ingrediente(descricao, quantidade) VALUES('1 Peito de Frango grelhado de 130g', 10); -- 27
INSERT INTO ingrediente(descricao, quantidade) VALUES('2 Peitos de Frango empanados de 140g', 10); -- 28
INSERT INTO ingrediente(descricao, quantidade) VALUES('Cebola Caramelizada', 10); -- 29
INSERT INTO ingrediente(descricao, quantidade) VALUES('Relish de Pepino', 10); -- 30
INSERT INTO ingrediente(descricao, quantidade) VALUES('Molho Barbecue', 10); -- 31
INSERT INTO ingrediente(descricao, quantidade) VALUES('Molho Vinagrete', 10); -- 32
INSERT INTO ingrediente(descricao, quantidade) VALUES('Bacon Extra', 10); -- 33
INSERT INTO ingrediente(descricao, quantidade) VALUES('Queijo Cheddar Extra', 10); -- 34


--------------------------   INSERINDO OS PRODUTOS   --------------------------

-- PRODUTOS DO GRUPO BURGERS

INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('MADERO', 36.90, 1, 'S', 'S'); -- 1
INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('MADERO SUPER', 47.90, 1, 'S', 'S'); -- 2
INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('MADERO BACON', 44.90, 1, 'S', 'S'); -- 3
INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('MADERO BACON SUPER', 57.90, 1, 'S', 'S'); -- 4
INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('JUNIOR', 33.90, 1, 'S', 'S'); -- 5
INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('JUNIOR BACON', 39.90, 1, 'S', 'S'); -- 6
INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('CORDEIRO', 45.30, 1, 'S', 'S'); -- 7
INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('CORDEIRO SUPER', 61.50, 1, 'S', 'S'); -- 8
INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('CORDEIRO BACON', 53.30, 1, 'S', 'S'); -- 9

-- PRODUTOS DO GRUPO BURGERS VEGETARIANOS

INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('MADERO VEGETARIANO', 36.90, 2, 'S', 'S'); -- 10
INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('MADERO VEGANO', 36.90, 2, 'S', 'S'); -- 11
INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('FALAFEL VEGETARIANO', 36.90, 2, 'S', 'S'); -- 12
INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('FALAFEL VEGANO', 36.90, 2, 'S', 'S'); -- 13

-- PRODUTOS DO GRUPO SANDWICHES FIT

INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('CHEESEBURGER MADERO FIT', 33.90, 3, 'S', 'S'); -- 14
INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('CHEESEBURGER MADERO MENOS SAL', 36.90, 3, 'S', 'S'); -- 15
INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('CHEESE CHICKEN FIT', 33.90, 3, 'S', 'S'); -- 16

-- PRODUTOS DO GRUPO SANDWICHES

INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('CHORIPÁN', 36.90, 4, 'S', 'S'); -- 17
INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('CHEESE CHICKEN CRISPY', 36.90, 4, 'S', 'S'); -- 18
INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('CHEESE CHICKEN GRELHADO', 33.90, 4, 'S', 'S'); -- 19

-- PRODUTOS DO GRUPO BURGERS KIDS

INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('2 MINI CHEESEBURGERS', 25.00, 5, 'S', 'S'); -- 20
INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('2 MINI CHEESEBACONS', 29.00, 5, 'S', 'S'); -- 21

-- PRODUTOS DO GRUPO APERITIVOS

INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('MINI COXINHAS 12 UN', 21.00, 6, 'N', 'N');
INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('MINI COXINHAS 24 UN', 36.00, 6, 'N', 'N');
INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('CHICKEN FINGERS ARTESANAIS', 25.90, 6, 'N', 'N');
INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('CESTA DE BATATAS FRITAS COM CHEDDAR E BACON', 38.90, 6, 'N', 'N');
INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('MINI PASTÉIS', 27.40, 6, 'N', 'N');

-- PRODUTOS DO GRUPO EXTRAS
INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('PORÇÃO DE BATATAS FRITAS', 12.00, 7, 'S', 'N');
INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('PORÇÃO DE CHEDDAR E BACON', 14.00, 7, 'N', 'N');
INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('MAIONESE EXTRA', 4.80, 7, 'N', 'N');
INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('MOLHO BARBECUE', 7.40, 7, 'N', 'N');

-- PRODUTOS DO GRUPO SOBREMESAS

INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('BRIGADEIRO DE COLHER', 12.00, 8, 'N', 'N');
INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('BROWNIE', 9.00, 8, 'N', 'N');

-- PRODUTOS DO GRUPO BEBIDAS

INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('CHÁS GELADOS MADERO', 8.90, 9, 'S', 'N');
INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('SODAS MADERO', 10.90, 9, 'S', 'N');
INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('LEMONADES MADERO', 8.90, 9, 'S', 'N');
INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('PINK LEMONADE', 8.90, 9, 'S', 'N');
INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('SUCO DE LARANJA', 14.90, 9, 'S', 'N');
INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('SUCO DE UVA', 15.90, 9, 'S', 'N');
INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('ÁGUA MINERAL', 6.90, 9, 'N', 'N');
INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('REFRIGERANTES', 8.50, 9, 'S', 'N');
INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('CHOPP NA CANECA CONGELADA', 14.90, 9, 'S', 'N');
INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('CERVEJA HEINEKEN', 12.90, 9, 'N', 'N');
INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('CAFÉS NESPRESSO', 7.90, 9, 'N', 'N');


--------------------------   INSERINDO OS COMBOS   --------------------------

-- GRUPO BURGERS

INSERT INTO COMBO(DESCRICAO, VALOR) VALUES('Combo Madero Simples', 48.9); -- Refrigerante, Chá Gelado ou Lemonade
INSERT INTO COMBO(DESCRICAO, VALOR) VALUES('Combo Madero Plus', 53.9); -- Chopp ou Suco
INSERT INTO COMBO(DESCRICAO, VALOR) VALUES('Combo Madero Super Simples', 59.9); -- Refrigerante, Chá Gelado ou Lemonade
INSERT INTO COMBO(DESCRICAO, VALOR) VALUES('Combo Madero Super Plus', 64.9); -- Chopp ou Suco
INSERT INTO COMBO(DESCRICAO, VALOR) VALUES('Combo Madero Bacon Simples', 56.9); -- Refrigerante, Chá Gelado ou Lemonade
INSERT INTO COMBO(DESCRICAO, VALOR) VALUES('Combo Madero Bacon Plus', 61.9); -- Chopp ou Suco
INSERT INTO COMBO(DESCRICAO, VALOR) VALUES('Combo Madero Bacon Super Simples', 69.9); -- Refrigerante, Chá Gelado ou Lemonade
INSERT INTO COMBO(DESCRICAO, VALOR) VALUES('Combo Madero Bacon Super Plus', 74.9); -- Chopp ou Suco
INSERT INTO COMBO(DESCRICAO, VALOR) VALUES('Combo Junior Simples', 45.9); -- Refrigerante, Chá Gelado ou LemonadeINSERT INTO COMBO(DESCRICAO, VALOR) VALUES
INSERT INTO COMBO(DESCRICAO, VALOR) VALUES('Combo Junior Plus', 50.9); -- Chopp ou Suco
INSERT INTO COMBO(DESCRICAO, VALOR) VALUES('Combo Junior Bacon Simples', 51.9); -- Refrigerante, Chá Gelado ou Lemonade
INSERT INTO COMBO(DESCRICAO, VALOR) VALUES('Combo Junior Bacon Plus', 56.9); -- Chopp ou Suco
INSERT INTO COMBO(DESCRICAO, VALOR) VALUES('Combo Cordeiro Simples', 57.3); -- Refrigerante, Chá Gelado ou Lemonade
INSERT INTO COMBO(DESCRICAO, VALOR) VALUES('Combo Cordeiro Plus', 62.3); -- Chopp ou Suco
INSERT INTO COMBO(DESCRICAO, VALOR) VALUES('Combo Cordeiro Super Simples', 73.5); -- Refrigerante, Chá Gelado ou Lemonade
INSERT INTO COMBO(DESCRICAO, VALOR) VALUES('Combo Cordeiro Super Plus', 78.5); -- Chopp ou Suco
INSERT INTO COMBO(DESCRICAO, VALOR) VALUES('Combo Cordeiro Bacon Simples', 65.3); -- Refrigerante, Chá Gelado ou Lemonade
INSERT INTO COMBO(DESCRICAO, VALOR) VALUES('Combo Cordeiro Bacon Plus', 70.3); -- Chopp ou Suco

-- GRUPO BURGERS VEGETARIANOS

INSERT INTO COMBO(DESCRICAO, VALOR) VALUES('Combo Madero Vegetariano Simples', 48.9); -- INSERT INTO COMBO(DESCRICAO, VALOR) VALUESRefrigerante, Chá Gelado ou Lemonade
INSERT INTO COMBO(DESCRICAO, VALOR) VALUES('Combo Madero Vegetariano Plus', 53.9); -- INSERT INTO COMBO(DESCRICAO, VALOR) VALUESChopp ou Suco
INSERT INTO COMBO(DESCRICAO, VALOR) VALUES('Combo Madero Vegano Simples', 48.9); -- INSERT INTO COMBO(DESCRICAO, VALOR) VALUESRefrigerante, Chá Gelado ou Lemonade
INSERT INTO COMBO(DESCRICAO, VALOR) VALUES('Combo Madero Vegano Plus', 53.9); -- INSERT INTO COMBO(DESCRICAO, VALOR) VALUESChopp ou Suco
INSERT INTO COMBO(DESCRICAO, VALOR) VALUES('Combo Falafel Vegetariano Simples', 48.9); -- INSERT INTO COMBO(DESCRICAO, VALOR) VALUESRefrigerante, Chá Gelado ou Lemonade
INSERT INTO COMBO(DESCRICAO, VALOR) VALUES('Combo Falafel Vegetariano Plus', 53.9); -- INSERT INTO COMBO(DESCRICAO, VALOR) VALUESChopp ou Suco
INSERT INTO COMBO(DESCRICAO, VALOR) VALUES('Combo Falafel Vegano Simples', 48.9); -- INSERT INTO COMBO(DESCRICAO, VALOR) VALUESRefrigerante, Chá Gelado ou Lemonade
INSERT INTO COMBO(DESCRICAO, VALOR) VALUES('Combo Falafel Vegano Plus', 53.9); -- INSERT INTO COMBO(DESCRICAO, VALOR) VALUESChopp ou Suco

-- GRUPO SANDWICHES FIT

INSERT INTO COMBO(DESCRICAO, VALOR) VALUES('Combo Cheeseburger Madero Fit Simples', 45.9); -- Refrigerante, Chá Gelado ou Lemonade
INSERT INTO COMBO(DESCRICAO, VALOR) VALUES('Combo Cheeseburger Madero Fit Plus', 50.9); -- Chopp ou Suco
INSERT INTO COMBO(DESCRICAO, VALOR) VALUES('Combo Cheeseburger Madero Menos Sal Simples', 48.9); -- Refrigerante, Chá Gelado ou Lemonade
INSERT INTO COMBO(DESCRICAO, VALOR) VALUES('Combo Cheeseburger Madero Menos Sal Plus', 53.9); -- Chopp ou Suco
INSERT INTO COMBO(DESCRICAO, VALOR) VALUES('Combo Cheese Chicken Fit Simples', 45.9); -- Refrigerante, Chá Gelado ou Lemonade
INSERT INTO COMBO(DESCRICAO, VALOR) VALUES('Combo Cheese Chicken Fit Plus', 50.9); -- Chopp ou Suco

-- GRUPO SANDWICHES

INSERT INTO COMBO(DESCRICAO, VALOR) VALUES('Combo Choripán Simples', 48.9); -- Refrigerante, Chá Gelado ou Lemonade
INSERT INTO COMBO(DESCRICAO, VALOR) VALUES('Combo Choripán Plus', 53.9); -- Chopp ou Suco
INSERT INTO COMBO(DESCRICAO, VALOR) VALUES('Combo Cheese Chicken Crispy Simples', 48.9); -- Refrigerante, Chá Gelado ou Lemonade
INSERT INTO COMBO(DESCRICAO, VALOR) VALUES('Combo Cheese Chicken Crispy Plus', 53.9); -- Chopp ou Suco
INSERT INTO COMBO(DESCRICAO, VALOR) VALUES('Combo Cheese Chicken Grelhado Simples', 45.9); -- Refrigerante, Chá Gelado ou Lemonade
INSERT INTO COMBO(DESCRICAO, VALOR) VALUES('Combo Cheese Chicken Grelhado Plus', 50.9); -- Chopp ou Suco

-- GRUPO BURGERS KIDS

INSERT INTO COMBO(DESCRICAO, VALOR) VALUES('Combo 2 Mini Cheeseburgers Simples', 30.0); -- Refrigerante, Chá Gelado ou Lemonade
INSERT INTO COMBO(DESCRICAO, VALOR) VALUES('Combo 2 Mini Cheeseburgers Plus', 35.0); -- Chopp ou Suco
INSERT INTO COMBO(DESCRICAO, VALOR) VALUES('Combo 2 Mini Cheesebacons Simples', 34.0); -- Refrigerante, Chá Gelado ou Lemonade
INSERT INTO COMBO(DESCRICAO, VALOR) VALUES('Combo 2 Mini Cheesebacons Plus', 39.0); -- Chopp ou Suco


--------------------------   INSERINDO AS OBSERVACOES   --------------------------

INSERT INTO OBSERVACAO(DESCRICAO) VALUES('Alta concentração de sódio');
INSERT INTO OBSERVACAO(DESCRICAO) VALUES('Peso in natura antes da cocção');
INSERT INTO OBSERVACAO(DESCRICAO) VALUES('Sem lactose');
INSERT INTO OBSERVACAO(DESCRICAO) VALUES('Vegetariano');
INSERT INTO OBSERVACAO(DESCRICAO) VALUES('Sem glúten | pode conter traços');


--------------------------   INSERINDO AS FORMAS DE PAGAMENTO   --------------------------

INSERT INTO formapagamento(descricao) VALUES('PIX');
INSERT INTO formapagamento(descricao) VALUES('CARTÃO DE DÉBITO');
INSERT INTO formapagamento(descricao) VALUES('CARTÃO DE CRÉDITO');
INSERT INTO formapagamento(descricao) VALUES('DINHEIRO');


--------------------------   INSERINDO OS PEDIDOS   --------------------------

-- INSERINDO OS 10 PEDIDOS

--Itens do pedido 1: MADERO
INSERT INTO pedido(data_pedido, valor, fpg_sequencia) VALUES('2024-05-19 16:05:00', 0, 1);   

--Itens do pedido 2: MADERO BACON SUPER
INSERT INTO pedido(data_pedido, valor, fpg_sequencia) VALUES('2024-05-19 16:05:00', 0, 2);   

--Itens do pedido 3: MADERO VEGETARIANO
INSERT INTO pedido(data_pedido, valor, fpg_sequencia) VALUES('2024-05-19 16:05:00', 0, 2);   

--Itens do pedido 4: CHEESEBURGER MADERO FIT
INSERT INTO pedido(data_pedido, valor, fpg_sequencia) VALUES('2024-05-19 16:05:00', 0, 2);

--Itens do pedido 5: BRIGADEIRO DE COLHER
INSERT INTO pedido(data_pedido, valor, fpg_sequencia) VALUES('2024-05-19 16:05:00', 0, 2);

--Itens do pedido 6: MADERO BACON SUPER + ADICIONAL BACON EXTRA
INSERT INTO pedido(data_pedido, valor, fpg_sequencia) VALUES('2024-05-19 16:05:00', 0, 2);

--Itens do pedido 7: MADERO SUPER + JUNIOR + CHICKEN FINGERS ARTESANAIS + PORÇÃO DE BATATAS FRITAS  + 1 REFRIGERANTES
INSERT INTO pedido(data_pedido, valor, fpg_sequencia) VALUES('2024-05-19 16:05:00', 0, 3);

--Itens do pedido 8: CHORIPÁN
INSERT INTO pedido(data_pedido, valor, fpg_sequencia) VALUES('2024-05-19 16:05:00', 0, 4);

--Itens do pedido 9: CHEESE CHICKEN GRELHADO + 2 MINI CHEESEBURGERS
INSERT INTO pedido(data_pedido, valor, fpg_sequencia) VALUES('2024-05-19 16:05:00', 0, 4);

--Itens do pedido 10: FALAFEL VEGANO
INSERT INTO pedido(data_pedido, valor, fpg_sequencia) VALUES('2024-05-19 16:05:00', 0, 4);





--------------------------   INSERINDO OS DADOS DAS TABELAS ASSOCIATIVAS   --------------------------


-- TABELA ASSOCIATIVA PEDIDO_PRODUTO

INSERT INTO PEDIDO_PRODUTO(PED_SEQUENCIA, PRO_SEQUENCIA, QUANTIDADE, COMBO) VALUES(1, 1, 1, 'N');
INSERT INTO PEDIDO_PRODUTO(PED_SEQUENCIA, PRO_SEQUENCIA, QUANTIDADE, COMBO) VALUES(2, 4, 1, 'N');
INSERT INTO PEDIDO_PRODUTO(PED_SEQUENCIA, PRO_SEQUENCIA, QUANTIDADE, COMBO) VALUES(3, 10, 1, 'N');
INSERT INTO PEDIDO_PRODUTO(PED_SEQUENCIA, PRO_SEQUENCIA, QUANTIDADE, COMBO) VALUES(4, 14, 1, 'N');
INSERT INTO PEDIDO_PRODUTO(PED_SEQUENCIA, PRO_SEQUENCIA, QUANTIDADE, COMBO) VALUES(5, 31, 1, 'N');
INSERT INTO PEDIDO_PRODUTO(PED_SEQUENCIA, PRO_SEQUENCIA, QUANTIDADE, COMBO) VALUES(6, 4, 1, 'N');
INSERT INTO PEDIDO_PRODUTO(PED_SEQUENCIA, PRO_SEQUENCIA, QUANTIDADE, COMBO) VALUES(7, 2, 1, 'N');
INSERT INTO PEDIDO_PRODUTO(PED_SEQUENCIA, PRO_SEQUENCIA, QUANTIDADE, COMBO) VALUES(7, 5, 1, 'N');
INSERT INTO PEDIDO_PRODUTO(PED_SEQUENCIA, PRO_SEQUENCIA, QUANTIDADE, COMBO) VALUES(7, 24, 1, 'N');
INSERT INTO PEDIDO_PRODUTO(PED_SEQUENCIA, PRO_SEQUENCIA, QUANTIDADE, COMBO) VALUES(7, 27, 1, 'N');
INSERT INTO PEDIDO_PRODUTO(PED_SEQUENCIA, PRO_SEQUENCIA, QUANTIDADE, COMBO) VALUES(7, 40, 1, 'N');
INSERT INTO PEDIDO_PRODUTO(PED_SEQUENCIA, PRO_SEQUENCIA, QUANTIDADE, COMBO) VALUES(8, 17, 1, 'N');
INSERT INTO PEDIDO_PRODUTO(PED_SEQUENCIA, PRO_SEQUENCIA, QUANTIDADE, COMBO) VALUES(9, 19, 1, 'N');
INSERT INTO PEDIDO_PRODUTO(PED_SEQUENCIA, PRO_SEQUENCIA, QUANTIDADE, COMBO) VALUES(9, 20, 1, 'N');
INSERT INTO PEDIDO_PRODUTO(PED_SEQUENCIA, PRO_SEQUENCIA, QUANTIDADE, COMBO) VALUES(10, 13, 1, 'N');


-- TABELA ASSOCIATIVA GRUPO_INGREDIENTE

--GRUPO BURGERS
INSERT INTO GRUPO_INGREDIENTE(GRP_SEQUENCIA, ING_SEQUENCIA, QUANTIDADE, OPCIONAL) VALUES(1, 1, 1, 'N');
INSERT INTO GRUPO_INGREDIENTE(GRP_SEQUENCIA, ING_SEQUENCIA, QUANTIDADE, OPCIONAL) VALUES(1, 4, 1, 'S');
INSERT INTO GRUPO_INGREDIENTE(GRP_SEQUENCIA, ING_SEQUENCIA, QUANTIDADE, OPCIONAL) VALUES(1, 5, 1, 'S');
INSERT INTO GRUPO_INGREDIENTE(GRP_SEQUENCIA, ING_SEQUENCIA, QUANTIDADE, OPCIONAL) VALUES(1, 7, 1, 'S');
INSERT INTO GRUPO_INGREDIENTE(GRP_SEQUENCIA, ING_SEQUENCIA, QUANTIDADE, OPCIONAL) VALUES(1, 8, 1, 'S');
INSERT INTO GRUPO_INGREDIENTE(GRP_SEQUENCIA, ING_SEQUENCIA, QUANTIDADE, OPCIONAL) VALUES(1, 20, 1, 'S');
INSERT INTO GRUPO_INGREDIENTE(GRP_SEQUENCIA, ING_SEQUENCIA, QUANTIDADE, OPCIONAL) VALUES(1, 9, 1, 'S'); --CARNE 
INSERT INTO GRUPO_INGREDIENTE(GRP_SEQUENCIA, ING_SEQUENCIA, QUANTIDADE, OPCIONAL) VALUES(1, 14, 1, 'S'); --CARNE
INSERT INTO GRUPO_INGREDIENTE(GRP_SEQUENCIA, ING_SEQUENCIA, QUANTIDADE, OPCIONAL) VALUES(1, 10, 1, 'S'); --CARNE
--BURGERS VEGETARIANOS E VEGANOS
INSERT INTO GRUPO_INGREDIENTE(GRP_SEQUENCIA, ING_SEQUENCIA, QUANTIDADE, OPCIONAL) VALUES(2, 1, 1, 'N');
INSERT INTO GRUPO_INGREDIENTE(GRP_SEQUENCIA, ING_SEQUENCIA, QUANTIDADE, OPCIONAL) VALUES(2, 15, 1, 'S');
INSERT INTO GRUPO_INGREDIENTE(GRP_SEQUENCIA, ING_SEQUENCIA, QUANTIDADE, OPCIONAL) VALUES(2, 16, 1, 'S');
INSERT INTO GRUPO_INGREDIENTE(GRP_SEQUENCIA, ING_SEQUENCIA, QUANTIDADE, OPCIONAL) VALUES(2, 17, 1, 'S');
INSERT INTO GRUPO_INGREDIENTE(GRP_SEQUENCIA, ING_SEQUENCIA, QUANTIDADE, OPCIONAL) VALUES(2, 18, 1, 'S');
INSERT INTO GRUPO_INGREDIENTE(GRP_SEQUENCIA, ING_SEQUENCIA, QUANTIDADE, OPCIONAL) VALUES(2, 19, 1, 'S');
INSERT INTO GRUPO_INGREDIENTE(GRP_SEQUENCIA, ING_SEQUENCIA, QUANTIDADE, OPCIONAL) VALUES(2, 20, 1, 'S');
INSERT INTO GRUPO_INGREDIENTE(GRP_SEQUENCIA, ING_SEQUENCIA, QUANTIDADE, OPCIONAL) VALUES(2, 21, 1, 'S');
INSERT INTO GRUPO_INGREDIENTE(GRP_SEQUENCIA, ING_SEQUENCIA, QUANTIDADE, OPCIONAL) VALUES(2, 22, 1, 'S');
INSERT INTO GRUPO_INGREDIENTE(GRP_SEQUENCIA, ING_SEQUENCIA, QUANTIDADE, OPCIONAL) VALUES(2, 8, 1, 'S');
INSERT INTO GRUPO_INGREDIENTE(GRP_SEQUENCIA, ING_SEQUENCIA, QUANTIDADE, OPCIONAL) VALUES(2, 23, 1, 'S');
INSERT INTO GRUPO_INGREDIENTE(GRP_SEQUENCIA, ING_SEQUENCIA, QUANTIDADE, OPCIONAL) VALUES(2, 7, 1, 'S');
INSERT INTO GRUPO_INGREDIENTE(GRP_SEQUENCIA, ING_SEQUENCIA, QUANTIDADE, OPCIONAL) VALUES(2, 6, 1, 'S');
INSERT INTO GRUPO_INGREDIENTE(GRP_SEQUENCIA, ING_SEQUENCIA, QUANTIDADE, OPCIONAL) VALUES(2, 5, 1, 'S');
INSERT INTO GRUPO_INGREDIENTE(GRP_SEQUENCIA, ING_SEQUENCIA, QUANTIDADE, OPCIONAL) VALUES(2, 4, 1, 'S');
INSERT INTO GRUPO_INGREDIENTE(GRP_SEQUENCIA, ING_SEQUENCIA, QUANTIDADE, OPCIONAL) VALUES(2, 24, 1, 'S');
INSERT INTO GRUPO_INGREDIENTE(GRP_SEQUENCIA, ING_SEQUENCIA, QUANTIDADE, OPCIONAL) VALUES(2, 11, 1, 'S'); --CARNE
INSERT INTO GRUPO_INGREDIENTE(GRP_SEQUENCIA, ING_SEQUENCIA, QUANTIDADE, OPCIONAL) VALUES(2, 12, 1, 'S'); --CARNE
--SANDWICHES FIT
INSERT INTO GRUPO_INGREDIENTE(GRP_SEQUENCIA, ING_SEQUENCIA, QUANTIDADE, OPCIONAL) VALUES(3, 2, 1, 'N');
INSERT INTO GRUPO_INGREDIENTE(GRP_SEQUENCIA, ING_SEQUENCIA, QUANTIDADE, OPCIONAL) VALUES(3, 24, 1, 'S');
INSERT INTO GRUPO_INGREDIENTE(GRP_SEQUENCIA, ING_SEQUENCIA, QUANTIDADE, OPCIONAL) VALUES(3, 7, 1, 'S');
INSERT INTO GRUPO_INGREDIENTE(GRP_SEQUENCIA, ING_SEQUENCIA, QUANTIDADE, OPCIONAL) VALUES(3, 5, 1, 'S');
INSERT INTO GRUPO_INGREDIENTE(GRP_SEQUENCIA, ING_SEQUENCIA, QUANTIDADE, OPCIONAL) VALUES(3, 4, 1, 'S');
INSERT INTO GRUPO_INGREDIENTE(GRP_SEQUENCIA, ING_SEQUENCIA, QUANTIDADE, OPCIONAL) VALUES(3, 20, 1, 'S');
INSERT INTO GRUPO_INGREDIENTE(GRP_SEQUENCIA, ING_SEQUENCIA, QUANTIDADE, OPCIONAL) VALUES(3, 10, 1, 'S'); --CARNE
INSERT INTO GRUPO_INGREDIENTE(GRP_SEQUENCIA, ING_SEQUENCIA, QUANTIDADE, OPCIONAL) VALUES(3, 9, 1, 'S'); --CARNE
INSERT INTO GRUPO_INGREDIENTE(GRP_SEQUENCIA, ING_SEQUENCIA, QUANTIDADE, OPCIONAL) VALUES(3, 27, 1, 'S'); --CARNE
--SANDWICHES
INSERT INTO GRUPO_INGREDIENTE(GRP_SEQUENCIA, ING_SEQUENCIA, QUANTIDADE, OPCIONAL) VALUES(4, 1, 1, 'N');
INSERT INTO GRUPO_INGREDIENTE(GRP_SEQUENCIA, ING_SEQUENCIA, QUANTIDADE, OPCIONAL) VALUES(4, 4, 1, 'S');
INSERT INTO GRUPO_INGREDIENTE(GRP_SEQUENCIA, ING_SEQUENCIA, QUANTIDADE, OPCIONAL) VALUES(4, 26, 1, 'S');
INSERT INTO GRUPO_INGREDIENTE(GRP_SEQUENCIA, ING_SEQUENCIA, QUANTIDADE, OPCIONAL) VALUES(4, 8, 1, 'S');
INSERT INTO GRUPO_INGREDIENTE(GRP_SEQUENCIA, ING_SEQUENCIA, QUANTIDADE, OPCIONAL) VALUES(4, 7, 1, 'S');
INSERT INTO GRUPO_INGREDIENTE(GRP_SEQUENCIA, ING_SEQUENCIA, QUANTIDADE, OPCIONAL) VALUES(4, 20, 1, 'S');
INSERT INTO GRUPO_INGREDIENTE(GRP_SEQUENCIA, ING_SEQUENCIA, QUANTIDADE, OPCIONAL) VALUES(4, 25, 1, 'S'); --CARNE
INSERT INTO GRUPO_INGREDIENTE(GRP_SEQUENCIA, ING_SEQUENCIA, QUANTIDADE, OPCIONAL) VALUES(4, 28, 1, 'S'); --CARNE 
INSERT INTO GRUPO_INGREDIENTE(GRP_SEQUENCIA, ING_SEQUENCIA, QUANTIDADE, OPCIONAL) VALUES(4, 27, 1, 'S'); --CARNE
--BURGERS KIDS
INSERT INTO GRUPO_INGREDIENTE(GRP_SEQUENCIA, ING_SEQUENCIA, QUANTIDADE, OPCIONAL) VALUES(5, 1, 1, 'N');
INSERT INTO GRUPO_INGREDIENTE(GRP_SEQUENCIA, ING_SEQUENCIA, QUANTIDADE, OPCIONAL) VALUES(5, 4, 1, 'S');
INSERT INTO GRUPO_INGREDIENTE(GRP_SEQUENCIA, ING_SEQUENCIA, QUANTIDADE, OPCIONAL) VALUES(5, 5, 1, 'S');
INSERT INTO GRUPO_INGREDIENTE(GRP_SEQUENCIA, ING_SEQUENCIA, QUANTIDADE, OPCIONAL) VALUES(5, 7, 1, 'S');
INSERT INTO GRUPO_INGREDIENTE(GRP_SEQUENCIA, ING_SEQUENCIA, QUANTIDADE, OPCIONAL) VALUES(5, 8, 1, 'S');
INSERT INTO GRUPO_INGREDIENTE(GRP_SEQUENCIA, ING_SEQUENCIA, QUANTIDADE, OPCIONAL) VALUES(5, 20, 1, 'S');
INSERT INTO GRUPO_INGREDIENTE(GRP_SEQUENCIA, ING_SEQUENCIA, QUANTIDADE, OPCIONAL) VALUES(5, 13, 1, 'S'); --CARNE
INSERT INTO GRUPO_INGREDIENTE(GRP_SEQUENCIA, ING_SEQUENCIA, QUANTIDADE, OPCIONAL) VALUES(5, 14, 2, 'S'); --CARNE
	

-- TABELA ASSOCIATIVA PRODUTO_OBSERVACAO

-- PRODUTOS DO GRUPO BURGERS
INSERT INTO PRODUTO_OBSERVACAO(pro_sequencia, obs_sequencia) VALUES(1, 2); -- 1 MADERO
INSERT INTO PRODUTO_OBSERVACAO(pro_sequencia, obs_sequencia) VALUES(2, 2); -- 2 MADERO SUPER
INSERT INTO PRODUTO_OBSERVACAO(pro_sequencia, obs_sequencia) VALUES(3, 2); -- 3 MADERO BACON
INSERT INTO PRODUTO_OBSERVACAO(pro_sequencia, obs_sequencia) VALUES(4, 2); -- 4 MADERO BACON SUPER
INSERT INTO PRODUTO_OBSERVACAO(pro_sequencia, obs_sequencia) VALUES(5, 2); -- 5 JUNIOR
INSERT INTO PRODUTO_OBSERVACAO(pro_sequencia, obs_sequencia) VALUES(6, 2); -- 6 JUNIOR BACON
INSERT INTO PRODUTO_OBSERVACAO(pro_sequencia, obs_sequencia) VALUES(7, 2); -- 7 CORDEIRO
INSERT INTO PRODUTO_OBSERVACAO(pro_sequencia, obs_sequencia) VALUES(8, 2); -- 8 CORDEIRO SUPER
INSERT INTO PRODUTO_OBSERVACAO(pro_sequencia, obs_sequencia) VALUES(9, 2); -- 9 CORDEIRO BACON
-- PRODUTOS DO GRUPO BURGERS VEGETARIANOS
INSERT INTO PRODUTO_OBSERVACAO(pro_sequencia, obs_sequencia) VALUES(10, 1); -- 10 MADERO VEGETARIANO
INSERT INTO PRODUTO_OBSERVACAO(pro_sequencia, obs_sequencia) VALUES(10, 4); -- 10 MADERO VEGETARIANO
INSERT INTO PRODUTO_OBSERVACAO(pro_sequencia, obs_sequencia) VALUES(11, 1); -- 11 MADERO VEGANO
INSERT INTO PRODUTO_OBSERVACAO(pro_sequencia, obs_sequencia) VALUES(11, 4); -- 11 MADERO VEGANO
INSERT INTO PRODUTO_OBSERVACAO(pro_sequencia, obs_sequencia) VALUES(11, 3); -- 11 MADERO VEGANO
INSERT INTO PRODUTO_OBSERVACAO(pro_sequencia, obs_sequencia) VALUES(12, 1); -- 12 FALAFEL VEGETARIANO
INSERT INTO PRODUTO_OBSERVACAO(pro_sequencia, obs_sequencia) VALUES(12, 4); -- 12 FALAFEL VEGETARIANO
INSERT INTO PRODUTO_OBSERVACAO(pro_sequencia, obs_sequencia) VALUES(13, 1); -- 13 FALAFEL VEGANO
INSERT INTO PRODUTO_OBSERVACAO(pro_sequencia, obs_sequencia) VALUES(13, 4); -- 13 FALAFEL VEGANO
INSERT INTO PRODUTO_OBSERVACAO(pro_sequencia, obs_sequencia) VALUES(13, 3); -- 13 FALAFEL VEGANO
-- PRODUTOS DO GRUPO SANDWICHES FIT
INSERT INTO PRODUTO_OBSERVACAO(pro_sequencia, obs_sequencia) VALUES(14, 2); -- 14 CHEESEBURGER MADERO FIT
INSERT INTO PRODUTO_OBSERVACAO(pro_sequencia, obs_sequencia) VALUES(15, 2); -- 15 CHEESEBURGER MADERO MENOS SAL
INSERT INTO PRODUTO_OBSERVACAO(pro_sequencia, obs_sequencia) VALUES(16, 2); -- 16 CHEESE CHICKEN FIT
-- PRODUTOS DO GRUPO SANDWICHES
INSERT INTO PRODUTO_OBSERVACAO(pro_sequencia, obs_sequencia) VALUES(17, 2); -- 17 CHORIPÁN
INSERT INTO PRODUTO_OBSERVACAO(pro_sequencia, obs_sequencia) VALUES(17, 1); -- 17 CHORIPÁN
INSERT INTO PRODUTO_OBSERVACAO(pro_sequencia, obs_sequencia) VALUES(17, 3); -- 17 CHORIPÁN
INSERT INTO PRODUTO_OBSERVACAO(pro_sequencia, obs_sequencia) VALUES(18, 2); -- 18 CHEESE CHICKEN CRISPY
INSERT INTO PRODUTO_OBSERVACAO(pro_sequencia, obs_sequencia) VALUES(18, 1); -- 18 CHEESE CHICKEN CRISPY
INSERT INTO PRODUTO_OBSERVACAO(pro_sequencia, obs_sequencia) VALUES(19, 2); -- 19 CHEESE CHICKEN GRELHADO
INSERT INTO PRODUTO_OBSERVACAO(pro_sequencia, obs_sequencia) VALUES(19, 1); -- 19 CHEESE CHICKEN GRELHADO
-- PRODUTOS DO GRUPO BURGERS KIDS
INSERT INTO PRODUTO_OBSERVACAO(pro_sequencia, obs_sequencia) VALUES(20, 2); -- 20 2 MINI CHEESEBURGERS
INSERT INTO PRODUTO_OBSERVACAO(pro_sequencia, obs_sequencia) VALUES(21, 2); -- 21 2 MINI CHEESEBACONS
-- PRODUTOS DO GRUPO APERITIVOS
INSERT INTO PRODUTO_OBSERVACAO(pro_sequencia, obs_sequencia) VALUES(22, 1); -- 22 MINI COXINHAS 12 UN
INSERT INTO PRODUTO_OBSERVACAO(pro_sequencia, obs_sequencia) VALUES(23, 1); -- 23 MINI COXINHAS 24 UN
INSERT INTO PRODUTO_OBSERVACAO(pro_sequencia, obs_sequencia) VALUES(24, 1); -- 24 CHICKEN FINGERS ARTESANAIS
INSERT INTO PRODUTO_OBSERVACAO(pro_sequencia, obs_sequencia) VALUES(24, 3); -- 24 CHICKEN FINGERS ARTESANAIS
INSERT INTO PRODUTO_OBSERVACAO(pro_sequencia, obs_sequencia) VALUES(24, 2); -- 24 CHICKEN FINGERS ARTESANAIS
INSERT INTO PRODUTO_OBSERVACAO(pro_sequencia, obs_sequencia) VALUES(25, 1); -- 25 CESTA DE BATATAS FRITAS COM CHEDDAR E BACON
INSERT INTO PRODUTO_OBSERVACAO(pro_sequencia, obs_sequencia) VALUES(26, 1); -- 26 MINI PASTÉIS
INSERT INTO PRODUTO_OBSERVACAO(pro_sequencia, obs_sequencia) VALUES(26, 3); -- 26 MINI PASTÉIS
-- PRODUTOS DO GRUPO EXTRAS
INSERT INTO PRODUTO_OBSERVACAO(pro_sequencia, obs_sequencia) VALUES(27, 4); -- 27 PORÇÃO DE BATATAS FRITAS
INSERT INTO PRODUTO_OBSERVACAO(pro_sequencia, obs_sequencia) VALUES(27, 3); -- 27 PORÇÃO DE BATATAS FRITAS
INSERT INTO PRODUTO_OBSERVACAO(pro_sequencia, obs_sequencia) VALUES(27, 5); -- 27 PORÇÃO DE BATATAS FRITAS
INSERT INTO PRODUTO_OBSERVACAO(pro_sequencia, obs_sequencia) VALUES(28, 1); -- 28 PORÇÃO DE CHEDDAR E BACON
INSERT INTO PRODUTO_OBSERVACAO(pro_sequencia, obs_sequencia) VALUES(29, 3); -- 29 MAIONESE EXTRA
INSERT INTO PRODUTO_OBSERVACAO(pro_sequencia, obs_sequencia) VALUES(30, 1); -- 30 MOLHO BARBECUE
INSERT INTO PRODUTO_OBSERVACAO(pro_sequencia, obs_sequencia) VALUES(30, 3); -- 30 MOLHO BARBECUE


-- TABELA ASSOCIATIVA COMBO_PRODUTO

--Combo Madero Simples
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(1, 1); -- PRINCIPAL
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(1, 40); -- REFRIGERANTE
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(1, 33); -- CHÁ GELADO
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(1, 35); -- LEMONADE
--Combo Madero Plus
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(2, 1); -- PRINCIPAL
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(2, 41); -- CHOPP
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(2, 37); -- SUCO DE LARANJA
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(2, 38); -- SUCO DE UVA

--Combo Madero Super Simples
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(3, 2); -- PRINCIPAL
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(3, 40); -- REFRIGERANTE
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(3, 33); -- CHÁ GELADO
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(3, 35); -- LEMONADE
--Combo Madero Super Plus
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(4, 2); -- PRINCIPAL
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(4, 41); -- CHOPP
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(4, 37); -- SUCO DE LARANJA
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(4, 38); -- SUCO DE UVA

--Combo Madero Bacon Simples
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(5, 3); -- PRINCIPAL
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(5, 40); -- REFRIGERANTE
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(5, 33); -- CHÁ GELADO
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(5, 35); -- LEMONADE
--Combo Madero Bacon Plus
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(6, 3); -- PRINCIPAL
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(6, 41); -- CHOPP
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(6, 37); -- SUCO DE LARANJA
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(6, 38); -- SUCO DE UVA

--Combo Madero Bacon Super Simples
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(7, 4); -- PRINCIPAL
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(7, 40); -- REFRIGERANTE
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(7, 33); -- CHÁ GELADO
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(7, 35); -- LEMONADE
--Combo Madero Bacon Super Plus
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(8, 4); -- PRINCIPAL
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(8, 41); -- CHOPP
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(8, 37); -- SUCO DE LARANJA
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(8, 38); -- SUCO DE UVA

--Combo Junior Simples
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(9, 5); -- PRINCIPAL
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(9, 40); -- REFRIGERANTE
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(9, 33); -- CHÁ GELADO
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(9, 35); -- LEMONADE
--Combo Junior Plus
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(10, 5); -- PRINCIPAL
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(10, 41); -- CHOPP
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(10, 37); -- SUCO DE LARANJA
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(10, 38); -- SUCO DE UVA

--Combo Junior Bacon Simples
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(11, 6); -- PRINCIPAL
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(11, 40); -- REFRIGERANTE
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(11, 33); -- CHÁ GELADO
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(11, 35); -- LEMONADE
--Combo Junior Bacon Plus
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(12, 6); -- PRINCIPAL
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(12, 41); -- CHOPP
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(12, 37); -- SUCO DE LARANJA
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(12, 38); -- SUCO DE UVA

--Combo Cordeiro Simples
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(13, 7); -- PRINCIPAL
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(13, 40); -- REFRIGERANTE
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(13, 33); -- CHÁ GELADO
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(13, 35); -- LEMONADE
--Combo Cordeiro Plus
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(14, 7); -- PRINCIPAL
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(14, 41); -- CHOPP
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(14, 37); -- SUCO DE LARANJA
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(14, 38); -- SUCO DE UVA

--Combo Cordeiro Super Simples
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(15, 8); -- PRINCIPAL
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(15, 40); -- REFRIGERANTE
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(15, 33); -- CHÁ GELADO
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(15, 35); -- LEMONADE
--Combo Cordeiro Super Plus
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(16, 8); -- PRINCIPAL
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(16, 41); -- CHOPP
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(16, 37); -- SUCO DE LARANJA
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(16, 38); -- SUCO DE UVA

--Combo Cordeiro Bacon Simples
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(17, 9); -- PRINCIPAL
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(17, 40); -- REFRIGERANTE
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(17, 33); -- CHÁ GELADO
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(17, 35); -- LEMONADE
--Combo Cordeiro Bacon Plus
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(18, 9); -- PRINCIPAL
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(18, 41); -- CHOPP
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(18, 37); -- SUCO DE LARANJA
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(18, 38); -- SUCO DE UVA

--Combo Madero Vegetariano Simples
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(19, 10); -- PRINCIPAL
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(19, 40); -- REFRIGERANTE
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(19, 33); -- CHÁ GELADO
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(19, 35); -- LEMONADE
--Combo Madero Vegetariano Plus
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(20, 10); -- PRINCIPAL
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(20, 41); -- CHOPP
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(20, 37); -- SUCO DE LARANJA
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(20, 38); -- SUCO DE UVA

--Combo Madero Vegano Simples
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(21, 11); -- PRINCIPAL
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(21, 40); -- REFRIGERANTE
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(21, 33); -- CHÁ GELADO
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(21, 35); -- LEMONADE
--Combo Madero Vegano Simples
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(22, 11); -- PRINCIPAL
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(22, 41); -- CHOPP
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(22, 37); -- SUCO DE LARANJA
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(22, 38); -- SUCO DE UVA

--Combo Falafel Vegetariano Simples
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(23, 12); -- PRINCIPAL
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(23, 40); -- REFRIGERANTE
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(23, 33); -- CHÁ GELADO
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(23, 35); -- LEMONADE
--Combo Falafel Vegetariano Plus
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(24, 12); -- PRINCIPAL
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(24, 41); -- CHOPP
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(24, 37); -- SUCO DE LARANJA
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(24, 38); -- SUCO DE UVA

--Combo Falafel Vegano Simples
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(25, 13); -- PRINCIPAL
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(25, 40); -- REFRIGERANTE
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(25, 33); -- CHÁ GELADO
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(25, 35); -- LEMONADE
--Combo Falafel Vegano Plus
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(26, 13); -- PRINCIPAL
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(26, 41); -- CHOPP
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(26, 37); -- SUCO DE LARANJA
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(26, 38); -- SUCO DE UVA

--Combo Cheeseburger Madero Fit Simples
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(27, 14); -- PRINCIPAL
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(27, 40); -- REFRIGERANTE
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(27, 33); -- CHÁ GELADO
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(27, 35); -- LEMONADE
--Combo Cheeseburger Madero Fit Plus
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(28, 14); -- PRINCIPAL
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(28, 41); -- CHOPP
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(28, 37); -- SUCO DE LARANJA
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(28, 38); -- SUCO DE UVA

--Combo Cheeseburger Madero Menos Sal Simples
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(29, 15); -- PRINCIPAL
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(29, 40); -- REFRIGERANTE
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(29, 33); -- CHÁ GELADO
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(29, 35); -- LEMONADE
--Combo Cheeseburger Madero Menos Sal Plus
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(30, 15); -- PRINCIPAL
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(30, 41); -- CHOPP
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(30, 37); -- SUCO DE LARANJA
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(30, 38); -- SUCO DE UVA

--Combo Cheese Chicken Fit Simples
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(31, 16); -- PRINCIPAL
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(31, 40); -- REFRIGERANTE
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(31, 33); -- CHÁ GELADO
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(31, 35); -- LEMONADE
--Combo Cheese Chicken Fit Plus
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(32, 16); -- PRINCIPAL
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(32, 41); -- CHOPP
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(32, 37); -- SUCO DE LARANJA
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(32, 38); -- SUCO DE UVA

--Combo Choripán Simples
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(33, 17); -- PRINCIPAL
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(33, 40); -- REFRIGERANTE
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(33, 33); -- CHÁ GELADO
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(33, 35); -- LEMONADE
--Combo Choripán Plus
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(34, 17); -- PRINCIPAL
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(34, 41); -- CHOPP
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(34, 37); -- SUCO DE LARANJA
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(34, 38); -- SUCO DE UVA

--Combo Cheese Chicken Crispy Simples
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(35, 18); -- PRINCIPAL
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(35, 40); -- REFRIGERANTE
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(35, 33); -- CHÁ GELADO
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(35, 35); -- LEMONADE
--Combo Cheese Chicken Crispy Plus
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(36, 18); -- PRINCIPAL
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(36, 41); -- CHOPP
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(36, 37); -- SUCO DE LARANJA
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(36, 38); -- SUCO DE UVA

--Combo Cheese Chicken Grelhado Simples
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(37, 19); -- PRINCIPAL
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(37, 40); -- REFRIGERANTE
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(37, 33); -- CHÁ GELADO
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(37, 35); -- LEMONADE
--Combo Cheese Chicken Grelhado Plus
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(38, 19); -- PRINCIPAL
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(38, 41); -- CHOPP
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(38, 37); -- SUCO DE LARANJA
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(38, 38); -- SUCO DE UVA

--Combo 2 Mini Cheeseburgers Simples
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(39, 20); -- PRINCIPAL
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(39, 40); -- REFRIGERANTE
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(39, 33); -- CHÁ GELADO
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(39, 35); -- LEMONADE
--Combo 2 Mini Cheeseburgers Plus
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(40, 20); -- PRINCIPAL
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(40, 41); -- CHOPP
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(40, 37); -- SUCO DE LARANJA
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(40, 38); -- SUCO DE UVA

--Combo 2 Mini Cheesebacons Simples
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(41, 21); -- PRINCIPAL
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(41, 40); -- REFRIGERANTE
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(41, 33); -- CHÁ GELADO
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(41, 35); -- LEMONADE
--Combo 2 Mini Cheesebacons Plus
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(42, 21); -- PRINCIPAL
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(42, 41); -- CHOPP
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(42, 37); -- SUCO DE LARANJA
INSERT INTO COMBO_PRODUTO(cmb_sequencia, pro_sequencia) VALUES(42, 38); -- SUCO DE UVA


-- TABELA ASSOCIATIVA PRODUTO_INGREDIENTE *Necessario Executar

