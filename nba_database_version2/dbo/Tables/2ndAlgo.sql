Select player_w_wins.Season, player_w_wins.TEAM_ABBREVIATION, SUM(player_w_wins.PTS) as points, SUM(player_w_wins.MINS) as mins_played,
sum(player_w_wins.FG_PCT) as fgpct, sum(player_w_wins.PLUS_MINUS) as plusMinus, sum(player_w_wins.GP) as gamesPlayed, 

SUM(PLUS_MINUS * PTS / (MINS/GP) ) as weirdAlgo

from player_w_wins

group by player_w_wins.Season, player_w_wins.TEAM_ABBREVIATION
order by player_w_wins.Season asc, weirdAlgo desc