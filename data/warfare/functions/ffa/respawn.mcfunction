tp @p[scores={player_respawning=1}] @s
execute as @p[scores={player_respawning=1}] at @s run effect clear @s
execute as @p[scores={player_respawning=1}] at @s if score @s loadout_select matches 1 run function warfare:loadouts/get_neutral_assault
execute as @p[scores={player_respawning=1}] at @s if score @s loadout_select matches 2 run function warfare:loadouts/get_neutral_operator
execute as @p[scores={player_respawning=1}] at @s run scoreboard players set @s player_respawning 0
