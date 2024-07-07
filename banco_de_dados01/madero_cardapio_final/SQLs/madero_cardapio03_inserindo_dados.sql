--------------------------   INSERINDO TODOS OS DADOS DAS TABELAS   --------------------------



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


--------------------------   INSERINDO OS INGREDIENTES   --------------------------

INSERT INTO ingrediente(descricao, quantidade) VALUES('Pão Crocante', 10);
INSERT INTO ingrediente(descricao, quantidade) VALUES('Pão Crocante Integral', 10);
INSERT INTO ingrediente(descricao, quantidade) VALUES('Pão Crocante Pequeno', 10);
INSERT INTO ingrediente(descricao, quantidade) VALUES('Alface', 10);
INSERT INTO ingrediente(descricao, quantidade) VALUES('Tomate', 10);
INSERT INTO ingrediente(descricao, quantidade) VALUES('Tomate Seco', 10);
INSERT INTO ingrediente(descricao, quantidade) VALUES('Queijo Cheddar', 10);
INSERT INTO ingrediente(descricao, quantidade) VALUES('Maionese Artesanal', 10);
INSERT INTO ingrediente(descricao, quantidade) VALUES('Hamburguer de 180g', 10);
INSERT INTO ingrediente(descricao, quantidade) VALUES('Hamburguer de 130g', 10);
INSERT INTO ingrediente(descricao, quantidade) VALUES('Hamburguer de 110g', 10);
INSERT INTO ingrediente(descricao, quantidade) VALUES('Hamburguer de 100g', 10);
INSERT INTO ingrediente(descricao, quantidade) VALUES('Hamburguer de 45g', 10);
INSERT INTO ingrediente(descricao, quantidade) VALUES('Bacon', 10);
INSERT INTO ingrediente(descricao, quantidade) VALUES('Cogumelo-de-Paris', 10);
INSERT INTO ingrediente(descricao, quantidade) VALUES('Feijão Rosinha', 10);
INSERT INTO ingrediente(descricao, quantidade) VALUES('Grão-de-Bico', 10);
INSERT INTO ingrediente(descricao, quantidade) VALUES('Arroz Integral', 10);
INSERT INTO ingrediente(descricao, quantidade) VALUES('Proteína de Ervilha', 10);
INSERT INTO ingrediente(descricao, quantidade) VALUES('Temperos', 10);
INSERT INTO ingrediente(descricao, quantidade) VALUES('Especiarias', 10);
INSERT INTO ingrediente(descricao, quantidade) VALUES('Espessante', 10);
INSERT INTO ingrediente(descricao, quantidade) VALUES('Molho de Pimentas-Verdes', 10);
INSERT INTO ingrediente(descricao, quantidade) VALUES('Creme de Palmito', 10);
INSERT INTO ingrediente(descricao, quantidade) VALUES('Linguicinha Artesanal de 130g', 10);
INSERT INTO ingrediente(descricao, quantidade) VALUES('Vinagrete', 10);
INSERT INTO ingrediente(descricao, quantidade) VALUES('1 Peito de Frango grelhado de 130g', 10);
INSERT INTO ingrediente(descricao, quantidade) VALUES('2 Peitos de Frango empanados de 140g', 10);
INSERT INTO ingrediente(descricao, quantidade) VALUES('Cebola Caramelizada', 10);
INSERT INTO ingrediente(descricao, quantidade) VALUES('Relish de Pepino', 10);
INSERT INTO ingrediente(descricao, quantidade) VALUES('Molho Barbecue', 10);
INSERT INTO ingrediente(descricao, quantidade) VALUES('Molho Vinagrete', 10);
INSERT INTO ingrediente(descricao, quantidade) VALUES('Bacon Extra', 10);
INSERT INTO ingrediente(descricao, quantidade) VALUES('Queijo Cheddar Extra', 10);


--------------------------   INSERINDO OS PRODUTOS   --------------------------

-- PRODUTOS DO GRUPO BURGERS

INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('MADERO', 36.90, 1, 'S', 'S');
INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('MADERO SUPER', 47.90, 1, 'S', 'S');
INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('MADERO BACON', 44.90, 1, 'S', 'S');
INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('MADERO BACON SUPER', 57.90, 1, 'S', 'S');
INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('JUNIOR', 33.90, 1, 'S', 'S');
INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('JUNIOR BACON', 39.90, 1, 'S', 'S');
INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('CORDEIRO', 45.30, 1, 'S', 'S');
INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('CORDEIRO SUPER', 61.50, 1, 'S', 'S');
INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('CORDEIRO BACON', 53.30, 1, 'S', 'S');

-- PRODUTOS DO GRUPO BURGERS VEGETARIANOS

INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('MADERO VEGETARIANO', 36.90, 2, 'S', 'S');
INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('MADERO VEGANO', 36.90, 2, 'S', 'S');
INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('FALAFEL VEGETARIANO', 36.90, 2, 'S', 'S');
INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('FALAFEL VEGANO', 36.90, 2, 'S', 'S');

-- PRODUTOS DO GRUPO SANDWICHES FIT

INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('CHEESEBURGER MADERO FIT', 33.90, 3, 'S', 'S');
INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('CHEESEBURGER MADERO MENOS SAL', 36.90, 3, 'S', 'S');
INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('CHEESE CHICKEN FIT', 33.90, 3, 'S', 'S');

-- PRODUTOS DO GRUPO SANDWICHES

INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('CHORIPÁN', 36.90, 4, 'S', 'S');
INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('CHEESE CHICKEN CRISPY', 36.90, 4, 'S', 'S');
INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('CHEESE CHICKEN GRELHADO', 33.90, 4, 'S', 'S');

-- PRODUTOS DO GRUPO BURGERS KIDS

INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('2 MINI CHEESEBURGERS', 25.00, 5, 'S', 'S');
INSERT INTO produto(descricao, preco, grp_sequencia, combo, ingredientes) VALUES('2 MINI CHEESEBACONS', 29.00, 5, 'S', 'S');

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
	
	
 