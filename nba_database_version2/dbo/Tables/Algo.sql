--select Player.Season, Player.tm, COUNT(*) as totalPlayers 
--from Player
--where (G Between 50 AND 82)
--AND (MP Between 900 AND 3167)
--AND (PER Between 12.9 AND 129)

--group by player.tm, Player.Season
--order by Player.Season ASC, totalPlayers desc

--select Player.Season, Player.tm, sum(PER) as per_rating, sum(MP) as mins_played ,sum(TS) as true_shooting 
--, sum(TOV) as Turnovers, sum (TRB) as total_rebounds
--from Player
--where (G Between 50 AND 82)

--group by player.tm, Player.Season
--order by Player.Season ASC, per_rating desc, mins_played desc, true_shooting desc, Turnovers ASC, total_rebounds desc
