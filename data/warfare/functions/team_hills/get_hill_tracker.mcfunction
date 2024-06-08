clear @s compass
item replace entity @s hotbar.7 with compass{LodestoneTracked:0b, LodestoneDimension:"minecraft:overworld"} 1
data modify entity @s Inventory[7].tag.LodestonePos set from entity @e[type=armor_stand,limit=1,name="active_hill"] Pos
# data modify entity @s Inventory[7].tag.LodestonePos.X set from entity @e[type=armor_stand,limit=1,name="active_hill"] Pos[1]
# data modify entity @s Inventory[7].tag.LodestonePos.X set from entity @e[type=armor_stand,limit=1,name="active_hill"] Pos[2]
