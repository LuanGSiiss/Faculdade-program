
SELECT * FROM item;
SELECT * FROM pedido;
SELECT * FROM modal;
SELECT * FROM mercado;
SELECT * FROM pedido;
SELECT * FROM consumidor;
SELECT * FROM segmento;
SELECT * FROM cidade;
SELECT * FROM pais;

-- Listar os paises com quantidade total de valor dos pedidos maior que todos os paises da África junto

SELECT pais.nome AS PAIS, SUM(item.valor_bruto) AS soma
	FROM item
	JOIN pedido ON pedido.ped_codigo = item.ped_codigo
	JOIN consumidor ON consumidor.con_codigo = pedido.con_codigo
	JOIN cidade ON cidade.cid_codigo = consumidor.cid_codigo
	JOIN pais ON pais.pai_codigo = cidade.pai_codigo
	GROUP BY 1
	HAVING soma > ALL (
		SELECT interno.total
		FROM (SELECT SUM(item.valor_bruto) AS TOTAL , mercado.mer_codigo AS mercado
				FROM item
				JOIN pedido ON pedido.ped_codigo = item.ped_codigo
				JOIN consumidor ON consumidor.con_codigo = pedido.con_codigo
				JOIN cidade ON cidade.cid_codigo = consumidor.cid_codigo
				JOIN pais ON pais.pai_codigo = cidade.pai_codigo
				JOIN mercado ON mercado.mer_codigo = pais.mer_codigo
				WHERE mercado.descricao = 'Africa'
				GROUP BY 2) AS interno)