scoreboard players add @s aj.banker.animation.pound.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.banker.animation.pound.local_anim_time
function animated_java:banker/zzzzzzzz/animations/pound/apply_frame_as_root
execute if score @s aj.banker.animation.pound.local_anim_time matches 24.. run function animated_java:banker/zzzzzzzz/animations/pound/end