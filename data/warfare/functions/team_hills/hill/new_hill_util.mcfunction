# hill marker
kill @e[type=armor_stand,name="active_hill"]
summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,CustomName:'"active_hill"'}
scoreboard players set @s utility 0
function warfare:team_hills/hill/spawn_border

# players
tellraw @a {"text":"The Hill has Moved!", "color":"green"}