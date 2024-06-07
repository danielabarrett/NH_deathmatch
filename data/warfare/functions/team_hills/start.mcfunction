# Called after the countdown clock initiated by play.mcfunction

#
# setup teams
#

effect clear @a
gamemode adventure @a
execute as @e[type=armor_stand,name="spawn_red"] at @e[type=armor_stand,name="spawn_red"] run spawnpoint @a[team=RED] ~ ~100 ~
execute as @e[type=armor_stand,name="spawn_blue"] at @e[type=armor_stand,name="spawn_blue"] run spawnpoint @a[team=BLUE] ~ ~100 ~
execute as @a[team=RED] run function warfare:common/spawn_red
execute as @a[team=BLUE] run function warfare:common/spawn_blue


#
# setup scoreboard
#

tellraw @s {"text":"Setting up scoreboard!","color":"gold"}
scoreboard objectives add death_detector deathCount {"text":"death_detector","color":"red"}
scoreboard players set @a death_detector 0

scoreboard objectives add points dummy {"text":"King of the Hill","color":"gold","bold":true}
scoreboard objectives setdisplay sidebar points
scoreboard players set RED points 0
scoreboard players set BLUE points 0

scoreboard objectives add player_respawning dummy {"text":"player_respawning","color":"red"}
scoreboard players set @a player_respawning 1


#
# start first hill
#

execute as @e[type=armor_stand,name="hill",limit=1,sort=arbitrary] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,CustomName:'"active_hill"'}
function warfare:team_hills/hill/new_hill_init


#
# start timer
#

scoreboard players operation GAME_CLOCK clock = op_time_limit option
function warfare:team_hills/second
execute store result bossbar timer max run scoreboard players get GAME_CLOCK clock

title @a times 10t 1s 10t


#
# gamerules
#

gamerule keepInventory true
gamerule doImmediateRespawn true
