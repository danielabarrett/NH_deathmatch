kill @e[type=armor_stand,name="zone_a"]
summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,CustomName:'"zone_a"'}
tellraw @s {"text":"Set the zone A marker to your location","color":"gold"}