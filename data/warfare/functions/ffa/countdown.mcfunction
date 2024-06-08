

# scoreboard players set GAME_CLOCK clock 0
function warfare:_global/reset


#
# reset players
#

# kill @a
execute as @e[type=armor_stand,name="spawn_neutral",limit=1,sort=random] run tp @a ~ ~100 ~
# clear @a
effect give @a levitation infinite 255 true
effect give @a invisibility infinite 1 true


#
# teams
#


team leave @a
team remove NEUTRAL
team add NEUTRAL
team modify NEUTRAL nametagVisibility never
team modify NEUTRAL friendlyFire true
team join NEUTRAL @a


#
# start countdown
#

bossbar add timer {"text":"Free for All","color":"gold"}
bossbar set timer name {"text":"Free for All","color":"gold"}
bossbar set timer visible true
bossbar set timer players @a
bossbar set timer max 100
bossbar set timer value 100
title @a times 0.1s 0.8s 0.1s
scoreboard objectives add clock dummy {"text":"clock","color":"red"}
scoreboard players set COUNTDOWN_CLOCK clock 100



#
# loadouts
#

scoreboard players set @a loadout_select 1
execute as @a run function warfare:ffa/loadouts/choose


#
# set gamemode
# 1 - deathmatch
# 2 - capture the flag
# 3 - protect the president
# 4 - kill the bunny
# 5 - king of the hill
# 6 - two zones
# 7 - free for all
#
scoreboard players set gamemode utility 7
scoreboard players set @a utility 1
