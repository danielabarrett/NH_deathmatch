

# scoreboard players set GAME_CLOCK clock 0
function warfare:_global/reset


#
# reset players
#

# kill @a
execute as @e[type=armor_stand,name="spawn_red"] run tp @a[team=RED] ~ ~100 ~
execute as @e[type=armor_stand,name="spawn_blue"] run tp @a[team=BLUE] ~ ~100 ~
# clear @a
effect give @a levitation infinite 255 true
effect give @a invisibility infinite 1 true


#
# teams
#


execute if score op_shuffle_teams option matches 1 run team leave @a
execute if score op_shuffle_teams option matches 1 run team remove RED
execute if score op_shuffle_teams option matches 1 run team remove BLUE
team add RED {"text":"RED","color":"red"}
team add BLUE {"text":"BLUE","color":"blue"}
# team modify RED nametagVisibility hideForOtherTeams
# team modify BLUE nametagVisibility hideForOtherTeams
team modify RED prefix {"text":"[","color":"dark_gray","extra":[{"text":"RED","color":"red"},{"text":"] ","color":"dark_gray"}]}
team modify BLUE prefix {"text":"[","color":"dark_gray","extra":[{"text":"BLUE","color":"blue"},{"text":"] ","color":"dark_gray"}]}
team modify RED friendlyFire false
team modify BLUE friendlyFire false
team modify RED nametagVisibility hideForOtherTeams
team modify BLUE nametagVisibility hideForOtherTeams
function warfare:deathmatch_remake/fillteams


#
# start countdown
#

bossbar add timer {"text":"Team deathmatch_remake","color":"gold"}
bossbar set timer name {"text":"Team deathmatch_remake","color":"gold"}
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
execute as @a run function warfare:deathmatch_remake/loadouts/choose

# scoreboard players set @a loadout_view 1
# scoreboard players set @a loadout_select 1
# execute as @a[team=RED] run function warfare:deathmatch_remake/loadouts/sel_red_1
# execute as @a[team=BLUE] run function warfare:deathmatch_remake/loadouts/sel_blue_1


#
# set gamemode
# 1 - deathmatch_remake
# 2 - capture the flag
# 3 - protect the president
# 4 - kill the bunny
# 5 - king of the hill
# 6 - two zones
# 7 - free for all
#
scoreboard players set gamemode utility 1
scoreboard players set @a utility 1
