

function warfare:common/calculate_time_remaining

#
# hill points
#

execute as @e[type=armor_stand,name="hill"] at @e[type=armor_stand,name="hill"] as @a[distance=..10,team=RED] run scoreboard players add RED points 1
execute as @e[type=armor_stand,name="hill"] at @e[type=armor_stand,name="hill"] as @a[distance=..10,team=RED] run title @s actionbar {"text":"You're on the hill!","color":"gold"}
execute as @e[type=armor_stand,name="hill"] at @e[type=armor_stand,name="hill"] as @a[distance=..10,team=BLUE] run scoreboard players add BLUE points 1
execute as @e[type=armor_stand,name="hill"] at @e[type=armor_stand,name="hill"] as @a[distance=..10,team=BLUE] run title @s actionbar {"text":"You're on the hill!","color":"gold"}
