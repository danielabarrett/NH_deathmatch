scoreboard players set @s death_detector 0
scoreboard players add BLUE killcount 1
clear @s
effect give @s levitation infinite 255 true
scoreboard players operation @s clock = op_respawn_time option
function warfare:deathmatch_remake/loadouts/choose
