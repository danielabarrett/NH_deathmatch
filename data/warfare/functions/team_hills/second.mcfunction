function warfare:common/calculate_time_remaining

#
# hill points
#

execute as @e[type=armor_stand,name="active_hill"] at @e[type=armor_stand,name="active_hill"] as @a[distance=..10] run title @s actionbar {"text":"You're on the hill!","color":"gold"}
execute as @e[type=armor_stand,name="active_hill"] at @e[type=armor_stand,name="active_hill"] as @a[distance=..10,team=RED] run scoreboard players add RED points 1
execute as @e[type=armor_stand,name="active_hill"] at @e[type=armor_stand,name="active_hill"] as @a[distance=..10,team=BLUE] run scoreboard players add BLUE points 1

scoreboard players operation minute_detector clock = GAME_CLOCK clock
scoreboard players operation minute_detector clock %= CONST_20 utility
scoreboard players operation minute_detector clock %= CONST_60 utility

execute if score GAME_CLOCK clock >= CONST_60 utility if score minute_detector clock matches 30 run tellraw @a {"text":"Hill moves in 30 seconds!","color":"gold"}
execute if score GAME_CLOCK clock >= CONST_60 utility if score minute_detector clock matches 10 run tellraw @a {"text":"Hill moves in 30 seconds!","color":"red"}
execute if score GAME_CLOCK clock >= CONST_60 utility if score minute_detector clock matches 0 run function warfare:team_hills/hill/new_hill_init