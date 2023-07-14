kill @e[type=armor_stand,name="flag_blue"]
execute as @e[type=armor_stand,name="flagstand_blue"] at @e[type=armor_stand,name="flagstand_blue"] run summon armor_stand ~ ~-1.85 ~ {CustomName:'"flag_blue"',Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:blue_banner",Count:1b}]}
tellraw @a {"text":"Blue flag has been reset!","color":"yellow","bold":true}