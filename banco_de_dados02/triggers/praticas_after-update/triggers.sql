-- criando triggers

CREATE OR REPLACE FUNCTION log_salario_mudanca()
	RETURNS TRIGGER
	LANGUAGE PLPGSQL
AS
$$
BEGIN
	INSERT INTO salarios_mudancas(empregado_id, salario_antigo, novo_salario)
		VALUES(new.empregado_id, old.salario, new.salario);

	RETURN NEW;
END;
$$

CREATE TRIGGER after_update_salario_trigger
	AFTER UPDATE
	OF salario ON salarios -- o "of" quer dizer que, apenas quando a coluna "salario" for alterada, a trigger será chamada 
	FOR EACH ROW
	EXECUTE FUNCTION log_salario_mudanca()


