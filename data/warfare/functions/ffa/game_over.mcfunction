scoreboard players set gamemode utility 0
scoreboard players set @a utility 0
bossbar set timer visible false
title @a times 10t 7s 10t
title @a title {"text":"GAME OVER","color":"yellow"}
scoreboard players set max_score utility -1
execute as @a run scoreboard players operation max_score utility > @s killcount
execute as @a if score @s killcount = max_score utility run tag @s add winner
title @a subtitle [{"selector":"@a[tag=winner]","color":"yellow","bold":true},{"text":" WINS","color":"yellow"}]
tag @a remove winner
clear @a
execute as @a at @a run playsound entity.wither.death player @s ~ ~ ~ 1 0.5
