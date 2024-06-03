execute as @e[type=armor_stand,name="spawn_red"] at @e[type=armor_stand,name="respawn_red"] run effect give @a[distance=0..10,team=!RED] poison 5 3 false
execute as @e[type=armor_stand,name="spawn_red"] at @e[type=armor_stand,name="respawn_red"] run tellraw @a[distance=0..15,team=!RED] {"text":"Please back away from the red team's respawn!","color":"red"}
execute as @e[type=armor_stand,name="spawn_blue"] at @e[type=armor_stand,name="respawn_blue"] run effect give @a[distance=0..10,team=!BLUE] poison 5 3 false
execute as @e[type=armor_stand,name="spawn_blue"] at @e[type=armor_stand,name="respawn_blue"] run tellraw @a[distance=0..15,team=!BLUE] {"text":"Please back away from the blue team's respawn!","color":"red"}
