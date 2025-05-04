-- Triggers da atividade

-- Atualizar o valor do atendimento ao incluir vacinas;

CREATE OR REPLACE FUNCTION atualiza_valor_vacina()
	RETURNS TRIGGER
	LANGUAGE PLPGSQL
AS
$$
DECLARE
	vSOMA NUMERIC(10,2);
	vCUSTOVACINA NUMERIC(10,2);
BEGIN
	SELECT vacina.valor INTO vCUSTOVACINA FROM vacina
		WHERE vacina.vacina_codigo = new.vacina_codigo;
	vSOMA:= new.quantidade * vCUSTOVACINA;
	UPDATE atendimento SET valor = valor + vSOMA
		WHERE new.atendimento_sequencia = atendimento.atendimento_sequencia;
	RETURN NEW;
END;
$$

CREATE TRIGGER atualiza_valor_vacina_trigger
AFTER INSERT
ON atendimento_vacina
FOR EACH ROW
EXECUTE FUNCTION atualiza_valor_vacina();


-- Ao fechar um atendimento, atualizar o saldo devedor e preencher as parcelas (criar tabela). Vai ser 'after'

CREATE OR REPLACE FUNCTION cria_parcelas_e_atualiza_saldo()
	RETURNS TRIGGER
	LANGUAGE PLPGSQL
AS
$$
DECLARE
	vCADAPARCELA NUMERIC(10,2);
	vDATAVENCIMENTO DATE;
BEGIN
	IF old.situacao_codigo = 1 and new.situacao_codigo = 2 THEN --  Pendente , Pago
		-- ATUALIZA SALDO DEVEDOR
		UPDATE TUTOR SET saldodevedor = saldodevedor + new.valor
			WHERE tutor_codigo in (SELECT tutor_codigo FROM animal
							   		WHERE animal.animal_codigo = new.animal_codigo);
		--
		--CRiAR AS PARCELAS
		vCADAPARCELA:= new.valor / new.parcelas;
		vDATAVENCIMENTO:= CURRENT_DATE;
		FOR i IN 1..new.parcelas LOOP 
			INSERT INTO parcelas(atendimento_sequencia, numero_parcela, valor_parcela, data_vencimento) 
				VALUES(new.atendimento_sequencia, i, vCADAPARCELA, vDATAVENCIMENTO);
			vDATAVENCIMENTO:= vDATAVENCIMENTO + INTERVAL '30 days';
		END LOOP;
	END IF;
	
	RETURN NEW;
END;
$$

CREATE TRIGGER cria_parcelas_e_atualiza_saldo_trigger
	AFTER UPDATE
	OF situacao_codigo ON atendimento
	FOR EACH ROW 
	EXECUTE FUNCTION cria_parcelas_e_atualiza_saldo();




-- Criar tabelas para aquisição de produtos e atualizar o estoque


-- Atualizar o valor do atendimento ao incluir produtos e serviços
-- Implementar descontos a partir dos tipos de serviços e categorias dos produtos.
CREATE OR REPLACE FUNCTION atualiza_valor_produto()
	RETURNS TRIGGER
	LANGUAGE PLPGSQL
AS
$$
DECLARE
	vSOMA NUMERIC(10, 2);
	vCUSTOPRODUTO NUMERIC(10, 2);
	vDESCONTO NUMERIC(5, 2);
BEGIN
	--pega valor do produto
	SELECT produto.valor INTO vCUSTOPRODUTO FROM produto
		WHERE produto.produto_codigo = new.produto_codigo;

	--pega desconto da categoria do produto
	SELECT categoria.desconto INTO vDESCONTO FROM produto
		JOIN categoria ON produto.categoria_codigo = categoria.categoria_codigo
		WHERE produto.produto_codigo = new.produto_codigo;
	
	vSOMA:= new.quantidade * (vCUSTOPRODUTO * (1 - vDESCONTO));
	UPDATE atendimento SET valor = valor + vSOMA
		WHERE new.atendimento_sequencia = atendimento.atendimento_sequencia;
	RETURN NEW;
END;
$$

CREATE TRIGGER atualiza_valor_produto_trigger
AFTER INSERT
ON atendimento_produto
FOR EACH ROW
EXECUTE FUNCTION atualiza_valor_produto();

-- servico
CREATE OR REPLACE FUNCTION atualiza_valor_servico()
	RETURNS TRIGGER
	LANGUAGE PLPGSQL
AS
$$
DECLARE
	vSOMA NUMERIC(10, 2);
	vCUSTOSERVICO NUMERIC(10, 2);
	vDESCONTO NUMERIC(5, 2);
BEGIN
	--pega valor do servico
	SELECT servico.valor INTO vCUSTOSERVICO FROM servico
		WHERE servico.servico_codigo = new.servico_codigo;

	--pega desconto da categoria do produto
	SELECT tipo.desconto INTO vDESCONTO FROM servico
		JOIN tipo ON servico.tipo_codigo = tipo.tipo_codigo
		WHERE servico.servico_codigo = new.servico_codigo;
	
	vSOMA:= new.quantidade * (vCUSTOSERVICO * (1 - vDESCONTO));
	UPDATE atendimento SET valor = valor + vSOMA
		WHERE new.atendimento_sequencia = atendimento.atendimento_sequencia;
	RETURN NEW;
END;
$$

CREATE TRIGGER atualiza_valor_servico_trigger
AFTER INSERT
ON atendimento_servico
FOR EACH ROW
EXECUTE FUNCTION atualiza_valor_servico();


-- Ao incluir/alterar/excluir produtos, atualizar o estoque;

--incluir atendimento_produto
CREATE OR REPLACE FUNCTION atualiza_estoque_inclui()
	RETURNS TRIGGER
	LANGUAGE PLPGSQL
AS
$$
BEGIN
	UPDATE produto SET estoque = estoque - new.quantidade
		WHERE produto.produto_codigo = new.produto_codigo;
	RETURN NEW;
END;
$$

CREATE TRIGGER atualiza_estoque_inclui_trigger
AFTER INSERT
ON atendimento_produto
FOR EACH ROW
EXECUTE FUNCTION atualiza_estoque_inclui();

--update atendimento_produto
CREATE OR REPLACE FUNCTION atualiza_estoque_altera()
	RETURNS TRIGGER
	LANGUAGE PLPGSQL
AS
$$
BEGIN
	IF old.quantidade < new.quantidade THEN
		UPDATE produto SET estoque = estoque - (new.quantidade - old.quantidade)
		WHERE produto.produto_codigo = new.produto_codigo;
	ELSEIF old.quantidade > new.quantidade THEN
		UPDATE produto SET estoque = estoque + (old.quantidade - new.quantidade)
		WHERE produto.produto_codigo = new.produto_codigo;
	ELSE
	END IF;
	RETURN NEW;
END;
$$

CREATE TRIGGER atualiza_estoque_altera_trigger
AFTER UPDATE
ON atendimento_produto
FOR EACH ROW
EXECUTE FUNCTION atualiza_estoque_altera();

--delete atendimento_produto
CREATE OR REPLACE FUNCTION atualiza_estoque_exclui()
	RETURNS TRIGGER
	LANGUAGE PLPGSQL
AS
$$
BEGIN
	UPDATE produto SET estoque = estoque + old.quantidade
		WHERE produto.produto_codigo = old.produto_codigo;
	RETURN OLD;
END;
$$

CREATE TRIGGER atualiza_estoque_exclui_trigger
AFTER DELETE
ON atendimento_produto
FOR EACH ROW
EXECUTE FUNCTION atualiza_estoque_exclui();


--Atualização de estoque do produto com base no pedido-produto

-- INSERT
CREATE OR REPLACE FUNCTION atualiza_estoque_pedido_inserir()
    RETURNS TRIGGER
    LANGUAGE PLPGSQL
AS
$$
BEGIN
    UPDATE produto
    SET estoque = estoque + NEW.quantidade
    WHERE produto_codigo = NEW.produto_codigo;
    RETURN NEW;
END;
$$;

CREATE TRIGGER atualiza_estoque_pedido_inserir_trigger
AFTER INSERT
ON pedido_produto
FOR EACH ROW
EXECUTE FUNCTION atualiza_estoque_pedido_inserir();

-- UPDATE
CREATE OR REPLACE FUNCTION atualiza_estoque_pedido_atualizar()
    RETURNS TRIGGER
    LANGUAGE PLPGSQL
AS
$$
BEGIN
    IF OLD.quantidade < NEW.quantidade THEN
        UPDATE produto
        SET estoque = estoque + (NEW.quantidade - OLD.quantidade)
        WHERE produto_codigo = NEW.produto_codigo;
    ELSIF OLD.quantidade > NEW.quantidade THEN
        UPDATE produto
        SET estoque = estoque - (OLD.quantidade - NEW.quantidade)
        WHERE produto_codigo = NEW.produto_codigo;
    END IF;
    RETURN NEW;
END;
$$;

CREATE TRIGGER atualiza_estoque_pedido_atualizar_trigger
AFTER UPDATE
ON pedido_produto
FOR EACH ROW
EXECUTE FUNCTION atualiza_estoque_pedido_atualizar();

-- DELETE
CREATE OR REPLACE FUNCTION atualiza_estoque_pedido_excluir()
    RETURNS TRIGGER
    LANGUAGE PLPGSQL
AS
$$
BEGIN
    UPDATE produto
    SET estoque = estoque - OLD.quantidade
    WHERE produto_codigo = OLD.produto_codigo;
    RETURN OLD;
END;
$$;

CREATE TRIGGER atualiza_estoque_pedido_excluir_trigger
AFTER DELETE
ON pedido_produto
FOR EACH ROW
EXECUTE FUNCTION atualiza_estoque_pedido_excluir();

-- Atualizar o saldo devedor do cliente, quando uma parcela for paga ou retornar como aberta;
-- Pendente , Pago

CREATE OR REPLACE FUNCTION atualiza_saldo_devedor_parcela()
    RETURNS TRIGGER
    LANGUAGE PLPGSQL
AS
$$
BEGIN
	IF old.situacao = 'Pendente' AND new.situacao = 'Pago' THEN
		UPDATE TUTOR SET saldodevedor = saldodevedor - new.valor_parcela
			WHERE tutor_codigo in (SELECT animal.tutor_codigo FROM atendimento
								   	JOIN animal ON atendimento.animal_codigo = animal.animal_codigo
							   		WHERE atendimento.atendimento_sequencia = new.atendimento_sequencia); 	
	ELSEIF OLD.situacao = 'Pago' AND NEW.situacao = 'Pendente' THEN
		UPDATE TUTOR SET saldodevedor = saldodevedor + new.valor_parcela
			WHERE tutor_codigo in (SELECT animal.tutor_codigo FROM atendimento
								   	JOIN animal ON atendimento.animal_codigo = animal.animal_codigo
							   		WHERE atendimento.atendimento_sequencia = new.atendimento_sequencia);
	END IF;
    RETURN NEW;
END;
$$;

CREATE TRIGGER atualiza_saldo_devedor_parcela_trigger
AFTER UPDATE
ON parcelas
FOR EACH ROW
EXECUTE FUNCTION atualiza_saldo_devedor_parcela();

