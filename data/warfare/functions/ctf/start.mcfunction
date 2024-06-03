# Called after the countdown clock initiated by play.mcfunction

#
# setup teams
#

effect clear @a
gamemode adventure @a
# execute as @a[scores={loadout_select=1},team=RED] run function warfare:ctf/loadouts/get_red_1
# execute as @a[scores={loadout_select=2},team=RED] run function warfare:ctf/loadouts/get_red_2
# execute as @a[scores={loadout_select=1},team=BLUE] run function warfare:ctf/loadouts/get_blue_1
# execute as @a[scores={loadout_select=2},team=BLUE] run function warfare:ctf/loadouts/get_blue_2
execute as @e[type=armor_stand,name="spawn_red"] at @e[type=armor_stand,name="spawn_red"] run spawnpoint @a[team=RED] ~ ~100 ~
execute as @e[type=armor_stand,name="spawn_blue"] at @e[type=armor_stand,name="spawn_blue"] run spawnpoint @a[team=BLUE] ~ ~100 ~
# execute as @e[type=armor_stand,name="spawn_red"] at @e[type=armor_stand,name="spawn_red"] run tp @a[team=RED] ~ ~ ~ ~ ~
# execute as @e[type=armor_stand,name="spawn_blue"] at @e[type=armor_stand,name="spawn_blue"] run tp @a[team=BLUE] ~ ~ ~ ~ ~
execute as @a[team=RED] run function warfare:ctf/respawn_red
execute as @a[team=BLUE] run function warfare:ctf/respawn_blue


#
# spawn flags
#

execute as @e[type=armor_stand,name="flagstand_red"] at @e[type=armor_stand,name="flagstand_red"] run summon armor_stand ~ ~-1.85 ~ {CustomName:'"flag_red"',Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:red_banner",Count:1b}]}
execute as @e[type=armor_stand,name="flagstand_blue"] at @e[type=armor_stand,name="flagstand_blue"] run summon armor_stand ~ ~-1.85 ~ {CustomName:'"flag_blue"',Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:blue_banner",Count:1b}]}


#
# setup scoreboard
#

tellraw @s {"text":"Setting up scoreboard!","color":"gold"}
scoreboard objectives add death_detector deathCount {"text":"death_detector","color":"red"}
scoreboard players set @a death_detector 0

scoreboard objectives add flagcount dummy {"text":"Capture the Flag","color":"gold","bold":true}
scoreboard objectives setdisplay sidebar flagcount
scoreboard players enable RED flagcount
scoreboard players enable BLUE flagcount
scoreboard players set RED flagcount 0
scoreboard players set BLUE flagcount 0

scoreboard objectives add flagholder dummy {"text":"flagholder","color":"red"}
scoreboard players set @a flagholder 0

scoreboard players set reset_red clock 0
scoreboard players set reset_blue clock 0


#
# start timer
#

# scoreboard players set GAME_CLOCK clock 12000
scoreboard players operation GAME_CLOCK clock = op_time_limit option
function warfare:ctf/second
execute store result bossbar timer max run scoreboard players get GAME_CLOCK clock


#
# gamerules
#

gamerule keepInventory true
gamerule doImmediateRespawn true
