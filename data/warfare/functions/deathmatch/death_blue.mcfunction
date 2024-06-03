tellraw @a {"selector":"@a[team=RED,scores={kill_detector=1}]","extra":[{"text":" killed "},{"selector":"@s"}]}
scoreboard players set @s death_detector 0
scoreboard players set @a kill_detector 0
scoreboard players add RED killcount 1
clear @s
effect give @s levitation infinite 255 true
effect give @s invisibility infinite 1 true
scoreboard players operation @s clock = op_respawn_time option
function warfare:deathmatch/loadouts/choose
