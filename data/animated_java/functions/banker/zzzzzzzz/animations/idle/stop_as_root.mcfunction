scoreboard players set @s aj.banker.animation.idle.local_anim_time 0
tag @s remove aj.banker.animation.idle
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.banker.disable_command_keyframes
function animated_java:banker/zzzzzzzz/animations/idle/tree/leaf_0
tag @s remove aj.banker.disable_command_keyframes