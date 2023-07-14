# kill @e[type=armor_stand,name="flag_red"]
# item replace entity @s armor.head with minecraft:red_banner
tellraw @a {"selector":"@s","extra":[{"text":" has picked up the red flag!","color":"yellow","bold":true}]}
scoreboard players set @s flagholder 1
scoreboard players set reset_red clock 0
execute as @a[team=BLUE,scores={flagholder=1}] run title @s actionbar {"text":"You have red team's flag!","color":"yellow","bold":true}
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 2
