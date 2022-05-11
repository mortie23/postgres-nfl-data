-- Date:    2022-05-11
-- Author:  Christopher Mortimer
-- Desc:    Load data from Github repo to Postgres

delete from mortimer_nfl.game_type;
delete from mortimer_nfl.game;
delete from mortimer_nfl.venue;
delete from mortimer_nfl.game_venue;
delete from mortimer_nfl.weather;
delete from mortimer_nfl.team_lookup;
delete from mortimer_nfl.game_stats;
delete from mortimer_nfl.player;

COPY game_type 
  FROM PROGRAM 'wget -q -O - "$@" "https://raw.githubusercontent.com/mortie23/postgres-nfl-data/master/game_type.csv"'
  HEADER CSV DELIMITER ',';

COPY game 
  FROM PROGRAM 'wget -q -O - "$@" "https://raw.githubusercontent.com/mortie23/postgres-nfl-data/master/game.csv"'
  HEADER CSV DELIMITER ',';

COPY venue 
  FROM PROGRAM 'wget -q -O - "$@" "https://raw.githubusercontent.com/mortie23/postgres-nfl-data/master/venue.csv"'
  HEADER CSV DELIMITER ',';

COPY game_venue 
  FROM PROGRAM 'wget -q -O - "$@" "https://raw.githubusercontent.com/mortie23/postgres-nfl-data/master/game_venue.csv"'
  HEADER CSV DELIMITER ',';

COPY weather 
  FROM PROGRAM 'wget -q -O - "$@" "https://raw.githubusercontent.com/mortie23/postgres-nfl-data/master/weather.csv"'
  HEADER CSV DELIMITER ',';

COPY team_lookup 
  FROM PROGRAM 'wget -q -O - "$@" "https://raw.githubusercontent.com/mortie23/postgres-nfl-data/master/team_lookup.csv"'
  HEADER CSV DELIMITER ',';

COPY game_stats 
  FROM PROGRAM 'wget -q -O - "$@" "https://raw.githubusercontent.com/mortie23/postgres-nfl-data/master/game_stats.csv"'
  HEADER CSV DELIMITER ',';

COPY player 
  FROM PROGRAM 'wget -q -O - "$@" "https://raw.githubusercontent.com/mortie23/postgres-nfl-data/master/player.csv"'
  HEADER CSV DELIMITER ',';
