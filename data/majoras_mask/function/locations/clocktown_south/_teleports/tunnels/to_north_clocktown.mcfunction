tag @s remove South_Clocktown

execute unless entity @a[tag=South_Clocktown] run function majoras_mask:locations/clocktown_south/game_states/unload
execute unless entity @a[tag=North_Clocktown] run function majoras_mask:locations/clocktown_north/game_states/load

tag @s add North_Clocktown