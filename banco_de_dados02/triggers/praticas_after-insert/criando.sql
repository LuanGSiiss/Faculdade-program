--

CREATE TABLE members (
    member_id SERIAL PRIMARY KEY,
    member_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE
);

CREATE TABLE memberships (
    memberships_id SERIAL PRIMARY KEY,
    member_id INT NOT NULL REFERENCES members(member_id),
    membership_type VARCHAR(50) NOT NULL DEFAULT 'free'
);

SELECT * FROM members;
SELECT * FROM memberships;