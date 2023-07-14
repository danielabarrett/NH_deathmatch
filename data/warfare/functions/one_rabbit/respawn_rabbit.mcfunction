tp @s @e[type=armor_stand,name="spawn_rabbit",limit=1,sort=random]
effect clear @s
execute if score @s loadout_select matches 1 run function warfare:one_rabbit/loadouts/get_rabbit_1
execute if score @s loadout_select matches 2 run function warfare:one_rabbit/loadouts/get_rabbit_2