execute as @s[name="zone_a"] run bossbar set zone_a color red
# execute as @s[name="zone_a"] run bossbar set zone_a name {"text":"Zone Alpha","color":"red"}
execute as @s[name="zone_a"] run scoreboard players set ZONE_A utility 1

execute as @s[name="zone_b"] run bossbar set zone_b color red
# execute as @s[name="zone_b"] run bossbar set zone_b name {"text":"Zone Bravo","color":"red"}
execute as @s[name="zone_b"] run scoreboard players set ZONE_B utility 1
