select player_w_wins.PLAYER_NAME, player_w_wins.PLAYER_ID, player_w_wins.TEAM_ABBREVIATION, player_w_wins.Season, player_w_wins.GP,
AVG(PLUS_MINUS) as plusMin, 
AVG(PTS) as PTS, 
AVG(MINS) as minZ
from player_w_wins
where player_w_wins.Season 
group by player_w_wins.Season, TEAM_ABBREVIATION, PLAYER_ID, PLAYER_NAME, GP