execute as @s[team=RED] if score @s loadout_view matches 1 run function warfare:president/loadouts/sel_red_1
execute as @s[team=RED] if score @s loadout_view matches 2 run function warfare:president/loadouts/sel_red_2

execute as @s[team=BLUE] if score @s loadout_view matches 1 run function warfare:president/loadouts/sel_blue_1
execute as @s[team=BLUE] if score @s loadout_view matches 2 run function warfare:president/loadouts/sel_blue_2