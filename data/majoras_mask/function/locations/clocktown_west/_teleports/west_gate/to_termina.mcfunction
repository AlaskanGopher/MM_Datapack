function majoras_mask:music/remove_other

function majoras_mask:entity_setup/npcs/clocktown/west_clocktown/unload

execute if entity @e[type=marker, tag=globals, scores={Time=0..11999}] run function majoras_mask:music/termina_field
tag @s remove West_Clocktown
tag @s add Termina_Field