
#
# calculate time remaining
#

scoreboard players operation GAME_CLOCK_MINUTES clock = GAME_CLOCK clock
scoreboard players operation GAME_CLOCK_MINUTES clock /= CONST_20 utility
scoreboard players operation GAME_CLOCK_MINUTES clock /= CONST_60 utility

scoreboard players operation GAME_CLOCK_SECONDS clock = GAME_CLOCK clock
scoreboard players operation GAME_CLOCK_SECONDS clock /= CONST_20 utility
scoreboard players operation GAME_CLOCK_SECONDS clock %= CONST_60 utility

execute if score GAME_CLOCK_SECONDS clock matches 0..9 run bossbar set timer name {"text":"Time Remaining: ","color":"white","extra":[{"score":{"name":"GAME_CLOCK_MINUTES","objective":"clock"},"color":"yellow"},{"text":":0","color":"yellow"},{"score":{"name":"GAME_CLOCK_SECONDS","objective":"clock"},"color":"yellow"}]}
execute unless score GAME_CLOCK_SECONDS clock matches 0..9 run bossbar set timer name {"text":"Time Remaining: ","color":"white","extra":[{"score":{"name":"GAME_CLOCK_MINUTES","objective":"clock"},"color":"yellow"},{"text":":","color":"yellow"},{"score":{"name":"GAME_CLOCK_SECONDS","objective":"clock"},"color":"yellow"}]}