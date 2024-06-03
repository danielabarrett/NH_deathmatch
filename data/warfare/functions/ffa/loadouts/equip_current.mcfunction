
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{loadout_assault:1b}}}] run scoreboard players set @s loadout_select 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{loadout_assault:1b}}}] run tellraw @s [{"text":"Selected ","color":"yellow"},{"text":"Assault","color":"yellow","bold":true}]

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{loadout_operator:1b}}}] run scoreboard players set @s loadout_select 2
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{loadout_operator:1b}}}] run tellraw @s [{"text":"Selected ","color":"yellow"},{"text":"Operator","color":"yellow","bold":true}]

scoreboard players set @s loadout_equip 0