
function warfare:two_zones/second/calculate_time_remaining

#
# zone mechanics
#

execute as @e[type=armor_stand,name="zone_a"] at @e[type=armor_stand,name="zone_a"] as @a[distance=..7] run title @s actionbar {"text":"You're in the zone!","color":"gold"}
execute as @e[type=armor_stand,name="zone_b"] at @e[type=armor_stand,name="zone_b"] as @a[distance=..7] run title @s actionbar {"text":"You're in the zone!","color":"gold"}

function warfare:two_zones/second/find_nearby_players

# neutral, only red nearby - take red
execute if score ZONE_A utility matches 0 if score ZONE_A zone_red_players matches 1 if score ZONE_A zone_blue_players matches 0 if score ZONE_A zone_progress matches 0 as @e[type=armor_stand,name="zone_a"] run function warfare:two_zones/zone/control_red
execute if score ZONE_B utility matches 0 if score ZONE_B zone_red_players matches 1 if score ZONE_B zone_blue_players matches 0 if score ZONE_B zone_progress matches 0 as @e[type=armor_stand,name="zone_b"] run function warfare:two_zones/zone/control_red
# neutral, only blue nearby - take blue
execute if score ZONE_A utility matches 0 if score ZONE_A zone_red_players matches 0 if score ZONE_A zone_blue_players matches 1 if score ZONE_A zone_progress matches 0 as @e[type=armor_stand,name="zone_a"] run function warfare:two_zones/zone/control_blue
execute if score ZONE_B utility matches 0 if score ZONE_B zone_red_players matches 0 if score ZONE_B zone_blue_players matches 1 if score ZONE_B zone_progress matches 0 as @e[type=armor_stand,name="zone_b"] run function warfare:two_zones/zone/control_blue

# blue owned, only red nearby - remove progress
execute if score ZONE_A utility matches 2 if score ZONE_A zone_red_players matches 1 if score ZONE_A zone_blue_players matches 0 if score ZONE_A zone_progress matches 1..10 run scoreboard players remove zone_a zone_progress 1
execute if score ZONE_B utility matches 2 if score ZONE_B zone_red_players matches 1 if score ZONE_B zone_blue_players matches 0 if score ZONE_B zone_progress matches 1..10 run scoreboard players remove ZONE_B zone_progress 1
# red owned, only blue nearby - remove progress
execute if score ZONE_A utility matches 1 if score ZONE_A zone_red_players matches 0 if score ZONE_A zone_blue_players matches 1 if score ZONE_A zone_progress matches 1..10 run scoreboard players remove zone_a zone_progress 1
execute if score ZONE_B utility matches 1 if score ZONE_B zone_red_players matches 0 if score ZONE_B zone_blue_players matches 1 if score ZONE_B zone_progress matches 1..10 run scoreboard players remove ZONE_B zone_progress 1
# red owned, only red nearby - add progress until 10
execute if score ZONE_A utility matches 1 if score ZONE_A zone_red_players matches 1 if score ZONE_A zone_blue_players matches 0 if score ZONE_A zone_progress matches 1..9 run scoreboard players add zone_a zone_progress 1
execute if score ZONE_B utility matches 1 if score ZONE_B zone_red_players matches 1 if score ZONE_B zone_blue_players matches 0 if score ZONE_B zone_progress matches 1..9 run scoreboard players add ZONE_B zone_progress 1
# blue owned, only blue nearby - add progress until 10
execute if score ZONE_A utility matches 2 if score ZONE_A zone_red_players matches 0 if score ZONE_A zone_blue_players matches 1 if score ZONE_A zone_progress matches 1..9 run scoreboard players add zone_a zone_progress 1
execute if score ZONE_B utility matches 2 if score ZONE_B zone_red_players matches 0 if score ZONE_B zone_blue_players matches 1 if score ZONE_B zone_progress matches 1..9 run scoreboard players add ZONE_B zone_progress 1

# revert to neutral
execute if score zone_a zone_progress matches 0 as @e[type=armor_stand,name="zone_a"] run function warfare:two_zones/zone/control_neutral
execute if score ZONE_B zone_progress matches 0 as @e[type=armor_stand,name="zone_b"] run function warfare:two_zones/zone/control_neutral


function warfare:two_zones/second/zone_bossbars


# points
# 1 - RED
# 2 - BLUE
execute if score ZONE_A zone_progress matches 10 if score ZONE_A utility matches 1 if score ZONE_A zone_blue_players matches 0 run scoreboard players add RED points 1
execute if score ZONE_B zone_progress matches 10 if score ZONE_B utility matches 1 if score ZONE_B zone_blue_players matches 0 run scoreboard players add RED points 1
execute if score ZONE_A zone_progress matches 10 if score ZONE_A utility matches 2 if score ZONE_A zone_red_players matches 0 run scoreboard players add BLUE points 1
execute if score ZONE_B zone_progress matches 10 if score ZONE_B utility matches 2 if score ZONE_B zone_red_players matches 0 run scoreboard players add BLUE points 1