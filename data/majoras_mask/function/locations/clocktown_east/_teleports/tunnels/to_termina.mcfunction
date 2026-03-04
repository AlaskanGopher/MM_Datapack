function majoras_mask:music/remove_other

execute if entity @e[type=marker, tag=globals, scores={Time=0..11999}] run function majoras_mask:music/termina_field
function majoras_mask:locations/remove_other
tag @s remove East_Clocktown

execute unless entity @a[tag=East_Clocktown] run function majoras_mask:locations/clocktown_east/game_states/unload

tag @s add Termina_Field
tp @s 126 112 44 ~90 ~