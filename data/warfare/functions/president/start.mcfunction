# Called after the countdown clock initiated by play.mcfunction


#
# setup players
#

effect clear @a
gamemode adventure @a
# execute as @a[scores={loadout_select=1,president=0},team=RED] run function warfare:deathmatch/loadouts/get_red_1
# execute as @a[scores={loadout_select=2,president=0},team=RED] run function warfare:deathmatch/loadouts/get_red_2
# execute as @a[scores={loadout_select=1,president=0},team=BLUE] run function warfare:deathmatch/loadouts/get_blue_1
# execute as @a[scores={loadout_select=2,president=0},team=BLUE] run function warfare:deathmatch/loadouts/get_blue_2
# execute as @a[team=RED,scores={president=1}] run function warfare:president/loadouts/get_red_president
# execute as @a[team=BLUE,scores={president=1}] run function warfare:president/loadouts/get_blue_president
execute as @e[type=armor_stand,name="spawn_red"] at @e[type=armor_stand,name="spawn_red"] run spawnpoint @a[team=RED,scores={president=0}] ~ ~100 ~
execute as @e[type=armor_stand,name="spawn_blue"] at @e[type=armor_stand,name="spawn_blue"] run spawnpoint @a[team=BLUE,scores={president=0}] ~ ~100 ~
execute as @e[type=armor_stand,name="spawn_red"] at @e[type=armor_stand,name="spawn_red"] run spawnpoint @a[team=RED,scores={president=1}] ~ ~ ~
execute as @e[type=armor_stand,name="spawn_blue"] at @e[type=armor_stand,name="spawn_blue"] run spawnpoint @a[team=BLUE,scores={president=1}] ~ ~ ~
# execute as @e[type=armor_stand,name="spawn_red"] at @e[type=armor_stand,name="spawn_red"] run tp @a[team=RED] ~ ~ ~ ~ ~
# execute as @e[type=armor_stand,name="spawn_blue"] at @e[type=armor_stand,name="spawn_blue"] run tp @a[team=BLUE] ~ ~ ~ ~ ~
execute as @a[team=RED,scores={president=0}] run function warfare:president/respawn_red
execute as @a[team=BLUE,scores={president=0}] run function warfare:president/respawn_blue
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


#
# start timer
#

# scoreboard players set GAME_CLOCK clock 12000
scoreboard players operation GAME_CLOCK clock = op_time_limit option
function warfare:president/calculate_time_remaining
execute store result bossbar timer max run scoreboard players get GAME_CLOCK clock


#
# gamerules
#

gamerule keepInventory true
gamerule doImmediateRespawn true
