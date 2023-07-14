kill @e[type=armor_stand,name="flag_red"]
execute as @e[type=armor_stand,name="flagstand_red"] at @e[type=armor_stand,name="flagstand_red"] run summon armor_stand ~ ~-1.85 ~ {CustomName:'"flag_red"',Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:red_banner",Count:1b}]}
tellraw @a {"text":"Red flag has been reset!","color":"yellow","bold":true}