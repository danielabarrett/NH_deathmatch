tp @p[scores={player_respawning=1}] @s
execute as @p[scores={player_respawning=1}] at @s run effect clear @s
execute as @p[scores={player_respawning=1}] at @s if score @s loadout_select matches 1 run function warfare:loadouts/get_red_assault
execute as @p[scores={player_respawning=1}] at @s if score @s loadout_select matches 2 run function warfare:loadouts/get_red_operator
execute as @p[scores={player_respawning=1}] at @s if score @s loadout_select matches 3 run function warfare:loadouts/get_red_sniper
execute as @p[scores={player_respawning=1}] at @s run scoreboard players set @s player_respawning 0
