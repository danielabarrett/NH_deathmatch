execute if score @s flagholder matches 1 at @s run function warfare:ctf/flag/drop_blue
scoreboard players set @s death_detector 0
clear @s
effect give @s levitation infinite 255 true
scoreboard players operation @s clock = op_respawn_time option
function warfare:ctf/loadouts/choose
