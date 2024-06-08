kill @e[type=armor_stand,name="spawn_red"]
summon armor_stand ~ ~ ~ {Tags:["warfare","spawn","red"],Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,CustomName:'"spawn_red"'}
tellraw @s {"text":"Set red team spawn point to your location","color":"gold"}