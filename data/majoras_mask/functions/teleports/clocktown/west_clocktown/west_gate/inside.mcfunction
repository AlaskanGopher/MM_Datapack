stopsound @a music
execute if entity @s[scores={Time=0..11999}] run function majoras_mask:music/termina_field
tag @a remove West_Clocktown
tag @a add Termina_Field
tp @s 392 56 -371