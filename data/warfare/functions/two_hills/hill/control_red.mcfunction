execute as @s[name="hill_a"] run bossbar set hill_a color red
# execute as @s[name="hill_a"] run bossbar set hill_a name {"text":"Hill Alpha","color":"red"}
execute as @s[name="hill_a"] run scoreboard players set HILL_A utility 1
execute as @s[name="hill_a"] run scoreboard players set HILL_A hill_progress 1

execute as @s[name="hill_b"] run bossbar set hill_b color red
# execute as @s[name="hill_b"] run bossbar set hill_b name {"text":"Hill Bravo","color":"red"}
execute as @s[name="hill_b"] run scoreboard players set HILL_B utility 1
execute as @s[name="hill_b"] run scoreboard players set HILL_B hill_progress 1
