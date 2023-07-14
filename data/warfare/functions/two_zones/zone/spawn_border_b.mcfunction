summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,CustomName:'"zone_border_b"',ArmorItems:[{},{},{},{id:"minecraft:light_gray_stained_glass",Count:0}]}
tp @e[type=armor_stand,name="zone_border_b",limit=1,sort=nearest] ^ ^-1.7 ^7 facing entity @s
tp @s ~ ~ ~ ~15 ~
scoreboard players add @s utility 1
execute if score @s utility matches ..24 as @s at @s run function warfare:two_zones/zone/spawn_border_b
