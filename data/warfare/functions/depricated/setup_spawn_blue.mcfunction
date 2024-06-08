kill @e[type=armor_stand,name="spawn_blue"]
summon armor_stand ~ ~ ~ {Tags:["warfare","spawn","blue"],Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,CustomName:'"spawn_blue"'}
tellraw @s {"text":"Set blue team spawn point to your location","color":"gold"}