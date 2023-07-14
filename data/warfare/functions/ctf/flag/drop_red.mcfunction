tellraw @a {"text":"Red flag has been dropped!","color":"yellow","bold":true,"extra":[{"text":" It will be reset in 10 seconds","color":"yellow","bold":false}]}
scoreboard players set @s flagholder 0
execute as @e[type=armor_stand,name="flag_red"] at @e[type=armor_stand,name="flag_red"] run tp @s ~ ~-1.85 ~
scoreboard players set reset_red clock 200