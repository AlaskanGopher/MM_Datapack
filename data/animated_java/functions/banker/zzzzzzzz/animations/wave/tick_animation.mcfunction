scoreboard players add @s aj.banker.animation.wave.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.banker.animation.wave.local_anim_time
function animated_java:banker/zzzzzzzz/animations/wave/apply_frame_as_root
execute if score @s aj.banker.animation.wave.local_anim_time matches 16.. run function animated_java:banker/zzzzzzzz/animations/wave/end