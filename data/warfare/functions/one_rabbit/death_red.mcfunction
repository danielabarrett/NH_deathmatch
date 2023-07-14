scoreboard players set @s death_detector 0
execute as @a[team=RABBIT,scores={kill_detector=1..}] run scoreboard players remove RED killcount 1
execute as @a[team=RABBIT,scores={kill_detector=0}] run scoreboard players add BLUE killcount 1
clear @s
effect give @s levitation infinite 255 true
scoreboard players operation @s clock = op_respawn_time option
scoreboard players set @a kill_detector 0
function warfare:one_rabbit/loadouts/choose
