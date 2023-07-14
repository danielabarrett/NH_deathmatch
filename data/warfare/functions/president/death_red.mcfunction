scoreboard players set @s death_detector 0
scoreboard players add @a[scores={president=1},team=BLUE] killcount 1

execute if score @s president matches 1 run function warfare:president/game_over_blue
execute if score @s president matches 0 run clear @s
execute if score @s president matches 0 run effect give @s levitation infinite 255 true
execute if score @s president matches 0 run scoreboard players operation @s clock = op_respawn_time option
