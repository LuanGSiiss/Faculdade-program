-- Triggers

CREATE OR REPLACE FUNCTION create_membership_after_insert()
	RETURNS TRIGGER
	LANGUAGE PLPGSQL
AS 
$$
BEGIN
	INSERT INTO memberships(member_id) VALUES(new.member_id);
	RETURN NEW;
END;
$$

CREATE TRIGGER after_insert_member_trigger
AFTER INSERT ON members
FOR EACH ROW
EXECUTE FUNCTION create_membership_after_insert();