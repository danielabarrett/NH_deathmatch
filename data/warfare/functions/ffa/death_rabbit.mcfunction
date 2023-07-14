scoreboard players set @s death_detector 0
execute as @a[team=RED,scores={kill_detector=1..}] run scoreboard players add RED killcount 5
execute as @a[team=BLUE,scores={kill_detector=1..}] run scoreboard players add BLUE killcount 5
clear @s
effect give @s levitation infinite 255 true
scoreboard players operation @s clock = op_respawn_time option
scoreboard players set @a kill_detector 0
