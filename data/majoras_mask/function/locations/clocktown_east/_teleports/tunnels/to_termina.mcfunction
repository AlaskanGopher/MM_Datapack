function majoras_mask:music/remove_other

execute if entity @e[type=marker, tag=globals, scores={Time=0..11999}] run function majoras_mask:music/termina_field
function majoras_mask:locations/remove_other
tag @s remove East_Clocktown
tag @s add Termina_Field
tp @s 126 112 44 ~90 ~