tag @s remove South_Clocktown

execute unless entity @a[tag=South_Clocktown] run function majoras_mask:locations/clocktown_south/game_states/unload
execute unless entity @a[tag=West_Clocktown] run function majoras_mask:locations/clocktown_west/game_states/load

tag @s add West_Clocktown