# Called after the countdown clock initiated by play.mcfunction


#
# setup players
#

effect clear @a
gamemode adventure @a
execute as @e[type=armor_stand,name="spawn_red"] at @e[type=armor_stand,name="spawn_red"] run spawnpoint @a[team=RED,scores={president=0}] ~ ~100 ~
execute as @e[type=armor_stand,name="spawn_blue"] at @e[type=armor_stand,name="spawn_blue"] run spawnpoint @a[team=BLUE,scores={president=0}] ~ ~100 ~
execute as @e[type=armor_stand,name="spawn_red"] at @e[type=armor_stand,name="spawn_red"] run spawnpoint @a[team=RED,scores={president=1}] ~ ~ ~
execute as @e[type=armor_stand,name="spawn_blue"] at @e[type=armor_stand,name="spawn_blue"] run spawnpoint @a[team=BLUE,scores={president=1}] ~ ~ ~
execute as @a[team=RED,scores={president=0}] run function warfare:common/spawn_red
execute as @a[team=BLUE,scores={president=0}] run function warfare:common/spawn_blue
execute as @e[type=armor_stand,name="spawn_red"] at @e[type=armor_stand,name="spawn_red"] run tp @a[scores={president=1},team=RED] ~ ~ ~ ~ ~
execute as @e[type=armor_stand,name="spawn_blue"] at @e[type=armor_stand,name="spawn_blue"] run tp @a[scores={president=1},team=BLUE] ~ ~ ~ ~ ~
execute as @a[scores={president=1},team=RED] run function warfare:loadouts/get_red_president
execute as @a[scores={president=1},team=BLUE] run function warfare:loadouts/get_blue_president


#
# setup scoreboard
#

tellraw @s {"text":"Setting up scoreboard!","color":"gold"}
scoreboard objectives add death_detector deathCount {"text":"death_detector","color":"red"}
scoreboard players set @a death_detector 0

scoreboard objectives add killcount dummy {"text":"Protect the President","color":"gold","bold":true}
scoreboard objectives setdisplay sidebar killcount
scoreboard players set @a[scores={president=1}] killcount 0

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
