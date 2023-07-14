tp @s @e[type=armor_stand,name="spawn_blue",limit=1]
effect clear @s
execute if score @s loadout_select matches 1 run function warfare:ctf/loadouts/get_blue_1
execute if score @s loadout_select matches 2 run function warfare:ctf/loadouts/get_blue_2