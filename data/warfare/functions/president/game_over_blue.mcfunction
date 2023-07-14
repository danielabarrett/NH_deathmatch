scoreboard players set gamemode utility 0
bossbar set timer visible false
title @a times 10t 7s 10t
title @a title {"text":"GAME OVER","color":"yellow"}
title @a subtitle {"text":"BLUE WINS","color":"blue"}
clear @a
execute as @a[scores={president=1}] run attribute @s generic.max_health base set 20.0
execute as @a at @a run playsound entity.wither.death player @s ~ ~ ~ 1 0.5
