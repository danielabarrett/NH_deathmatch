scoreboard players set @s loadout_select 2
scoreboard players enable @s loadout_view
tellraw @s {"color":"gray","text":"-----------------------------------------------------"}
tellraw @s {"color":"yellow","text":"Loadout 2"}
tellraw @s {"color":"gray","text":"-----------------------------------------------------"}
tellraw @s {"text":"Primary: ","color":"light_gray","extra":[{"text":"AKM Custom","color":"gold","hoverEvent":{"action":"show_item","contents":{"id":"additionalguns:akm_custom","count":1}}}]}
tellraw @s {"text":"Secondary: ","color":"light_gray","extra":[{"text":"P250","color":"gold","hoverEvent":{"action":"show_item","contents":{"id":"additionalguns:p250","count":1}}}]}
tellraw @s {"text":"Special: ","color":"light_gray","extra":[{"text":"Grenade Launcher","color":"gold","hoverEvent":{"action":"show_item","contents":{"id":"cgm:grenade_launcher","count":1}}}]}
tellraw @s {"color":"gray","text":"-----------------------------------------------------"}
tellraw @s {"text":"Previous","color":"green","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger loadout_view set 1"},"extra":[{"text":"              ","underlined":false,"clickEvent":{"action":"run_command","value":""}},{"text":"Next","clickEvent":{"action":"run_command","value":"/trigger loadout_view set 1"}}]}
tellraw @s {"color":"gray","text":"-----------------------------------------------------"}
