-- Funções e triggers

-- Suponha que quando o nome de um funcionário muda, você deseja registrá-lo em uma tabela separada chamada employee_audits:

CREATE OR REPLACE FUNCTION log_last_name_changes()
	RETURNS TRIGGER
	LANGUAGE PLPGSQL
	AS $$
BEGIN
	IF NEW.last_name <> OLD.last_name THEN
		INSERT INTO employee_audits(employee_id, last_name, changed_on)
		VALUES(OLD.id, OLD.last_name, now());
	END IF;

	RETURN NEW;

END;
$$

--vincule a função a uma trigger

CREATE TRIGGER last_name_changes
	BEFORE UPDATE
	ON employees
	FOR EACH ROW
	EXECUTE PROCEDURE log_last_name_changes();


-- EXCLUINDO TRIGGERS

--excluindo a trigger criada acima

DROP TRIGGER last_name_changes
	ON employees CASCADE;


-- ALTERANDO UMA TRIGGERS

--Permite que vc altere o nome de um gatilho

ALTER TRIGGER last_name_changes
	ON employees
	RENAME TO last_name_changes02;


