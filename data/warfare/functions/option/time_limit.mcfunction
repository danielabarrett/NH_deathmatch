#
# time limit
# 5 min - 6000
# 10 min - 12000
# 15 min - 18000
# 20 min - 24000
#

execute if score op_time_limit option matches 24000 run scoreboard players set op_time_limit option 69
execute if score op_time_limit option matches 18000 run scoreboard players set op_time_limit option 24000
execute if score op_time_limit option matches 12000 run scoreboard players set op_time_limit option 18000
execute if score op_time_limit option matches 6000 run scoreboard players set op_time_limit option 12000
execute if score op_time_limit option matches 69 run scoreboard players set op_time_limit option 6000

function warfare:options

# execute if score op_time_limit option matches 6000 run tellraw @s {"text":"Time limit set to ","color":"gold","extra":[{"text":"5","color":"red"},{"text":" min","color":"gold"}]}
# execute if score op_time_limit option matches 12000 run tellraw @s {"text":"Time limit set to ","color":"gold","extra":[{"text":"10","color":"red"},{"text":" min","color":"gold"}]}
# execute if score op_time_limit option matches 18000 run tellraw @s {"text":"Time limit set to ","color":"gold","extra":[{"text":"15","color":"red"},{"text":" min","color":"gold"}]}
# execute if score op_time_limit option matches 24000 run tellraw @s {"text":"Time limit set to ","color":"gold","extra":[{"text":"20","color":"red"},{"text":" min","color":"gold"}]}
