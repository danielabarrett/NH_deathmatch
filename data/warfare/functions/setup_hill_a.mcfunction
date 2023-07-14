kill @e[type=armor_stand,name="hill_a"]
summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,CustomName:'"hill_a"'}
tellraw @s {"text":"Set the hill A marker to your location","color":"gold"}