summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,CustomName:'"hill_border"',ArmorItems:[{},{},{},{id:"minecraft:yellow_stained_glass",Count:0}]}
tp @e[type=armor_stand,name="hill_border",limit=1,sort=nearest] ^ ^-1.7 ^10 facing entity @s
tp @s ~ ~ ~ ~15 ~
scoreboard players add @s utility 1
execute if score @s utility matches ..24 as @s at @s run function warfare:king_of_the_hill/hill/spawn_border
