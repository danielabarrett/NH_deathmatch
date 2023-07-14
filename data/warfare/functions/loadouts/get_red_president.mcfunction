clear @s
# armor
item replace entity @s armor.head with leather_helmet{Enchantments:[{id:"unbreaking",lvl:10},{id:"protection",lvl:5}],display:{color:12341328},Unbreakable:1b}
item replace entity @s armor.chest with leather_chestplate{Enchantments:[{id:"unbreaking",lvl:10},{id:"protection",lvl:5}],display:{color:0},Unbreakable:1b}
item replace entity @s armor.legs with leather_leggings{Enchantments:[{id:"unbreaking",lvl:10},{id:"protection",lvl:5}],display:{color:0},Unbreakable:1b}
item replace entity @s armor.feet with leather_boots{Enchantments:[{id:"unbreaking",lvl:10},{id:"protection",lvl:5}],display:{color:0},Unbreakable:1b}
# weapons
item replace entity @s hotbar.0 with additionalguns:desert_eagle
# ammo
item replace entity @s container.27 with additionalguns:bullet_short 64
# support
item replace entity @s hotbar.8 with cooked_beef 64
#heal
attribute @s generic.max_health base set 40.0
effect give @s instant_health 1 100 true
effect give @s saturation 1 100 true
