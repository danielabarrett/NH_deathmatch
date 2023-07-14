scoreboard players set COUNTDOWN_CLOCK clock 0
scoreboard players set GAME_CLOCK clock 0
scoreboard players reset RED killcount
scoreboard players reset BLUE killcount

scoreboard objectives remove points
scoreboard objectives remove zone_progress
scoreboard objectives remove zone_red_players
scoreboard objectives remove zone_blue_players

kill @e[type=armor_stand,name="zone_border_a"]
kill @e[type=armor_stand,name="zone_border_b"]

bossbar remove zone_a
bossbar remove zone_b