# Called after the countdown clock initiated by play.mcfunction

#
# setup teams
#

effect clear @a
gamemode adventure @a
execute as @e[type=armor_stand,name="spawn_red"] at @e[type=armor_stand,name="spawn_red"] run spawnpoint @a[team=RED] ~ ~100 ~
execute as @e[type=armor_stand,name="spawn_blue"] at @e[type=armor_stand,name="spawn_blue"] run spawnpoint @a[team=BLUE] ~ ~100 ~
execute as @e[team=RED] run function warfare:common/spawn_red
execute as @e[team=BLUE] run function warfare:common/spawn_blue


#
# setup scoreboard
#

tellraw @s {"text":"Setting up scoreboard!","color":"gold"}
scoreboard objectives add death_detector deathCount {"text":"death_detector","color":"red"}
scoreboard players set @a death_detector 0

scoreboard objectives add kill_detector custom:player_kills {"text":"kill detector","color":"red"}
scoreboard players set @a kill_detector 0

scoreboard objectives add killcount dummy {"text":"Team Deathmatch","color":"gold","bold":true}
scoreboard objectives setdisplay sidebar killcount
scoreboard players enable RED killcount
scoreboard players enable BLUE killcount
scoreboard players set RED killcount 0
scoreboard players set BLUE killcount 0

scoreboard objectives add player_respawning dummy {"text":"player_respawning","color":"red"}
scoreboard players set @a player_respawning 1


#
# start timer
#

scoreboard players operation GAME_CLOCK clock = op_time_limit option
function warfare:common/calculate_time_remaining
execute store result bossbar timer max run scoreboard players get GAME_CLOCK clock


#
# gamerules
#

gamerule keepInventory true
gamerule doImmediateRespawn true
