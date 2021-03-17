--Select player_w_wins.Season, 
--player_w_wins.TEAM_ABBREVIATION, player_w_wins.PLAYER_ID,
--SUM(player_w_wins.PTS) as points, 
--SUM(player_w_wins.MINS) as mins_played,
--sum(player_w_wins.FG_PCT) as fgpct, 
--sum(player_w_wins.PLUS_MINUS) as plusMinus, 
--sum(player_w_wins.GP) as gamesPlayed, 


--SUM(PLUS_MINUS * PTS / (MINS/GP) ) as weirdAlgo
--from player_w_wins

--group by player_w_wins.Season, player_w_wins.TEAM_ABBREVIATION
--order by player_w_wins.Season asc, weirdAlgo desc

Select player_w_wins.Season, 
player_w_wins.TEAM_ABBREVIATION, PLAYER_NAME ,player_w_wins.PLAYER_ID, player_w_wins.PLUS_MINUS as plusMin, 
player_w_wins.PTS as PTS, player_w_wins.MINS as minZ, player_w_wins.GP as gamesplayed, 

avg(player_w_wins.PLUS_MINUS) over(partition by player_ID) as careerPlusMinusAvg,
AVG(player_w_wins.PTS) over(partition by player_ID) as careerPtsAvg,
AVG(player_w_wins.MINS) over(partition by player_ID) as careerMinsAvg,
AVG(player_w_wins.GP) over(partition by player_ID) as careerPtsAvg
from player_w_wins
where Season between 201112 and 201516