scoreboard players set @s death_detector 0
scoreboard players add @a[scores={president=1},team=BLUE] killcount 1
execute if score @s president matches 1 run function warfare:president/game_over_blue
execute if score @s president matches 0 if score @s loadout_select matches 1 run function warfare:president/loadouts/get_red_1
execute if score @s president matches 0 if score @s loadout_select matches 2 run function warfare:president/loadouts/get_red_2