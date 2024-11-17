-- triggers

CREATE OR REPLACE FUNCTION archive_deleted_employee()
	RETURNS TRIGGER
	LANGUAGE PLPGSQL
AS
$$
BEGIN
    INSERT INTO employee_archives(id, name, salary)
    	VALUES (OLD.id, OLD.name, OLD.salary);
    RETURN OLD;
END;
$$

CREATE TRIGGER archive_deleted_employee_trigger
	AFTER DELETE
	ON employees02
	FOR EACH ROW
	EXECUTE FUNCTION archive_deleted_employee();