tag @s remove East_Clocktown

execute unless entity @a[tag=East_Clocktown] run function majoras_mask:locations/clocktown_east/game_states/unload
execute unless entity @a[tag=South_Clocktown] run function majoras_mask:locations/clocktown_south/game_states/load

tag @s add South_Clocktown
