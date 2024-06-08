kill @e[type=armor_stand,name="flagstand_blue"]
summon armor_stand ~ ~ ~ {Tags:["warfare","flagstand","blue"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,CustomName:'"flagstand_blue"'}
tellraw @s {"text":"Set blue team flag stand to your location","color":"gold"}