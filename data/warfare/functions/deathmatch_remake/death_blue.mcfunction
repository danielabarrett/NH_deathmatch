scoreboard players set @s death_detector 0
scoreboard players add RED killcount 1
clear @s
effect give @s levitation infinite 255 true
effect give @s invisibility infinite 1 true
scoreboard players operation @s clock = op_respawn_time option
function warfare:deathmatch_remake/loadouts/choose
