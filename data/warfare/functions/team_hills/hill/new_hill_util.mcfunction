# hill marker
kill @e[type=armor_stand,name="active_hill"]
summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,CustomName:'"active_hill"'}
scoreboard players set @s utility 0
kill @e[type=armor_stand,name="hill_border"]
function warfare:team_hills/hill/spawn_border

# players
tellraw @a {"text":"The Hill has Moved!", "color":"green"}
execute as @a[scores={clock=0}] run function warfare:team_hills/get_hill_tracker
