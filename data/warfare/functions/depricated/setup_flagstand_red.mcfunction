kill @e[type=armor_stand,name="flagstand_red"]
summon armor_stand ~ ~ ~ {Tags:["warfare","flagstand","red"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,CustomName:'"flagstand_red"'}
tellraw @s {"text":"Set red team flag stand to your location","color":"gold"}