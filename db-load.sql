-- Date:    2022-05-11
-- Author:  Christopher Mortimer
-- Desc:    Load data from Github repo to Postgres

COPY game 
  FROM PROGRAM 'wget -q -O - "$@" "https://raw.githubusercontent.com/mortie23/postgres-nfl-data/master/game.csv"'
  HEADER CSV DELIMITER ',';
