clear @s compass
summon chest_minecart ~ ~-100 ~ {Tags:["warfare","compass_holder"]}
item replace entity @e[tag=compass_holder,limit=1,sort=nearest] container.0 with compass{display:{Name:'{"text":"Hill Tracker","color":"green","italic":false}'}, LodestoneTracked:0b, LodestoneDimension:"minecraft:overworld", LodestonePos:{X:0,Y:0,Z:0}} 1
data modify entity @e[tag=compass_holder,limit=1,sort=nearest] Items[0].tag.LodestoneDimension set from entity @s Dimension
data modify entity @e[tag=compass_holder,limit=1,sort=nearest] Items[0].tag.LodestonePos.X set from entity @e[type=armor_stand,limit=1,name="active_hill"] Pos[0]
data modify entity @e[tag=compass_holder,limit=1,sort=nearest] Items[0].tag.LodestonePos.Y set from entity @e[type=armor_stand,limit=1,name="active_hill"] Pos[1]
data modify entity @e[tag=compass_holder,limit=1,sort=nearest] Items[0].tag.LodestonePos.Z set from entity @e[type=armor_stand,limit=1,name="active_hill"] Pos[2]
item replace entity @s hotbar.7 from entity @e[tag=compass_holder,limit=1,sort=nearest] container.0
kill @e[tag=compass_holder,limit=1,sort=nearest]
