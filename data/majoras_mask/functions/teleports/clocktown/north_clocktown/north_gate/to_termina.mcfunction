function majoras_mask:music/remove_other

execute if entity @e[type=marker, tag=globals, scores={Time=0..11999}] run function majoras_mask:music/termina_field
tag @s remove North_Clocktown
tag @s add Termina_Field