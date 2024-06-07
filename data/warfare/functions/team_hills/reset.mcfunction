scoreboard players set COUNTDOWN_CLOCK clock 0
scoreboard players set GAME_CLOCK clock 0
scoreboard players reset RED killcount
scoreboard players reset BLUE killcount

scoreboard objectives remove points

kill @e[type=armor_stand,name="hill_border"]
kill @e[type=armor_stand,name="active_hill"]