
execute as @e[type=armor_stand,name="hill_a"] at @e[type=armor_stand,name="hill_a"] run scoreboard players set HILL_A hill_red_players 0
execute as @e[type=armor_stand,name="hill_b"] at @e[type=armor_stand,name="hill_b"] run scoreboard players set HILL_B hill_red_players 0
execute as @e[type=armor_stand,name="hill_a"] at @e[type=armor_stand,name="hill_a"] run scoreboard players set HILL_A hill_blue_players 0
execute as @e[type=armor_stand,name="hill_b"] at @e[type=armor_stand,name="hill_b"] run scoreboard players set HILL_B hill_blue_players 0
execute as @e[type=armor_stand,name="hill_a"] at @e[type=armor_stand,name="hill_a"] as @p[distance=..7,team=RED] run scoreboard players set HILL_A hill_red_players 1
execute as @e[type=armor_stand,name="hill_a"] at @e[type=armor_stand,name="hill_a"] as @p[distance=..7,team=BLUE] run scoreboard players set HILL_A hill_blue_players 1
execute as @e[type=armor_stand,name="hill_b"] at @e[type=armor_stand,name="hill_b"] as @p[distance=..7,team=RED] run scoreboard players set HILL_B hill_red_players 1
execute as @e[type=armor_stand,name="hill_b"] at @e[type=armor_stand,name="hill_b"] as @p[distance=..7,team=BLUE] run scoreboard players set HILL_B hill_blue_players 1
