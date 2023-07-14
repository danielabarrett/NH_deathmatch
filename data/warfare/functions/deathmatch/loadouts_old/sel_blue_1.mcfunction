scoreboard players set @s loadout_select 1
scoreboard players enable @s loadout_view
tellraw @s {"color":"blue","text":"-----------------------------------------------------"}
tellraw @s {"color":"yellow","text":"Loadout 1"}
tellraw @s {"color":"blue","text":"-----------------------------------------------------"}
tellraw @s {"text":"Primary: ","color":"light_gray","extra":[{"text":"Scar","color":"gold","hoverEvent":{"action":"show_item","contents":{"id":"additionalguns:scar","count":1}}}]}
tellraw @s {"text":"Secondary: ","color":"light_gray","extra":[{"text":"Glock 18","color":"gold","hoverEvent":{"action":"show_item","contents":{"id":"additionalguns:glock18","count":1}}}]}
tellraw @s {"color":"blue","text":"-----------------------------------------------------"}
tellraw @s {"text":"Previous","color":"green","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger loadout_view set 2"},"extra":[{"text":"              ","underlined":false,"clickEvent":{"action":"run_command","value":""}},{"text":"Next","clickEvent":{"action":"run_command","value":"/trigger loadout_view set 2"}}]}
tellraw @s {"color":"blue","text":"-----------------------------------------------------"}
