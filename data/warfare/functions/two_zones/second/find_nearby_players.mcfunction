
execute as @e[type=armor_stand,name="zone_a"] at @e[type=armor_stand,name="zone_a"] run scoreboard players set ZONE_A zone_red_players 0
execute as @e[type=armor_stand,name="zone_b"] at @e[type=armor_stand,name="zone_b"] run scoreboard players set ZONE_B zone_red_players 0
execute as @e[type=armor_stand,name="zone_a"] at @e[type=armor_stand,name="zone_a"] run scoreboard players set ZONE_A zone_blue_players 0
execute as @e[type=armor_stand,name="zone_b"] at @e[type=armor_stand,name="zone_b"] run scoreboard players set ZONE_B zone_blue_players 0
execute as @e[type=armor_stand,name="zone_a"] at @e[type=armor_stand,name="zone_a"] as @p[distance=..7,team=RED] run scoreboard players set ZONE_A zone_red_players 1
execute as @e[type=armor_stand,name="zone_a"] at @e[type=armor_stand,name="zone_a"] as @p[distance=..7,team=BLUE] run scoreboard players set ZONE_A zone_blue_players 1
execute as @e[type=armor_stand,name="zone_b"] at @e[type=armor_stand,name="zone_b"] as @p[distance=..7,team=RED] run scoreboard players set ZONE_B zone_red_players 1
execute as @e[type=armor_stand,name="zone_b"] at @e[type=armor_stand,name="zone_b"] as @p[distance=..7,team=BLUE] run scoreboard players set ZONE_B zone_blue_players 1
