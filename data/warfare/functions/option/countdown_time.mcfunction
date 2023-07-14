#
# Countdown time
# 5 sec - 100
# 10 sec - 200
# 15 sec - 300
# 20 sec - 400
#

execute if score op_countdown_time option matches 400 run scoreboard players set op_countdown_time option 69
execute if score op_countdown_time option matches 300 run scoreboard players set op_countdown_time option 400
execute if score op_countdown_time option matches 200 run scoreboard players set op_countdown_time option 300
execute if score op_countdown_time option matches 100 run scoreboard players set op_countdown_time option 200
execute if score op_countdown_time option matches 69 run scoreboard players set op_countdown_time option 100

function warfare:options
