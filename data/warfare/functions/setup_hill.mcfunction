kill @e[type=armor_stand,name="hill"]
summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,CustomName:'"hill"'}
tellraw @s {"text":"Set the hill marker to your location","color":"gold"}