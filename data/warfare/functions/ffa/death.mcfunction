scoreboard players set @s death_detector 0
execute as @a[scores={kill_detector=1..}] run scoreboard players add @s killcount 1
execute unless entity @p[scores={kill_detector=1..}] run scoreboard players remove @s killcount 1
clear @s
effect give @s levitation infinite 255 true
effect give @s invisibility infinite 1 true
scoreboard players operation @s clock = op_respawn_time option
scoreboard players set @a kill_detector 0
function warfare:ffa/loadouts/choose
