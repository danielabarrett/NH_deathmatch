
function warfare:two_hills/second/calculate_time_remaining

#
# hill mechanics
#

execute as @e[type=armor_stand,name="hill_a"] at @e[type=armor_stand,name="hill_a"] as @a[distance=..7] run title @s actionbar {"text":"You're on the hill!","color":"gold"}
execute as @e[type=armor_stand,name="hill_b"] at @e[type=armor_stand,name="hill_b"] as @a[distance=..7] run title @s actionbar {"text":"You're on the hill!","color":"gold"}

function warfare:two_hills/second/find_nearby_players

# neutral, only red nearby - take red
execute if score HILL_A utility matches 0 if score HILL_A hill_red_players matches 1 if score HILL_A hill_blue_players matches 0 if score HILL_A hill_progress matches 0 as @e[type=armor_stand,name="hill_a"] run function warfare:two_hills/hill/control_red
execute if score HILL_B utility matches 0 if score HILL_B hill_red_players matches 1 if score HILL_B hill_blue_players matches 0 if score HILL_B hill_progress matches 0 as @e[type=armor_stand,name="hill_b"] run function warfare:two_hills/hill/control_red
# neutral, only blue nearby - take blue
execute if score HILL_A utility matches 0 if score HILL_A hill_red_players matches 0 if score HILL_A hill_blue_players matches 1 if score HILL_A hill_progress matches 0 as @e[type=armor_stand,name="hill_a"] run function warfare:two_hills/hill/control_blue
execute if score HILL_B utility matches 0 if score HILL_B hill_red_players matches 0 if score HILL_B hill_blue_players matches 1 if score HILL_B hill_progress matches 0 as @e[type=armor_stand,name="hill_b"] run function warfare:two_hills/hill/control_blue

# blue owned, only red nearby - remove progress
execute if score HILL_A utility matches 2 if score HILL_A hill_red_players matches 1 if score HILL_A hill_blue_players matches 0 if score HILL_A hill_progress matches 1..10 run scoreboard players remove HILL_A hill_progress 1
execute if score HILL_B utility matches 2 if score HILL_B hill_red_players matches 1 if score HILL_B hill_blue_players matches 0 if score HILL_B hill_progress matches 1..10 run scoreboard players remove HILL_B hill_progress 1
# red owned, only blue nearby - remove progress
execute if score HILL_A utility matches 1 if score HILL_A hill_red_players matches 0 if score HILL_A hill_blue_players matches 1 if score HILL_A hill_progress matches 1..10 run scoreboard players remove HILL_A hill_progress 1
execute if score HILL_B utility matches 1 if score HILL_B hill_red_players matches 0 if score HILL_B hill_blue_players matches 1 if score HILL_B hill_progress matches 1..10 run scoreboard players remove HILL_B hill_progress 1
# red owned, only red nearby - add progress until 10
execute if score HILL_A utility matches 1 if score HILL_A hill_red_players matches 1 if score HILL_A hill_blue_players matches 0 if score HILL_A hill_progress matches 1..9 run scoreboard players add HILL_A hill_progress 1
execute if score HILL_B utility matches 1 if score HILL_B hill_red_players matches 1 if score HILL_B hill_blue_players matches 0 if score HILL_B hill_progress matches 1..9 run scoreboard players add HILL_B hill_progress 1
# blue owned, only blue nearby - add progress until 10
execute if score HILL_A utility matches 2 if score HILL_A hill_red_players matches 0 if score HILL_A hill_blue_players matches 1 if score HILL_A hill_progress matches 1..9 run scoreboard players add HILL_A hill_progress 1
execute if score HILL_B utility matches 2 if score HILL_B hill_red_players matches 0 if score HILL_B hill_blue_players matches 1 if score HILL_B hill_progress matches 1..9 run scoreboard players add HILL_B hill_progress 1

# revert to neutral
execute if score HILL_A hill_progress matches 0 as @e[type=armor_stand,name="hill_a"] run function warfare:two_hills/hill/control_neutral
execute if score HILL_B hill_progress matches 0 as @e[type=armor_stand,name="hill_b"] run function warfare:two_hills/hill/control_neutral


function warfare:two_hills/second/hill_bossbars


# points
# 1 - RED
# 2 - BLUE
execute if score HILL_A hill_progress matches 10 if score HILL_A utility matches 1 if score HILL_A hill_blue_players matches 0 run scoreboard players add RED points 1
execute if score HILL_B hill_progress matches 10 if score HILL_B utility matches 1 if score HILL_B hill_blue_players matches 0 run scoreboard players add RED points 1
execute if score HILL_A hill_progress matches 10 if score HILL_A utility matches 2 if score HILL_A hill_red_players matches 0 run scoreboard players add BLUE points 1
execute if score HILL_B hill_progress matches 10 if score HILL_B utility matches 2 if score HILL_B hill_red_players matches 0 run scoreboard players add BLUE points 1