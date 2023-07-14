#
# check for kills
#

execute as @a[team=RED,scores={death_detector=1..},nbt={Health:20.0f}] run function warfare:ctf/death_red
execute as @a[team=BLUE,scores={death_detector=1..},nbt={Health:20.0f}] run function warfare:ctf/death_blue


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
execute if score COUNTDOWN_CLOCK clock matches 1 run function warfare:ctf/start
execute if score COUNTDOWN_CLOCK clock matches 1.. run scoreboard players remove COUNTDOWN_CLOCK clock 1

execute if score GAME_CLOCK clock matches 1.. run scoreboard players remove GAME_CLOCK clock 1
execute if score GAME_CLOCK clock matches 1.. store result bossbar timer value run scoreboard players get GAME_CLOCK clock
execute if score GAME_CLOCK clock matches 1 run function warfare:ctf/game_over

execute if score reset_red clock matches 1 run function warfare:ctf/flag/reset_red
execute if score reset_red clock matches 1.. run scoreboard players remove reset_red clock 1
execute if score reset_blue clock matches 1 run function warfare:ctf/flag/reset_blue
execute if score reset_blue clock matches 1.. run scoreboard players remove reset_blue clock 1

execute as @a[scores={clock=300}] run title @s title {"text":"Respawning in ","color":"green","extra":[{"text":"15","color":"gold"},{"text":" seconds","color":"gold"}]}
execute as @a[scores={clock=200}] run title @s title {"text":"Respawning in ","color":"green","extra":[{"text":"10","color":"gold"},{"text":" seconds","color":"gold"}]}
execute as @a[scores={clock=100}] run title @s title {"text":"Respawning in ","color":"green","extra":[{"text":"5","color":"gold"}]}
execute as @a[scores={clock=80}] run title @s title {"text":"Respawning in ","color":"green","extra":[{"text":"4","color":"gold"}]}
execute as @a[scores={clock=60}] run title @s title {"text":"Respawning in ","color":"green","extra":[{"text":"3","color":"red"}]}
execute as @a[scores={clock=40}] run title @s title {"text":"Respawning in ","color":"green","extra":[{"text":"2","color":"red"}]}
execute as @a[scores={clock=20}] run title @s title {"text":"Respawning in ","color":"green","extra":[{"text":"1","color":"red"}]}
execute as @a[scores={clock=1..}] run scoreboard players remove @s clock 1
execute as @a[scores={clock=1},team=RED] run function warfare:ctf/respawn_red
execute as @a[scores={clock=1},team=BLUE] run function warfare:ctf/respawn_blue



#
# flag tick
#
execute if score @s flagholder matches 0
execute as @e[type=armor_stand,name="flag_red"] at @e[type=armor_stand,name="flag_red"] run execute as @a[team=BLUE,distance=..2] if score @s flagholder matches 0 run function warfare:ctf/flag/pickup_red
execute as @e[type=armor_stand,name="flag_blue"] at @e[type=armor_stand,name="flag_blue"] run execute as @a[team=RED,distance=..2] if score @s flagholder matches 0 run function warfare:ctf/flag/pickup_blue
execute as @e[type=armor_stand,name="flagstand_red"] at @e[type=armor_stand,name="flagstand_red"] run execute as @a[team=RED,scores={flagholder=1},distance=..1] run function warfare:ctf/flag/score_red
execute as @e[type=armor_stand,name="flagstand_blue"] at @e[type=armor_stand,name="flagstand_blue"] run execute as @a[team=BLUE,scores={flagholder=1},distance=..1] run function warfare:ctf/flag/score_blue

execute as @a[team=RED,scores={flagholder=1}] at @a[team=RED,scores={flagholder=1}] run particle dust 0 0 1 1 ~ ~2.6 ~ 0.2 0.2 0.2 0 5 force
execute as @a[team=BLUE,scores={flagholder=1}] at @a[team=BLUE,scores={flagholder=1}] run particle dust 1 0 0 1 ~ ~2.6 ~ 0.2 0.2 0.2 0 5 force

execute as @e[type=armor_stand,name="flagstand_red"] at @e[type=armor_stand,name="flagstand_red"] run particle dust 1 0 0 1 ~ ~ ~ 0.3 0.05 0.3 0 5 force
execute as @e[type=armor_stand,name="flagstand_blue"] at @e[type=armor_stand,name="flagstand_blue"] run particle dust 0 0 1 1 ~ ~ ~ 0.3 0.05 0.3 0 5 force

execute as @e[type=armor_stand,name="flag_blue"] run tp @s @a[team=RED,scores={flagholder=1},limit=1]
execute as @e[type=armor_stand,name="flag_red"] run tp @s @a[team=BLUE,scores={flagholder=1},limit=1]


#
# (every second) update clock
#

scoreboard players operation second_detector clock = GAME_CLOCK clock
scoreboard players operation second_detector clock %= CONST_20 utility
execute if score second_detector clock matches 2 run function warfare:ctf/second
scoreboard players operation second_detector clock = GAME_CLOCK clock
scoreboard players operation second_detector clock %= CONST_60 utility
execute if score second_detector clock matches 2 run function warfare:ctf/anti_spawn_camp


#
# loadout select
#

execute as @a[scores={loadout_equip=1..}] run function warfare:ctf/loadouts/equip_current
