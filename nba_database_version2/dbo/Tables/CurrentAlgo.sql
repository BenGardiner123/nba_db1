Select CurrentYearPlayerData.Season, CurrentYearPlayerData.TEAM_ABBREVIATION, SUM(CurrentYearPlayerData.PTS) as points, 
SUM(CurrentYearPlayerData.MINS) as mins_played,sum(CurrentYearPlayerData.FG_PCT) as fgpct, sum(CurrentYearPlayerData.PLUS_MINUS) as plusMinus,
sum(CurrentYearPlayerData.GP) as gamesPlayed, 

SUM(PLUS_MINUS * PTS / (MINS/GP) ) as weirdAlgo

from CurrentYearPlayerData

group by CurrentYearPlayerData.Season, CurrentYearPlayerData.TEAM_ABBREVIATION
order by CurrentYearPlayerData.Season asc, weirdAlgo desc