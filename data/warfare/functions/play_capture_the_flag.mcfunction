tellraw @s {"text":"Checking setup","color":"gold"}

# scoreboard objectives add setup_counter dummy
scoreboard players set setup_counter utility 0
execute as @e[type=armor_stand,name="spawn_red"] run scoreboard players add setup_counter utility 1
execute as @e[type=armor_stand,name="spawn_blue"] run scoreboard players add setup_counter utility 1
execute as @e[type=armor_stand,name="flagstand_red"] run scoreboard players add setup_counter utility 1
execute as @e[type=armor_stand,name="flagstand_blue"] run scoreboard players add setup_counter utility 1
execute if score setup_counter utility matches 4 run function warfare:ctf/countdown
execute unless score setup_counter utility matches 4 run tellraw @s {"text":"Make sure you've created spawnpoints and flagposts for both teams!","color":"red"}




