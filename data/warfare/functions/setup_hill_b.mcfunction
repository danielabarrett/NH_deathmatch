kill @e[type=armor_stand,name="hill_b"]
summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,CustomName:'"hill_b"'}
tellraw @s {"text":"Set the hill B marker to your location","color":"gold"}