#
# Deathmatch help
#
# Setup:
#   - spawnpoint_red
#   - spawnpoint_blue
#
# Description: 
#   2 teams battle in a timed team-vs-team format. The team with the most kills at the end of the time
#   limit wins. 
# 

tellraw @s {"color":"aqua","text":"-----------------------------------------------------"}
tellraw @s {"color":"yellow","text":"                      Deathmatch help","bold":true}
tellraw @s {"color":"aqua","text":"-----------------------------------------------------"}
tellraw @s {"color":"gold","text":"Setup: ","extra":[{"text":"spawnpoint_red, spawnpoint_blue","color":"gray"}]}
tellraw @s {"color":"gold","text":"Win condition: ","extra":[{"text":"highest score after timer","color":"gray"}]}
tellraw @s {"color":"gold","text":"Start command: ","extra":[{"text":"/function warfare:play_deathmatch","color":"gray"}]}
tellraw @s {"color":"aqua","text":"-----------------------------------------------------"}
tellraw @s {"color":"gray","text":"-2 teams battle in a timed team-vs-team format. The team with the most kills at the end of the time limit wins."}
tellraw @s {"color":"aqua","text":"-----------------------------------------------------"}
