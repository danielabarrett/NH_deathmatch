function warfare:deathmatch/reset
function warfare:ctf/reset
function warfare:president/reset
function warfare:one_rabbit/reset
function warfare:one_hill/reset
function warfare:two_zones/reset

bossbar set timer visible false

scoreboard players set @a death_detector 0
scoreboard players set gamemode utility 0
scoreboard players set @a utility 0

scoreboard objectives remove killcount
scoreboard objectives remove flagcount
scoreboard objectives remove points

effect clear @a