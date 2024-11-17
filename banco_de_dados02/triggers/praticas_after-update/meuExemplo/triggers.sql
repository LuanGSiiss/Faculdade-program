-- TRIGGERS PARA FAZER O CONTROLE DAS MOVIMENTAÇÕES DO ESTOQUE

CREATE OR REPLACE FUNCTION controle_estoque()
	RETURNS TRIGGER 
	lANGUAGE PLPGSQL
AS
$$
DECLARE
	vRESULTADO INTEGER;
BEGIN
	IF new.quantidade > old.quantidade THEN  -- Quando for entrada de produtos
		vRESULTADO := new.quantidade - old.quantidade;
		INSERT INTO inventario_historico(produto_id, tipo, quantidade_movimento, datahora) 
			VALUES(new.produto_id, 'ENTRADA', vRESULTADO, CURRENT_TIMESTAMP);
	ELSEIF new.quantidade < old.quantidade THEN  -- Quando for saida de produtos  
		vRESULTADO := old.quantidade - new.quantidade;
		INSERT INTO inventario_historico(produto_id, tipo, quantidade_movimento, datahora)
			VALUES(new.produto_id, 'SAÍDA', vRESULTADO, CURRENT_TIMESTAMP);
	ELSE
		-- NÃO FAZ NADA SE A QUANTIDADE PERMANECER A MESMA
	END IF;
	RETURN NEW;
END;
$$

-- CRIANDO TRIGGER

CREATE TRIGGER trigger_controle_estoque
AFTER UPDATE
ON inventario
FOR EACH ROW 
EXECUTE FUNCTION controle_estoque();







