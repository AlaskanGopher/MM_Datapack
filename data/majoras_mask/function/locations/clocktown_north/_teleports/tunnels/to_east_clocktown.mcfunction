tag @s remove North_Clocktown

execute unless entity @a[tag=North_Clocktown] run function majoras_mask:locations/clocktown_north/game_states/unload
execute unless entity @a[tag=East_Clocktown] run function majoras_mask:locations/clocktown_east/game_states/load

tag @s add East_Clocktown