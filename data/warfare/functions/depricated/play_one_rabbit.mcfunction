

# scoreboard objectives add setup_counter dummy
scoreboard players set setup_counter utility 0
execute as @e[type=armor_stand,name="spawn_red"] run scoreboard players add setup_counter utility 1
execute as @e[type=armor_stand,name="spawn_blue"] run scoreboard players add setup_counter utility 1
execute as @e[type=armor_stand,name="spawn_rabbit"] run scoreboard players add setup_counter utility 1
execute if score setup_counter utility matches 5.. run function warfare:one_rabbit/countdown
execute unless score setup_counter utility matches 5.. run tellraw @s {"text":"Make sure you've created spawnpoints for both teams!","color":"red"}




