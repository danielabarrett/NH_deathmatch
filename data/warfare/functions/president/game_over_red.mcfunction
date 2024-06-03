scoreboard players set gamemode utility 0
scoreboard players set @a utility 0
bossbar set timer visible false
title @a times 10t 7s 10t
title @a title {"text":"GAME OVER","color":"yellow"}
title @a subtitle {"text":"RED WINS","color":"red"}
clear @a
execute as @a[scores={president=1}] run attribute @s generic.max_health base set 20.0
execute as @a at @a run playsound entity.wither.death player @s ~ ~ ~ 1 0.5
execute as @e[type=armor_stand,name="spawn_red"] at @e[type=armor_stand,name="spawn_red"] run spawnpoint @a[team=RED] ~ ~ ~
execute as @e[type=armor_stand,name="spawn_blue"] at @e[type=armor_stand,name="spawn_blue"] run spawnpoint @a[team=BLUE] ~ ~ ~
