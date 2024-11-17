-- triggers

CREATE OR REPLACE FUNCTION fn_before_update_salario()
	RETURNS TRIGGER
	LANGUAGE PLPGSQL
AS
$$
BEGIN
	IF new.salario < old.salario THEN
		RAISE EXCEPTION 'Novo salario não pode ser menor que o salario atual';
	END IF;
	RETURN NEW;
END;
$$

CREATE TRIGGER before_update_salario_trigger
	BEFORE UPDATE
	ON empregados
	FOR EACH ROW 
	EXECUTE FUNCTION fn_before_update_salario();