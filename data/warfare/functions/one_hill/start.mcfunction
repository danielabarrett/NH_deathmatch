# Called after the countdown clock initiated by play.mcfunction

#
# setup teams
#

effect clear @a
gamemode adventure @a
# execute as @a[scores={loadout_select=1},team=RED] run function warfare:one_hill/loadouts/get_red_1
# execute as @a[scores={loadout_select=2},team=RED] run function warfare:one_hill/loadouts/get_red_2
# execute as @a[scores={loadout_select=1},team=BLUE] run function warfare:one_hill/loadouts/get_blue_1
# execute as @a[scores={loadout_select=2},team=BLUE] run function warfare:one_hill/loadouts/get_blue_2
execute as @e[type=armor_stand,name="spawn_red"] at @e[type=armor_stand,name="spawn_red"] run spawnpoint @a[team=RED] ~ ~100 ~
execute as @e[type=armor_stand,name="spawn_blue"] at @e[type=armor_stand,name="spawn_blue"] run spawnpoint @a[team=BLUE] ~ ~100 ~
# execute as @e[type=armor_stand,name="spawn_red"] at @e[type=armor_stand,name="spawn_red"] run tp @a[team=RED] ~ ~ ~ ~ ~
# execute as @e[type=armor_stand,name="spawn_blue"] at @e[type=armor_stand,name="spawn_blue"] run tp @a[team=BLUE] ~ ~ ~ ~ ~
execute as @a[team=RED] run function warfare:one_hill/respawn_red
execute as @a[team=BLUE] run function warfare:one_hill/respawn_blue


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


#
# start timer
#

# scoreboard players set GAME_CLOCK clock 12000
scoreboard players operation GAME_CLOCK clock = op_time_limit option
function warfare:one_hill/second
execute store result bossbar timer max run scoreboard players get GAME_CLOCK clock

title @a times 10t 1s 10t


#
# gamerules
#

gamerule keepInventory true
gamerule doImmediateRespawn true
