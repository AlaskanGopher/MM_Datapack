# Guard
execute positioned -1.5 106.9 -49.5 rotated 0 0 run function animated_java:north_gate_soldier/summon {args: {animation: 'guard_idle', start_animation: true}}
execute positioned -1.5 106.9 -49.5 rotated 0 0 run summon minecraft:interaction ~ ~ ~ {Tags:["NorthClocktownSoldierInteraction"],width:1.5,height:3,response:true}

# Tingle
execute positioned 2 111 -46 rotated 45 0 run function animated_java:tingle/summon {args:{animation: 'tingle_float', start_animation: true}}
execute positioned 2 111 -46 rotated 45 0 run summon minecraft:interaction ~ ~ ~ {Tags:["TingleInteraction"],width:1,height:2,response:true}
execute as @e[tag=TingleInteraction] run scoreboard players set @s npc_state 0
execute as @e[tag=TingleInteraction] run scoreboard players set @s npc_movement 0
execute as @e[tag=TingleInteraction] run scoreboard players set @s npc_timer 0

# Reload
function majoras_mask:locations/clocktown_north/game_states/gate_barrier