clear @s
# armor
item replace entity @s armor.head with iron_helmet{Unbreakable:1b,Enchantments:[{id:"unbreaking",lvl:3},{id:"protection",lvl:3}]}
item replace entity @s armor.chest with leather_chestplate{Unbreakable:1b,Enchantments:[{id:"unbreaking",lvl:3},{id:"protection",lvl:3}],display:{color:8750469}}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1b,Enchantments:[{id:"unbreaking",lvl:3},{id:"protection",lvl:3}],display:{color:8750469}}
item replace entity @s armor.feet with leather_boots{Enchantments:[{id:"unbreaking",lvl:3},{id:"feather_falling","lvl":2},{id:"protection",lvl:3}],display:{color:8750469}}
# weapons
item replace entity @s hotbar.0 with additionalguns:g11{Attachments:{Scope:{id:'cgm:short_scope',Count:1b},Barrel:{id:"additionalguns:tactical_muzzle_brake",Count:1b}}}
item replace entity @s hotbar.1 with additionalguns:magnum
item replace entity @s hotbar.2 with cgm:grenade_launcher
# ammo
item replace entity @s container.18 with additionalguns:bullet_heavy 64
item replace entity @s container.27 with additionalguns:bullet_heavy 64
item replace entity @s container.28 with additionalguns:bullet_short 64
item replace entity @s hotbar.2 with cgm:grenade 3
item replace entity @s hotbar.3 with cgm:stun_grenade 3
# support
item replace entity @s hotbar.8 with cooked_beef 64
# effects
effect give @s speed infinite 1 true
effect give @s jump_boost infinite 1 true
effect give @s instant_health 1 100 true
effect give @s saturation 1 100 true
