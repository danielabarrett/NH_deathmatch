#
# check for kills
#

execute as @a[team=RED,scores={death_detector=1..},nbt={Health:20.0f}] run function warfare:ffa/death_red
execute as @a[team=BLUE,scores={death_detector=1..},nbt={Health:20.0f}] run function warfare:ffa/death_blue
execute as @a[team=RABBIT,scores={death_detector=1..},nbt={Health:20.0f}] run function warfare:ffa/death_rabbit


#
# check clocks
#

execute if score COUNTDOWN_CLOCK clock matches 100 run title @a title {"text":"Game starts in ","color":"green","extra":[{"text":"5","color":"gold","bold":true}]}
execute if score COUNTDOWN_CLOCK clock matches 100 as @a at @a run playsound block.dispenser.fail block @s ~ ~ ~ 1 2
execute if score COUNTDOWN_CLOCK clock matches 80 run title @a title {"text":"Game starts in ","color":"green","extra":[{"text":"4","color":"gold","bold":true}]}
execute if score COUNTDOWN_CLOCK clock matches 80 as @a at @a run playsound block.dispenser.fail block @s ~ ~ ~ 1 2
execute if score COUNTDOWN_CLOCK clock matches 60 run title @a title {"text":"Game starts in ","color":"green","extra":[{"text":"3","color":"red","bold":true}]}
execute if score COUNTDOWN_CLOCK clock matches 60 as @a at @a run playsound block.dispenser.fail block @s ~ ~ ~ 1 2
execute if score COUNTDOWN_CLOCK clock matches 40 run title @a title {"text":"Game starts in ","color":"green","extra":[{"text":"2","color":"red","bold":true}]}
execute if score COUNTDOWN_CLOCK clock matches 40 as @a at @a run playsound block.dispenser.fail block @s ~ ~ ~ 1 2
execute if score COUNTDOWN_CLOCK clock matches 20 run title @a title {"text":"Game starts in ","color":"green","extra":[{"text":"1","color":"red","bold":true}]}
execute if score COUNTDOWN_CLOCK clock matches 20 as @a at @a run playsound block.dispenser.fail block @s ~ ~ ~ 1 2
execute if score COUNTDOWN_CLOCK clock matches 1 run function warfare:ffa/start
execute if score COUNTDOWN_CLOCK clock matches 1.. run scoreboard players remove COUNTDOWN_CLOCK clock 1

execute if score GAME_CLOCK clock matches 1.. run scoreboard players remove GAME_CLOCK clock 1
execute if score GAME_CLOCK clock matches 1.. store result bossbar timer value run scoreboard players get GAME_CLOCK clock
execute if score GAME_CLOCK clock matches 1 run function warfare:ffa/game_over

execute as @a[scores={clock=300}] run title @s title {"text":"Respawning in ","color":"green","extra":[{"text":"15","color":"gold"},{"text":" seconds","color":"gold"}]}
execute as @a[scores={clock=200}] run title @s title {"text":"Respawning in ","color":"green","extra":[{"text":"10","color":"gold"},{"text":" seconds","color":"gold"}]}
execute as @a[scores={clock=100}] run title @s title {"text":"Respawning in ","color":"green","extra":[{"text":"5","color":"gold"}]}
execute as @a[scores={clock=80}] run title @s title {"text":"Respawning in ","color":"green","extra":[{"text":"4","color":"gold"}]}
execute as @a[scores={clock=60}] run title @s title {"text":"Respawning in ","color":"green","extra":[{"text":"3","color":"red"}]}
execute as @a[scores={clock=40}] run title @s title {"text":"Respawning in ","color":"green","extra":[{"text":"2","color":"red"}]}
execute as @a[scores={clock=20}] run title @s title {"text":"Respawning in ","color":"green","extra":[{"text":"1","color":"red"}]}
execute as @a[scores={clock=1..}] run scoreboard players remove @s clock 1
execute as @a[scores={clock=1},team=RED] run function warfare:ffa/respawn_red
execute as @a[scores={clock=1},team=BLUE] run function warfare:ffa/respawn_blue
execute as @a[scores={clock=1},team=RABBIT] run function warfare:ffa/respawn_rabbit


#
# (every second) update clock
#

scoreboard players operation second_detector clock = GAME_CLOCK clock
scoreboard players operation second_detector clock %= CONST_20 utility
execute if score second_detector clock matches 2 run function warfare:ffa/calculate_time_remaining
scoreboard players operation second_detector clock = GAME_CLOCK clock
scoreboard players operation second_detector clock %= CONST_60 utility
execute if score second_detector clock matches 2 run function warfare:ffa/anti_spawn_camp


#
# loadout select
#

execute as @a unless score @s loadout_view = @s loadout_select run function warfare:ffa/loadouts/update
