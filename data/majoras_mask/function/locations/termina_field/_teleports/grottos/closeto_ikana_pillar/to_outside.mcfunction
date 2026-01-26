function majoras_mask:music/remove_other
execute if entity @e[type=marker, tag=globals, scores={Time=0..11999}] run function majoras_mask:music/termina_field
tag @s remove Inside
tp @s 93.5 115 13.5 0 0