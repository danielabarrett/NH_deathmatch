tp @s @e[type=armor_stand,name="spawn_red",limit=1]
effect clear @s
execute if score @s loadout_select matches 1 run function warfare:loadouts/get_red_assault
execute if score @s loadout_select matches 2 run function warfare:loadouts/get_red_operator
execute if score @s loadout_select matches 3 run function warfare:loadouts/get_red_sniper
