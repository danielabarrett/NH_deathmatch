# if 1 then 2 then 0
# if 0 then 1
#

execute if score op_shuffle_teams option matches 1 run scoreboard players set op_shuffle_teams option 2
execute if score op_shuffle_teams option matches 0 run scoreboard players set op_shuffle_teams option 1
execute if score op_shuffle_teams option matches 2 run scoreboard players set op_shuffle_teams option 0

function warfare:options

# execute if score op_shuffle_teams option matches 1 run tellraw @s {"text":"Shuffle teams enabled","color":"gold"}
# execute if score op_shuffle_teams option matches 0 run tellraw @s {"text":"Shuffle teams disabled","color":"gold"}