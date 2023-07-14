clear @s
# armor
item replace entity @s armor.head with leather_helmet{Enchantments:[{id:"unbreaking",lvl:3},{id:"protection",lvl:3}],display:{color:12341328}}
item replace entity @s armor.chest with leather_chestplate{Enchantments:[{id:"unbreaking",lvl:3},{id:"protection",lvl:3}],display:{color:12341328}}
item replace entity @s armor.legs with iron_leggings{Enchantments:[{id:"unbreaking",lvl:3},{id:"protection",lvl:3}]}
item replace entity @s armor.feet with iron_boots{Enchantments:[{id:"unbreaking",lvl:3},{id:"protection",lvl:3}]}
# weapons
item replace entity @s hotbar.0 with additionalguns:awm{Attachments:{Scope:{id:'cgm:long_scope',Count:1b},Barrel:{id:'additionalguns:sniper_muzzle_brake',Count:1b},Under_Barrel:{id:"additionalguns:angled_grip",Count:1b}}}
item replace entity @s hotbar.1 with additionalguns:p250
item replace entity @s hotbar.2 with iron_sword 1
# ammo
item replace entity @s container.27 with additionalguns:bullet_long 64
item replace entity @s container.28 with additionalguns:bullet_short 64
# support
item replace entity @s hotbar.3 with cgm:grenade 3
item replace entity @s hotbar.8 with cooked_beef 64
#heal
effect give @s instant_health 1 100 true
effect give @s saturation 1 100 true
