-- triggers

CREATE OR REPLACE FUNCTION funcaoAQui()
	RETURNS TRIGGER
	LANGUAGE PLPGSQL
AS
$$
BEGIN
	RAISE EXCEPTION 'Não é permitido excluir produtos';
END;
$$

CREATE TRIGGER funcaoAqui_trigger
	BEFORE DELETE
	ON products
	FOR EACH ROW
	EXECUTE FUNCTION funcaoAQui();




