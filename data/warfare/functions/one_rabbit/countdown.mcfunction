tellraw @s {"text":"Starting the game!","color":"gold"}

# scoreboard players set GAME_CLOCK clock 0
function warfare:_global/reset


#
# teams
#

tellraw @s {"text":"Setting up teams!","color":"gold"}
execute if score op_shuffle_teams option matches 1 run team leave @a
execute if score op_shuffle_teams option matches 1 run team remove RED
execute if score op_shuffle_teams option matches 1 run team remove BLUE
team add RED {"text":"RED","color":"red"}
team add BLUE {"text":"BLUE","color":"blue"}
team add RABBIT {"text":"RABBIT","color":"dark_gray"}
# team modify RED nametagVisibility hideForOtherTeams
# team modify BLUE nametagVisibility hideForOtherTeams
# team modify RABBIT nametagVisibility hideForOtherTeams
team modify RED prefix {"text":"[","color":"dark_gray","extra":[{"text":"RED","color":"red"},{"text":"] ","color":"dark_gray"}]}
team modify BLUE prefix {"text":"[","color":"dark_gray","extra":[{"text":"BLUE","color":"blue"},{"text":"] ","color":"dark_gray"}]}
team modify RABBIT prefix {"text":"[","color":"dark_gray","extra":[{"text":"RABBIT","color":"white"},{"text":"] ","color":"dark_gray"}]}
team modify RED friendlyFire false
team modify BLUE friendlyFire false
team modify RABBIT friendlyFire false
team join RABBIT @r[team=]
function warfare:one_rabbit/fillteams


#
# start countdown
#

bossbar add timer {"text":"Kill the Rabbit","color":"gold"}
bossbar set timer name {"text":"Kill the Rabbit","color":"gold"}
bossbar set timer visible true
bossbar set timer players @a
bossbar set timer max 100
bossbar set timer value 100
title @a times 0.1s 0.8s 0.1s
scoreboard objectives add clock dummy {"text":"clock","color":"red"}
scoreboard players set COUNTDOWN_CLOCK clock 100
tellraw @s {"text":"Sending title message!","color":"gold"}


#
# loadouts
#

scoreboard players set @a loadout_view 1
scoreboard players set @a loadout_select 1
execute as @a[team=RED] run function warfare:one_rabbit/loadouts/sel_red_1
execute as @a[team=BLUE] run function warfare:one_rabbit/loadouts/sel_blue_1
execute as @a[team=RABBIT] run function warfare:one_rabbit/loadouts/sel_rabbit_1


#
# set gamemode
# 1 - deathmatch
# 2 - capture the flag
# 3 - protect the president
# 4 - kill the bunny
# 5 - king of the hill
# 6 - two zones
#
scoreboard players set gamemode utility 4
