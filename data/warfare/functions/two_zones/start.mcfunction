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

scoreboard objectives add points dummy {"text":"Zone Capture","color":"gold","bold":true}
scoreboard objectives setdisplay sidebar points
scoreboard players set RED points 0
scoreboard players set BLUE points 0

scoreboard players set ZONE_A utility 0
scoreboard players set ZONE_B utility 0

scoreboard objectives add zone_progress dummy {"text":"zone_progress","color":"red"}
scoreboard players set ZONE_A zone_progress 0
scoreboard players set ZONE_B zone_progress 0

scoreboard objectives add zone_red_players dummy {"text":"zone_red_players","color":"red"}
scoreboard players set ZONE_A zone_red_players 0
scoreboard players set ZONE_B zone_red_players 0
scoreboard objectives add zone_blue_players dummy {"text":"zone_blue_players","color":"red"}
scoreboard players set ZONE_A zone_blue_players 0
scoreboard players set ZONE_B zone_blue_players 0

bossbar add zone_a {"text":"Zone Alpha","color":"yellow"}
bossbar add zone_b {"text":"Zone Bravo","color":"yellow"}
bossbar set zone_a max 10
bossbar set zone_b max 10
bossbar set zone_a value 0
bossbar set zone_b value 0
bossbar set zone_a players @a
bossbar set zone_b players @a
bossbar set zone_a visible true
bossbar set zone_b visible true
bossbar set zone_a color white
bossbar set zone_b color white

#
# start timer
#

scoreboard players operation GAME_CLOCK clock = op_time_limit option
function warfare:two_zones/second
execute store result bossbar timer max run scoreboard players get GAME_CLOCK clock

title @a times 10t 1s 10t


#
# gamerules
#

gamerule keepInventory true
gamerule doImmediateRespawn true
