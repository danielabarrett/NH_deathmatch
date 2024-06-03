scoreboard players set @s death_detector 0
scoreboard players add @a[scores={president=1},team=RED] killcount 1

execute if score @s president matches 1 run function warfare:president/game_over_red
execute if score @s president matches 0 run clear @s
execute if score @s president matches 0 run effect give @s levitation infinite 255 true
execute if score @s president matches 0 run effect give @s invisibility infinite 1 true
execute if score @s president matches 0 run scoreboard players operation @s clock = op_respawn_time option
execute if score @s president matches 0 run function warfare:president/loadouts/choose
