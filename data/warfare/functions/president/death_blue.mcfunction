# killed by other team
execute if entity @p[team=RED,scores={kill_detector=1..}] run tellraw @a [{"selector":"@s"},{"text":" was killed by "},{"selector":"@a[team=RED,scores={kill_detector=1}]"}]
# other death
execute unless entity @p[team=RED,scores={kill_detector=1..}] run tellraw @a [{"selector":"@s"},{"text":" died"}]

scoreboard players set @s death_detector 0
scoreboard players add @a[scores={president=1},team=RED] killcount 1

execute if score @s president matches 1 run function warfare:president/game_over_red
execute if score @s president matches 0 run clear @s
execute if score @s president matches 0 run effect give @s levitation infinite 255 true
execute if score @s president matches 0 run effect give @s invisibility infinite 1 true
execute if score @s president matches 0 run scoreboard players operation @s clock = op_respawn_time option
execute if score @s president matches 0 run function warfare:president/loadouts/choose
