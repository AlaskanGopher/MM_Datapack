scoreboard objectives remove aj.i
scoreboard objectives remove aj.id
scoreboard objectives remove aj.tween_time
scoreboard objectives remove aj.anim_time
scoreboard objectives remove aj.life_time
scoreboard objectives remove aj.banker.export_version
scoreboard objectives remove aj.banker.rig_loaded
scoreboard objectives remove aj.banker.animation.default.local_anim_time
scoreboard objectives remove aj.banker.animation.idle.local_anim_time
scoreboard objectives remove aj.banker.animation.wave.local_anim_time
scoreboard objectives remove aj.banker.animation.pound.local_anim_time
scoreboard objectives remove aj.banker.animation.dance.local_anim_time
scoreboard objectives remove aj.banker.animation.default.loop_mode
scoreboard objectives remove aj.banker.animation.idle.loop_mode
scoreboard objectives remove aj.banker.animation.wave.loop_mode
scoreboard objectives remove aj.banker.animation.pound.loop_mode
scoreboard objectives remove aj.banker.animation.dance.loop_mode
tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},[{"text":"INFO ℹ","color":"green"},{"text":" > ","color":"gray"},{"text":"The banker Rig has been uninstalled successfully.\n"},{"text":"Please remove the Rig's functions from the datapack before reloading.","color":"gray"}]]