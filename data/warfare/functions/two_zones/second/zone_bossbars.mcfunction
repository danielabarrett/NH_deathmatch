#
# titles
#

# neutral
execute if score ZONE_A utility matches 0 if score ZONE_A zone_progress matches 0 run bossbar set zone_a name {"text":"Zone Alpha - ","color":"yellow","extra":[{"text":"Neutral","color":"yellow","bold":true}]}
execute if score ZONE_B utility matches 0 if score ZONE_B zone_progress matches 0 run bossbar set zone_b name {"text":"Zone Bravo - ","color":"yellow","extra":[{"text":"Neutral","color":"yellow","bold":true}]}
# scoring (can be relaced by presence)
execute if score ZONE_A utility matches 1 if score ZONE_A zone_progress matches 10 run bossbar set zone_a name {"text":"Zone Alpha - ","color":"red","extra":[{"text":"Captured","bold":true}]}
execute if score ZONE_B utility matches 1 if score ZONE_B zone_progress matches 10 run bossbar set zone_b name {"text":"Zone Bravo - ","color":"red","extra":[{"text":"Captured","bold":true}]}
execute if score ZONE_A utility matches 2 if score ZONE_A zone_progress matches 10 run bossbar set zone_a name {"text":"Zone Alpha - ","color":"blue","extra":[{"text":"Captured","bold":true}]}
execute if score ZONE_B utility matches 2 if score ZONE_B zone_progress matches 10 run bossbar set zone_b name {"text":"Zone Bravo - ","color":"blue","extra":[{"text":"Captured","bold":true}]}
# contested - progress
execute if score ZONE_A utility matches 1 if score ZONE_A zone_progress matches 1..9 run bossbar set zone_a name {"text":"Zone Alpha - ","color":"red","extra":[{"text":"Contested","color":"yellow","bold":true}]}
execute if score ZONE_B utility matches 1 if score ZONE_B zone_progress matches 1..9 run bossbar set zone_b name {"text":"Zone Bravo - ","color":"red","extra":[{"text":"Contested","color":"yellow","bold":true}]}
execute if score ZONE_A utility matches 2 if score ZONE_A zone_progress matches 1..9 run bossbar set zone_a name {"text":"Zone Alpha - ","color":"blue","extra":[{"text":"Contested","color":"yellow","bold":true}]}
execute if score ZONE_B utility matches 2 if score ZONE_B zone_progress matches 1..9 run bossbar set zone_b name {"text":"Zone Bravo - ","color":"blue","extra":[{"text":"Contested","color":"yellow","bold":true}]}
# contested - presence
execute if score ZONE_A utility matches 1 if score ZONE_A zone_blue_players matches 1 run bossbar set zone_a name {"text":"Zone Alpha - ","color":"red","extra":[{"text":"Contested","color":"yellow","bold":true}]}
execute if score ZONE_B utility matches 1 if score ZONE_B zone_blue_players matches 1 run bossbar set zone_b name {"text":"Zone Bravo - ","color":"red","extra":[{"text":"Contested","color":"yellow","bold":true}]}
execute if score ZONE_A utility matches 2 if score ZONE_A zone_red_players matches 1 run bossbar set zone_a name {"text":"Zone Alpha - ","color":"blue","extra":[{"text":"Contested","color":"yellow","bold":true}]}
execute if score ZONE_B utility matches 2 if score ZONE_B zone_red_players matches 1 run bossbar set zone_b name {"text":"Zone Bravo - ","color":"blue","extra":[{"text":"Contested","color":"yellow","bold":true}]}


#
# progress
#

execute store result bossbar zone_a value run scoreboard players get ZONE_A zone_progress
execute store result bossbar zone_b value run scoreboard players get ZONE_B zone_progress