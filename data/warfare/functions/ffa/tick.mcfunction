#
# check for kills
#

execute as @a[scores={death_detector=1..},nbt={Health:20.0f}] run function warfare:ffa/death


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

# respawn
execute as @a[scores={clock=1}] run scoreboard players set @s player_respawning 1
execute as @a[scores={player_respawning=1}] as @e[type=armor_stand,name="spawn_neutral",limit=1,sort=random] at @s unless entity @a[distance=..5] run function warfare:ffa/respawn

#
# (every second) update clock
#

scoreboard players operation second_detector clock = GAME_CLOCK clock
scoreboard players operation second_detector clock %= CONST_20 utility
execute if score second_detector clock matches 2 run function warfare:common/calculate_time_remaining

#
# loadout select
#

execute as @a[scores={loadout_equip=1..}] run function warfare:ffa/loadouts/equip_current
