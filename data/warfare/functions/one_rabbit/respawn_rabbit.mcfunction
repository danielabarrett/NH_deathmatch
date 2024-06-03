tp @p[scores={player_respawning=1}] @s
execute as @p[scores={player_respawning=1}] at @s run effect clear @s
execute as @p[scores={player_respawning=1}] at @s run function warfare:loadouts/get_rabbit
execute as @p[scores={player_respawning=1}] at @s run scoreboard players set @s player_respawning 0
