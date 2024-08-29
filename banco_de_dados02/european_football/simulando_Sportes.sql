-- 1. Quantos gols foram marcados pelos capitães de cada clube na última temporada da premier league (GB1);

SELECT SUM(AP.goals) AS GOALS
	FROM appearances AP
	JOIN game_lineups GL ON GL.player_id = AP.player_id
				AND GL.game_id = AP.game_id
				AND GL.club_id = AP.player_club_id
	JOIN clubs CL ON CL.club_id = AP.player_club_id
	JOIN games GM ON GM.game_id = AP.game_id
	WHERE GL.team_captain = 1 AND AP.competition_id = 'GB1' AND GM.season = 2023
	GROUP BY AP.player_club_id;
	
-- 2. Quais são o cinco clubes que mais marcaram gols em casa na última temporada na premier league (GB1); Obs: somente o nome dos clubes;

SELECT clubs.name
	FROM clubs
	WHERE clubs.club_id IN (
		SELECT games.home_club_id
		FROM games
		WHERE games.competition_id =  'GB1' AND games.season = 2023
		GROUP BY 1
		ORDER BY SUM(games.home_club_goals) DESC 
		LIMIT 5
	);

-- 3. 3333 16306 Quais são os jogadores (e seu respectivo clube) com assistência(s) e gol(s) marcados na última temporada na premier league (GB1);

WITH participacao AS 
	(SELECT appearances.player_id, appearances.player_club_id
		FROM appearances
		JOIN games ON games.game_id = appearances.game_id
		WHERE games.competition_id =  'GB1' AND games.season = 2023
	 	AND appearances.goals > 0 AND appearances.assists > 0
	)
SELECT DISTINCT players.name AS jogador, clubs.name AS clube
	FROM participacao
	JOIN players ON players.player_id = participacao.player_id
	JOIN clubs ON clubs.club_id = participacao.player_club_id
	ORDER BY 1;

-- 4. Quais são os clubes que disputaram alguma temporada e não disputaram as últimas 2 temporadas na premier league (GB1);

SELECT clubs.name AS clube
	FROM clubs
	WHERE clubs.club_id IN (
		SELECT games.home_club_id
		FROM games
		WHERE games.competition_id = 'GB1')
	AND clubs.club_id NOT IN (
		SELECT games.home_club_id
		FROM games
		WHERE games.competition_id = 'GB1' AND games.season >= 2022)
	ORDER BY 1;

	



SELECT * FROM competitions;
SELECT * FROM players WHERE player_id = 16306
SELECT * FROM club_games;
SELECT * FROM games order by season;
SELECT * FROM appearances;