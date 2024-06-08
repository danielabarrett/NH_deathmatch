#
# check for kills
#

execute as @a[team=RED,scores={death_detector=1..},nbt={Health:20.0f}] run function warfare:team_hills/death_red
execute as @a[team=BLUE,scores={death_detector=1..},nbt={Health:20.0f}] run function warfare:team_hills/death_blue


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
execute if score COUNTDOWN_CLOCK clock matches 1 run function warfare:team_hills/start
execute if score COUNTDOWN_CLOCK clock matches 1.. run scoreboard players remove COUNTDOWN_CLOCK clock 1

execute if score GAME_CLOCK clock matches 1.. run scoreboard players remove GAME_CLOCK clock 1
execute if score GAME_CLOCK clock matches 1.. store result bossbar timer value run scoreboard players get GAME_CLOCK clock
execute if score GAME_CLOCK clock matches 1 run function warfare:team_hills/game_over

execute as @a[scores={clock=300}] run title @s title {"text":"Respawning in ","color":"green","extra":[{"text":"15","color":"gold"},{"text":" seconds","color":"gold"}]}
execute as @a[scores={clock=200}] run title @s title {"text":"Respawning in ","color":"green","extra":[{"text":"10","color":"gold"},{"text":" seconds","color":"gold"}]}
execute as @a[scores={clock=100}] run title @s title {"text":"Respawning in ","color":"green","extra":[{"text":"5","color":"gold"}]}
execute as @a[scores={clock=80}] run title @s title {"text":"Respawning in ","color":"green","extra":[{"text":"4","color":"gold"}]}
execute as @a[scores={clock=60}] run title @s title {"text":"Respawning in ","color":"green","extra":[{"text":"3","color":"red"}]}
execute as @a[scores={clock=40}] run title @s title {"text":"Respawning in ","color":"green","extra":[{"text":"2","color":"red"}]}
execute as @a[scores={clock=20}] run title @s title {"text":"Respawning in ","color":"green","extra":[{"text":"1","color":"red"}]}
execute as @a[scores={clock=1..}] run scoreboard players remove @s clock 1
# execute as @a[scores={clock=1},team=RED] run function warfare:team_hills/respawn_red
# execute as @a[scores={clock=1},team=BLUE] run function warfare:team_hills/respawn_blue


# respawn
execute as @a[scores={clock=1}] run scoreboard players set @s player_respawning 1
execute as @a[team=RED,scores={player_respawning=1}] as @e[type=armor_stand,name="respawn_red",limit=1,sort=random] at @s unless entity @a[team=!RED,distance=..5] run function warfare:team_hills/respawn_red
execute as @a[team=BLUE,scores={player_respawning=1}] as @e[type=armor_stand,name="respawn_blue",limit=1,sort=random] at @s unless entity @a[team=!BLUE,distance=..5] run function warfare:team_hills/respawn_blue


#
# (every second) update clock
#

scoreboard players operation second_detector clock = GAME_CLOCK clock
scoreboard players operation second_detector clock %= CONST_20 utility
execute if score second_detector clock matches 2 run function warfare:team_hills/second
# scoreboard players operation second_detector clock = GAME_CLOCK clock
# scoreboard players operation second_detector clock %= CONST_60 utility
# execute if score second_detector clock matches 2 run function warfare:common/anti_spawn_camp
# tick hill particles (2x per second)
scoreboard players operation second_detector clock = GAME_CLOCK clock
scoreboard players operation second_detector clock %= CONST_10 utility
execute if score second_detector clock matches 2 run function warfare:team_hills/hill/border_particles

execute as @e[type=armor_stand,name="active_hill"] at @e[type=armor_stand,name="active_hill"] as @e[distance=..10,team=RED] run particle dust_color_transition 1 1 1 1 1 0 0 ~ ~1 ~ 3 2 3 1 8 normal
execute as @e[type=armor_stand,name="active_hill"] at @e[type=armor_stand,name="active_hill"] as @e[distance=..10,team=BLUE] run particle dust_color_transition 1 1 1 1 0 0 1 ~ ~1 ~ 3 2 3 1 8 normal

#
# loadout select
#

execute as @a[scores={loadout_equip=1..}] run function warfare:team_hills/loadouts/equip_current

