

# scoreboard objectives add setup_counter dummy
scoreboard players set setup_counter utility 0
scoreboard players set player_count utility 0
execute as @e[type=armor_stand,name="spawn_neutral"] run scoreboard players add setup_counter utility 1
execute as @a run scoreboard players add player_count utility 1
execute if score setup_counter utility matches 3 if score setup_count utility >= player_count utility run function warfare:ffa/countdown
execute unless score setup_counter utility matches 3 if score setup_count utility >= player_count utility run tellraw @s {"text":"Make sure you've created the hill marker and spawnpoints for both teams!","color":"red"}




