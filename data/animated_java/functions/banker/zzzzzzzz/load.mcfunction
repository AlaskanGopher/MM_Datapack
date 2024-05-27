scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.banker.export_version dummy
scoreboard objectives add aj.banker.rig_loaded dummy
scoreboard objectives add aj.banker.animation.default.local_anim_time dummy
scoreboard objectives add aj.banker.animation.idle.local_anim_time dummy
scoreboard objectives add aj.banker.animation.wave.local_anim_time dummy
scoreboard objectives add aj.banker.animation.pound.local_anim_time dummy
scoreboard objectives add aj.banker.animation.dance.local_anim_time dummy
scoreboard objectives add aj.banker.animation.default.loop_mode dummy
scoreboard objectives add aj.banker.animation.idle.loop_mode dummy
scoreboard objectives add aj.banker.animation.wave.loop_mode dummy
scoreboard objectives add aj.banker.animation.pound.loop_mode dummy
scoreboard objectives add aj.banker.animation.dance.loop_mode dummy
scoreboard players set $aj.banker.animation.default aj.id 0
scoreboard players set $aj.banker.animation.idle aj.id 1
scoreboard players set $aj.banker.animation.wave aj.id 2
scoreboard players set $aj.banker.animation.pound aj.id 3
scoreboard players set $aj.banker.animation.dance aj.id 4
scoreboard players set $aj.banker.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.banker.export_version aj.i 205504004
scoreboard players reset * aj.banker.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.banker.root] run function animated_java:banker/zzzzzzzz/on_load