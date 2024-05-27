scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.banker.animation.pound.local_anim_time 0
scoreboard players set @s aj.banker.animation.pound.loop_mode 0
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:banker/zzzzzzzz/animations/pound/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.banker.animation.pound