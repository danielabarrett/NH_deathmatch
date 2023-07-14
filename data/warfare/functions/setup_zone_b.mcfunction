kill @e[type=armor_stand,name="zone_b"]
summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,CustomName:'"zone_b"'}
tellraw @s {"text":"Set the zone B marker to your location","color":"gold"}