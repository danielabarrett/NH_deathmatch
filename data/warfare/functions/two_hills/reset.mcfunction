scoreboard players set COUNTDOWN_CLOCK clock 0
scoreboard players set GAME_CLOCK clock 0
scoreboard players reset RED killcount
scoreboard players reset BLUE killcount

scoreboard objectives remove points
scoreboard objectives remove hill_progress
scoreboard objectives remove hill_red_players
scoreboard objectives remove hill_blue_players

kill @e[type=armor_stand,name="hill_border_a"]
kill @e[type=armor_stand,name="hill_border_b"]

bossbar remove hill_a
bossbar remove hill_b