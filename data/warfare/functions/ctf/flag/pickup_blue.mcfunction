# kill @e[type=armor_stand,name="flag_blue"]
# item replace entity @s armor.head with minecraft:blue_banner
tellraw @a {"selector":"@s","extra":[{"text":" has picked up the blue flag!","color":"yellow","bold":true}]}
scoreboard players set @s flagholder 1
scoreboard players set reset_blue clock 0
execute as @a[team=RED,scores={flagholder=1}] run title @s actionbar {"text":"You have blue team's flag!","color":"yellow","bold":true}
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~
