-- 1. Listar os players que jogaram no mês 03 de 2022.

SELECT DISTINCT first_name AS "PRIMEIRO NOME", last_name AS SOBRENOME
	FROM players
	WHERE player_id IN (
		SELECT player_id
		FROM games
		JOIN appearances USING (game_id)
		WHERE EXTRACT(YEAR FROM games.date) = 2022 AND EXTRACT(MONTH FROM games.date) = 03
	)
	ORDER BY 1, 2;


-- 2. Listar os players que não jogaram no ano de 2019.

SELECT DISTINCT first_name AS "PRIMEIRO NOME", last_name AS SOBRENOME
	FROM players
	WHERE player_id NOT IN (
		SELECT player_id
		FROM games
		JOIN appearances USING (game_id)
		WHERE EXTRACT(YEAR FROM games.date) = 2022 AND EXTRACT(MONTH FROM games.date) = 03
	)
	ORDER BY 1, 2;

-- 3. Listar os players e clubs que não jogaram no ano de 2019.

SELECT DISTINCT clubs.name as CLUBE, first_name AS "PRIMEIRO NOME", last_name AS SOBRENOME 
	FROM players
	JOIN clubs ON clubs.club_id = players.current_club_id
	WHERE player_id NOT IN (
		SELECT player_id
		FROM games
		JOIN appearances USING (game_id)
		WHERE EXTRACT(YEAR FROM games.date) = 2019

	)
	ORDER BY 1, 2, 3;


-- 4. Listar os player que tiveram contratos que somandos são maior que 1 milhão de euros, mas não participaram de competições em Portugal.

SELECT p.first_name AS NOME, p.last_name AS SOBRENOME, SUM(pv.market_value_in_eur) AS VALOR
	FROM players AS p
	JOIN player_valuations AS pv ON p.player_id = pv.player_id
	LEFT JOIN (
		SELECT appearances.player_id
		FROM appearances
		JOIN competitions ON appearances.competition_id =  competitions.competition_id
		WHERE competitions.country_id = 136
	) AS jogadores_exluidos ON p.player_id = jogadores_exluidos.player_id
	WHERE jogadores_exluidos.player_id IS NULL
	GROUP BY 1, 2 
	HAVING SUM(pv.market_value_in_eur) > 1000000
	ORDER BY 1, 2, 3;


SELECT * FROM players;
SELECT * FROM player_valuations ORDER BY player_id;
SELECT * FROM clubs;
SELECT * FROM games;
SELECT * FROM appearances;
SELECT * FROM competitions;