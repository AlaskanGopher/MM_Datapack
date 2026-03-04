tag @s remove West_Clocktown

execute unless entity @a[tag=West_Clocktown] run function majoras_mask:locations/clocktown_west/game_states/unload
execute unless entity @a[tag=South_Clocktown] run function majoras_mask:locations/clocktown_south/game_states/load

tag @s add South_Clocktown