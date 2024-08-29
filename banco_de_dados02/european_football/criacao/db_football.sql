BEGIN TRANSACTION;
DROP TABLE IF EXISTS clubs;
CREATE TABLE IF NOT EXISTS clubs (
	club_id	INTEGER,
	name	VARCHAR(100),
	domestic_competition_id	VARCHAR(100),
	squad_size	INTEGER,
	average_age	DECIMAL(18,8),
	foreigners_number	INTEGER,
	national_team_players	INTEGER,
	stadium_name	VARCHAR(100),
	stadium_seats	INTEGER,
	last_season	INTEGER
);
DROP TABLE IF EXISTS players;
CREATE TABLE IF NOT EXISTS players (
	player_id	INTEGER,
	first_name	VARCHAR(100),
	last_name	VARCHAR(100),
	name	VARCHAR(100),
	last_season	INTEGER,
	current_club_id	INTEGER,
	country_of_birth	VARCHAR(100),
	city_of_birth	VARCHAR(100),
	country_of_citizenship	VARCHAR(100),
	date_of_birth	TIMESTAMP,
	sub_position	VARCHAR(100),
	position	VARCHAR(100),
	foot	VARCHAR(100),
	height_in_cm	DECIMAL(18,8),
	current_club_domestic_competition_id	VARCHAR(100),
	current_club_name	VARCHAR(100),
	market_value_in_eur	DECIMAL(18,8),
	highest_market_value_in_eur	DECIMAL(18,8)
);
DROP TABLE IF EXISTS club_games;
CREATE TABLE IF NOT EXISTS club_games (
	game_id	INTEGER,
	club_id	INTEGER,
	own_goals	INTEGER,
	own_position	DECIMAL(18,8),
	own_manager_name	VARCHAR(100),
	opponent_id	INTEGER,
	opponent_goals	INTEGER,
	opponent_position	DECIMAL(18,8),
	opponent_manager_name	VARCHAR(100),
	hosting	VARCHAR(100),
	is_win	INTEGER
);
DROP TABLE IF EXISTS competitions;
CREATE TABLE IF NOT EXISTS competitions (
	competition_id	VARCHAR(100),
	name	VARCHAR(100),
	sub_type	VARCHAR(100),
	type	VARCHAR(100),
	country_id	INTEGER,
	country_name	VARCHAR(100),
	domestic_league_code	VARCHAR(100),
	is_major_national_league	INTEGER
);
DROP TABLE IF EXISTS player_valuations;
CREATE TABLE IF NOT EXISTS player_valuations (
	player_id	INTEGER,
	date	TIMESTAMP,
	market_value_in_eur	INTEGER,
	current_club_id	INTEGER,
	player_club_domestic_competition_id	VARCHAR(100)
);
DROP TABLE IF EXISTS games;
CREATE TABLE IF NOT EXISTS games (
	game_id	INTEGER,
	competition_id	VARCHAR(100),
	season	INTEGER,
	round	VARCHAR(100),
	date	TIMESTAMP,
	home_club_id	INTEGER,
	away_club_id	INTEGER,
	home_club_goals	INTEGER,
	away_club_goals	INTEGER,
	home_club_position	DECIMAL(18,8),
	away_club_position	DECIMAL(18,8),
	home_club_manager_name	VARCHAR(100),
	away_club_manager_name	VARCHAR(100),
	stadium	VARCHAR(100),
	attendance	DECIMAL(18,8),
	referee	VARCHAR(100),
	home_club_formation	VARCHAR(100),
	away_club_formation	VARCHAR(100),
	aggregate	VARCHAR(100),
	competition_type	VARCHAR(100)
);
DROP TABLE IF EXISTS game_events;
CREATE TABLE IF NOT EXISTS game_events (
	date	VARCHAR(100),
	game_id	INTEGER,
	minute	INTEGER,
	type	VARCHAR(100),
	club_id	INTEGER,
	player_id	INTEGER,
	description	VARCHAR(100),
	player_in_id	DECIMAL(18,8),
	player_assist_id	DECIMAL(18,8)
);
DROP TABLE IF EXISTS appearances;
CREATE TABLE IF NOT EXISTS appearances (
	game_id	INTEGER,
	player_id	INTEGER,
	player_club_id	INTEGER,
	player_current_club_id	INTEGER,
	date	TIMESTAMP,
	competition_id	VARCHAR(100),
	yellow_cards	INTEGER,
	red_cards	INTEGER,
	goals	INTEGER,
	assists	INTEGER,
	minutes_played	INTEGER
);
DROP TABLE IF EXISTS game_lineups;
CREATE TABLE IF NOT EXISTS game_lineups (
	date	TIMESTAMP,
	game_id	INTEGER,
	player_id	INTEGER,
	club_id	INTEGER,
	type	VARCHAR(100),
	position	VARCHAR(100),
	number	VARCHAR(100),
	team_captain	INTEGER
);
COMMIT;
