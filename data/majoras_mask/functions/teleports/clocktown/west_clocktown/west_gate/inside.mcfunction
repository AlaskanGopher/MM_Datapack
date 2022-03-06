stopsound @s music
execute if entity @s[scores={Time=0..11999}] run function majoras_mask:music/termina_field
tag @s remove West_Clocktown
tag @s add Termina_Field
tp @s 392 56 -371