--Inserindo dados e testandos as triggers
SELECT * FROM members;
SELECT * FROM memberships;


INSERT INTO members(member_name, email) 
	VALUES('John Doe', '[[email protected]](../cdn-cgi/l/email-protection.html)')
	RETURNING *;

DELETE FROM members WHERE member_id = 1;