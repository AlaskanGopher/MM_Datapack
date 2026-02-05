# Tingle
execute positioned 2 111 -46 rotated 45 0 run function animated_java:tingle/summon {args:{animation: 'tingle_float', start_animation: true}}
execute positioned 2 111 -46 rotated 45 0 run summon minecraft:interaction ~ ~ ~ {Tags:["TingleInteraction"],width:1,height:2,response:true}
execute as @e[tag=TingleInteraction] run scoreboard players set @s npc_state 0
execute as @e[tag=TingleInteraction] run scoreboard players set @s npc_movement 0
execute as @e[tag=TingleInteraction] run scoreboard players set @s npc_timer 0