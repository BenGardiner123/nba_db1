Select PlayerTest.Season, PlayerTest.TEAM_ABBREVIATION, SUM(PlayerTest.PTS) as points, SUM(PlayerTest.MINS) as mins_played,
sum(PlayerTest.FG_PCT) as fgpct, sum(PlayerTest.PLUS_MINUS) as plusMinus, sum(PlayerTest.GP) as gamesPlayed, 
SUM(PLUS_MINUS * PTS / (MINS/GP) ) as weirdAlgo
from PlayerTest

group by PlayerTest.Season, PlayerTest.TEAM_ABBREVIATION
order by PlayerTest.Season asc, weirdAlgo desc