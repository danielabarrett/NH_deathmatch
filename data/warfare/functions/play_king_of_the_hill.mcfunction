tellraw @s {"text":"Checking setup","color":"gold"}

# scoreboard objectives add setup_counter dummy
scoreboard players set setup_counter utility 0
execute as @e[type=armor_stand,name="spawn_red"] run scoreboard players add setup_counter utility 1
execute as @e[type=armor_stand,name="spawn_blue"] run scoreboard players add setup_counter utility 1
execute as @e[type=armor_stand,name="hill"] run scoreboard players add setup_counter utility 1
execute if score setup_counter utility matches 3 run function warfare:one_hill/countdown
execute unless score setup_counter utility matches 3 run tellraw @s {"text":"Make sure you've created the hill marker and spawnpoints for both teams!","color":"red"}




