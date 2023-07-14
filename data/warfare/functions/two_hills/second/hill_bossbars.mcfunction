#
# titles
#

# neutral
execute if score HILL_A utility matches 0 if score HILL_A hill_progress matches 0 run bossbar set hill_a name {"text":"Hill Alpha - ","color":"yellow","extra":[{"text":"Neutral","color":"yellow","bold":true}]}
execute if score HILL_B utility matches 0 if score HILL_B hill_progress matches 0 run bossbar set hill_b name {"text":"Hill Bravo - ","color":"yellow","extra":[{"text":"Neutral","color":"yellow","bold":true}]}
# scoring (can be relaced by presence)
execute if score HILL_A utility matches 1 if score HILL_A hill_progress matches 10 run bossbar set hill_a name {"text":"Hill Alpha - ","color":"red","extra":[{"text":"Captured","bold":true}]}
execute if score HILL_B utility matches 1 if score HILL_B hill_progress matches 10 run bossbar set hill_b name {"text":"Hill Bravo - ","color":"red","extra":[{"text":"Captured","bold":true}]}
execute if score HILL_A utility matches 2 if score HILL_A hill_progress matches 10 run bossbar set hill_a name {"text":"Hill Alpha - ","color":"blue","extra":[{"text":"Captured","bold":true}]}
execute if score HILL_B utility matches 2 if score HILL_B hill_progress matches 10 run bossbar set hill_b name {"text":"Hill Bravo - ","color":"blue","extra":[{"text":"Captured","bold":true}]}
# contested - progress
execute if score HILL_A utility matches 1 if score HILL_A hill_progress matches 1..9 run bossbar set hill_a name {"text":"Hill Alpha - ","color":"red","extra":[{"text":"Contested","color":"yellow","bold":true}]}
execute if score HILL_B utility matches 1 if score HILL_B hill_progress matches 1..9 run bossbar set hill_b name {"text":"Hill Bravo - ","color":"red","extra":[{"text":"Contested","color":"yellow","bold":true}]}
execute if score HILL_A utility matches 2 if score HILL_A hill_progress matches 1..9 run bossbar set hill_a name {"text":"Hill Alpha - ","color":"blue","extra":[{"text":"Contested","color":"yellow","bold":true}]}
execute if score HILL_B utility matches 2 if score HILL_B hill_progress matches 1..9 run bossbar set hill_b name {"text":"Hill Bravo - ","color":"blue","extra":[{"text":"Contested","color":"yellow","bold":true}]}
# contested - presence
execute if score HILL_A utility matches 1 if score HILL_A hill_blue_players matches 1 run bossbar set hill_a name {"text":"Hill Alpha - ","color":"red","extra":[{"text":"Contested","color":"yellow","bold":true}]}
execute if score HILL_B utility matches 1 if score HILL_B hill_blue_players matches 1 run bossbar set hill_b name {"text":"Hill Bravo - ","color":"red","extra":[{"text":"Contested","color":"yellow","bold":true}]}
execute if score HILL_A utility matches 2 if score HILL_A hill_red_players matches 1 run bossbar set hill_a name {"text":"Hill Alpha - ","color":"blue","extra":[{"text":"Contested","color":"yellow","bold":true}]}
execute if score HILL_B utility matches 2 if score HILL_B hill_red_players matches 1 run bossbar set hill_b name {"text":"Hill Bravo - ","color":"blue","extra":[{"text":"Contested","color":"yellow","bold":true}]}


#
# progress
#

execute store result bossbar hill_a value run scoreboard players get HILL_A hill_progress
execute store result bossbar hill_b value run scoreboard players get HILL_B hill_progress