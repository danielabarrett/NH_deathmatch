scoreboard players set @s loadout_select 1
scoreboard players enable @s loadout_view
tellraw @s {"color":"blue","text":"-----------------------------------------------------"}
tellraw @s {"color":"yellow","text":"President Loadout"}
tellraw @s {"color":"blue","text":"-----------------------------------------------------"}
tellraw @s {"text":"Primary: ","color":"light_gray","extra":[{"text":"Desert Eagle","color":"gold","hoverEvent":{"action":"show_item","contents":{"id":"additionalguns:desert_eagle","count":1}}}]}
tellraw @s {"color":"blue","text":"-----------------------------------------------------"}
tellraw @s {"text":"Previous","color":"gray","underlined":true,"extra":[{"text":"              ","underlined":false},{"text":"Next","clickEvent":{"action":"run_command","value":"/trigger loadout_view set 2"}}]}
tellraw @s {"color":"blue","text":"-----------------------------------------------------"}
