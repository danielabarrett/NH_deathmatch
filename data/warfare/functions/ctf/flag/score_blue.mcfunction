scoreboard players set @s flagholder 0
scoreboard players add BLUE flagcount 1
title @s actionbar ""
title @a times 10t 3s 10t
title @a title {"text":"Red scored!","color":"yellow","bold":true}
execute as @a at @a run playsound item.totem.use player @s ~ ~ ~
function warfare:ctf/flag/reset_red