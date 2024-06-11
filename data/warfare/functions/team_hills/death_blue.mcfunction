# killed by other team
execute if entity @p[team=RED,scores={kill_detector=1..}] run tellraw @a [{"selector":"@s"},{"text":" was killed by "},{"selector":"@a[team=RED,scores={kill_detector=1}]"}]
# other death
execute unless entity @p[team=RED,scores={kill_detector=1..}] run tellraw @a [{"selector":"@s"},{"text":" died"}]

scoreboard players set @s death_detector 0
scoreboard players add RED killcount 1
clear @s
effect give @s levitation infinite 255 true
effect give @s invisibility infinite 1 true
scoreboard players operation @s clock = op_respawn_time option
function warfare:team_hills/loadouts/choose
