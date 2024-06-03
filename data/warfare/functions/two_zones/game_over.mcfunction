scoreboard players set gamemode utility 0
scoreboard players set @a utility 0
bossbar remove zone_a
bossbar remove zone_b
bossbar set timer visible false
title @a times 10t 7s 10t
title @a title {"text":"GAME OVER","color":"yellow"}
execute if score RED points = BLUE points run title @a title {"text":"IT'S A TIE:(","color":"yellow"}
execute if score RED points > BLUE points run title @a subtitle {"text":"RED WINS","color":"red"}
execute if score RED points < BLUE points run title @a subtitle {"text":"BLUE WINS","color":"blue"}
clear @a
execute as @a at @a run playsound entity.wither.death player @s ~ ~ ~ 1 0.5
kill @e[type=armor_stand,name="zone_border_a"]
kill @e[type=armor_stand,name="zone_border_b"]