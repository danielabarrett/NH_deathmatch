#
# gamemode ticks
#

execute if score gamemode utility matches 1 run function warfare:deathmatch/tick
execute if score gamemode utility matches 2 run function warfare:ctf/tick
execute if score gamemode utility matches 3 run function warfare:president/tick
execute if score gamemode utility matches 4 run function warfare:one_rabbit/tick
execute if score gamemode utility matches 5 run function warfare:king_of_the_hill/tick
execute if score gamemode utility matches 6 run function warfare:two_zones/tick
execute if score gamemode utility matches 7 run function warfare:ffa/tick


# don't let players drop
# execute as @e[type=item,nbt={Item:{id:"minecraft:leather_helmet"}}] run data modify entity @s PickupDelay set value 1b
# execute as @e[type=item,nbt={Item:{id:"minecraft:leather_chestplate"}}] run data modify entity @s PickupDelay set value 1b
# execute as @e[type=item,nbt={Item:{id:"minecraft:leather_leggings"}}] run data modify entity @s PickupDelay set value 1b
# execute as @e[type=item,nbt={Item:{id:"minecraft:leather_boots"}}] run data modify entity @s PickupDelay set value 1b
# execute as @e[type=item,nbt={Item:{id:"minecraft:iron_leggings"}}] run data modify entity @s PickupDelay set value 1b
# execute as @e[type=item,nbt={Item:{id:"minecraft:iron_boots"}}] run data modify entity @s PickupDelay set value 1b
# execute as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] run data modify entity @s PickupDelay set value 1b
execute as @e[type=item] run data modify entity @s PickupDelay set value 1b
kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"},Age:2s}]

# show points
execute if score gamemode utility matches 0 run function warfare:_global/show_points



#temp
# function warfare:king_of_the_hill/hill/border_particles_gray
