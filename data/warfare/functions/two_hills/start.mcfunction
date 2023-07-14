# Called after the countdown clock initiated by play.mcfunction

#
# setup teams
#

execute as @a[scores={loadout_select=1},team=RED] run function warfare:two_hills/loadouts/get_red_1
execute as @a[scores={loadout_select=2},team=RED] run function warfare:two_hills/loadouts/get_red_2
execute as @a[scores={loadout_select=1},team=BLUE] run function warfare:two_hills/loadouts/get_blue_1
execute as @a[scores={loadout_select=2},team=BLUE] run function warfare:two_hills/loadouts/get_blue_2
execute as @e[type=armor_stand,name="spawn_red"] at @e[type=armor_stand,name="spawn_red"] run spawnpoint @a[team=RED] ~ ~100 ~
execute as @e[type=armor_stand,name="spawn_blue"] at @e[type=armor_stand,name="spawn_blue"] run spawnpoint @a[team=BLUE] ~ ~100 ~
execute as @e[type=armor_stand,name="spawn_red"] at @e[type=armor_stand,name="spawn_red"] run tp @a[team=RED] ~ ~ ~ ~ ~
execute as @e[type=armor_stand,name="spawn_blue"] at @e[type=armor_stand,name="spawn_blue"] run tp @a[team=BLUE] ~ ~ ~ ~ ~


#
# setup scoreboard
#

tellraw @s {"text":"Setting up scoreboard!","color":"gold"}
scoreboard objectives add death_detector deathCount {"text":"death_detector","color":"red"}
scoreboard players set @a death_detector 0

scoreboard objectives add points dummy {"text":"Two Hills","color":"gold","bold":true}
scoreboard objectives setdisplay sidebar points
scoreboard players set RED points 0
scoreboard players set BLUE points 0

scoreboard players set HILL_A utility 0
scoreboard players set HILL_B utility 0

scoreboard objectives add hill_progress dummy {"text":"hill_progress","color":"red"}
scoreboard players set HILL_A hill_progress 0
scoreboard players set HILL_B hill_progress 0

scoreboard objectives add hill_red_players dummy {"text":"hill_red_players","color":"red"}
scoreboard players set HILL_A hill_red_players 0
scoreboard players set HILL_B hill_red_players 0
scoreboard objectives add hill_blue_players dummy {"text":"hill_blue_players","color":"red"}
scoreboard players set HILL_A hill_blue_players 0
scoreboard players set HILL_B hill_blue_players 0

bossbar add hill_a {"text":"Hill Alpha","color":"yellow"}
bossbar add hill_b {"text":"Hill Bravo","color":"yellow"}
bossbar set hill_a max 10
bossbar set hill_b max 10
bossbar set hill_a value 0
bossbar set hill_b value 0
bossbar set hill_a players @a
bossbar set hill_b players @a
bossbar set hill_a visible true
bossbar set hill_b visible true
bossbar set hill_a color white
bossbar set hill_b color white

#
# start timer
#

# scoreboard players set GAME_CLOCK clock 12000
scoreboard players operation GAME_CLOCK clock = op_time_limit option
function warfare:two_hills/second
execute store result bossbar timer max run scoreboard players get GAME_CLOCK clock

title @a times 10t 1s 10t


#
# gamerules
#

gamerule keepInventory true
gamerule doImmediateRespawn true
