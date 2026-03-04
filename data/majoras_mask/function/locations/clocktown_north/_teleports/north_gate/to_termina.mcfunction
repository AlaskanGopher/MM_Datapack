function majoras_mask:music/remove_other

execute if entity @e[type=marker, tag=globals, scores={Time=0..11999}] run function majoras_mask:music/termina_field

tag @s remove North_Clocktown

execute unless entity @a[tag=North_Clocktown] run function majoras_mask:locations/clocktown_north/game_states/unload

tag @s add Termina_Field