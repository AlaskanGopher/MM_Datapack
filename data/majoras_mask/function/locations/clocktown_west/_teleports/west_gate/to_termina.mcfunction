function majoras_mask:music/remove_other
tag @s remove West_Clocktown

execute unless entity @a[tag=West_Clocktown] run function majoras_mask:locations/clocktown_west/game_states/unload

execute if entity @e[type=marker, tag=globals, scores={Time=0..11999}] run function majoras_mask:music/termina_field

tag @s add Termina_Field