#
# reset stuff
# 

# scoreboard players set GAME_CLOCK clock 0
# scoreboard players set COUNTDOWN_CLOCK clock 0
# scoreboard players set RED killcount 0
# scoreboard players set BLUE killcount 0

# bossbar set timer visible false
# bossbar set timer name {"text":"Warfare!","color":"gold","bold":true}

# function warfare:_global/reset



#
# prepare constants
#

scoreboard objectives add utility dummy {"text":"utility","color":"red"}
scoreboard players set CONST_3 utility 3
scoreboard players set CONST_5 utility 5
scoreboard players set CONST_10 utility 10
scoreboard players set CONST_20 utility 20
scoreboard players set CONST_60 utility 60
scoreboard players set CONST_100 utility 100

#
# prepare gamemodes
# 1 - deathmatch
# 2 - capture the flag
# 3 - protect the president
# 4 - kill the bunny
# 5 - king of the hill
# 6 - two zones
# 7 - free for all
#

# scoreboard objectives add utility dummy {"text":"utility_scoreboard","color":"red"}
# scoreboard players set gamemode utility 0


gamerule maxCommandChainLength 65536
gamerule showDeathMessages false


#
# prepare options
#   only booleans supported
#   0=false, 1=true
#

scoreboard objectives add option dummy
scoreboard players set op_shuffle_teams option 1
scoreboard players set op_time_limit option 12000
scoreboard players set op_countdown_time option 100
scoreboard players set op_respawn_time option 100


#
# loadouts
#

# scoreboard objectives add loadout_view trigger
# scoreboard players set @a loadout_view 1
# scoreboard players enable @a loadout_view
scoreboard objectives add loadout_select dummy
scoreboard players set @a loadout_select 1

scoreboard objectives add loadout_equip used:carrot_on_a_stick {"text":"loadout_equip","color":"red"}
scoreboard players set @a loadout_equip 0


#
# health display
#

scoreboard objectives add health health {"text":"♥","color":"red"}
scoreboard objectives setdisplay belowName health
