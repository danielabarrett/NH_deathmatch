clear @s
# armor
item replace entity @s armor.head with leather_helmet{Enchantments:[{id:"unbreaking",lvl:3},{id:"protection",lvl:3}],display:{color:7368816}}
item replace entity @s armor.chest with leather_chestplate{Enchantments:[{id:"unbreaking",lvl:3},{id:"protection",lvl:3}],display:{color:7368816}}
item replace entity @s armor.legs with iron_leggings{Enchantments:[{id:"unbreaking",lvl:3},{id:"protection",lvl:3}]}
item replace entity @s armor.feet with iron_boots{Enchantments:[{id:"unbreaking",lvl:3},{id:"protection",lvl:3}]}
# weapons
item replace entity @s hotbar.0 with additionalguns:ak104{Attachments:{Barrel:{id:"additionalguns:tactical_muzzle_brake",Count:1b}}}
item replace entity @s hotbar.1 with additionalguns:usp
item replace entity @s hotbar.2 with iron_sword 1
# ammo
item replace entity @s container.18 with additionalguns:bullet_heavy 64
item replace entity @s container.27 with additionalguns:bullet_heavy 64
item replace entity @s container.28 with additionalguns:bullet_short 64
# support
item replace entity @s hotbar.3 with cgm:grenade 3
item replace entity @s hotbar.8 with cooked_beef 64
#heal
effect give @s instant_health 1 100 true
effect give @s saturation 1 100 true
