

# scoreboard objectives add setup_counter dummy
scoreboard players set setup_counter utility 0
scoreboard players set respawn_counter_red utility 0
scoreboard players set respawn_counter_blue utility 0
execute as @e[type=armor_stand,name="spawn_red"] run scoreboard players add setup_counter utility 1
execute as @e[type=armor_stand,name="spawn_blue"] run scoreboard players add setup_counter utility 1
execute as @e[type=armor_stand,name="respawn_red"] run scoreboard players add respawn_counter_red utility 1
execute as @e[type=armor_stand,name="respawn_blue"] run scoreboard players add respawn_counter_blue utility 1
execute if score setup_counter utility matches 2 if score respawn_counter_red utility = respawn_counter_blue utility if score respawn_counter_red utility >= CONST_3 utility run function warfare:deathmatch/countdown
execute unless score setup_counter utility matches 2 run tellraw @s {"text":"Make sure you've created spawnpoints for both teams!","color":"red"}
execute unless score respawn_counter_red utility = respawn_counter_blue utility run tellraw @s {"text":"Make sure there are an equal number of red and blue respawn points!","color":"red"}
execute unless score respawn_counter_red utility >= CONST_3 utility run tellraw @s {"text":"Make sure you've created at least 3 respawn points per team!","color":"red"}




