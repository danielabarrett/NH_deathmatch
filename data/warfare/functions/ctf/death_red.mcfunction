# killed by other team
execute if entity @p[team=BLUE,scores={kill_detector=1..}] run tellraw @a [{"selector":"@s"},{"text":" was killed by "},{"selector":"@a[team=BLUE,scores={kill_detector=1}]"}]
# other death
execute unless entity @p[team=BLUE,scores={kill_detector=1..}] run tellraw @a [{"selector":"@s"},{"text":" died"}]

execute if score @s flagholder matches 1 at @s run function warfare:ctf/flag/drop_blue
scoreboard players set @s death_detector 0
clear @s
effect give @s levitation infinite 255 true
effect give @s invisibility infinite 1 true
scoreboard players operation @s clock = op_respawn_time option
function warfare:ctf/loadouts/choose
