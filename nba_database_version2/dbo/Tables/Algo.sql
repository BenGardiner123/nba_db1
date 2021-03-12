--select Player.Season, Player.tm, COUNT(*) as totalPlayers 
--from Player
--where (G Between 50 AND 82)
--AND (MP Between 900 AND 3167)
--AND (PER Between 12.9 AND 129)

--group by player.tm, Player.Season
--order by Player.Season ASC, totalPlayers desc

select Player.Season, Player.tm, COUNT(*) as totalPlayers 
from Player
where (PER Between 12.9 AND 129)

AND (G Between 50 AND 82)
AND (MP Between 900 AND 3167)

group by player.tm, Player.Season
order by Player.Season ASC, totalPlayers desc