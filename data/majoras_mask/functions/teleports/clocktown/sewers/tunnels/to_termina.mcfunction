stopsound @s music
execute if entity @e[type=marker, tag=globals, scores={Time=0..11999}] run function majoras_mask:music/termina_field
function majoras_mask:teleports/remove_other
tag @s remove Sewers
tag @s add Termina_Field
tp @s 189 60.5 -410 ~90 ~