# Add
execute positioned 0.5 100 56.5 rotated 180 0 run function animated_java:south_gate_soldier/summon {args: {animation: 'guard_idle', start_animation: true}}
execute positioned 0.5 100 56.5 rotated 180 0 run summon minecraft:interaction ~ ~ ~ {Tags:["SouthClocktownSoldierInteraction"],width:1.5,height:3,response:true}

execute positioned 14.5 100 32.0 rotated -90 0 unless entity @e[tag=globals,limit=1,scores={DayCycle=3,Time=17999..}] run function animated_java:brac/summon {args: {animation: 'carpenter_shout', start_animation: true}}
execute positioned 14.5 100 32.0 rotated -90 0 unless entity @e[tag=globals,limit=1,scores={DayCycle=3,Time=17999..}] run summon minecraft:interaction ~ ~ ~ {Tags:["BracInteraction"],width:1.5,height:3,response:true}

execute positioned -4.5 100 38.5 rotated -90 0 if entity @e[tag=globals,limit=1,scores={DayCycle=1}] run function animated_java:mack/summon {args: {animation: 'carpenter_wave_up', start_animation: true}}
execute positioned -4.5 100 38.5 rotated -90 0 if entity @e[tag=globals,limit=1,scores={DayCycle=1}] run summon minecraft:interaction ~ ~ ~ {Tags:["MackInteraction"],width:1.5,height:3,response:true}
execute positioned -13.0 101 45.0 rotated -120 0 if entity @e[tag=globals,limit=1,scores={DayCycle=2}] run function animated_java:mack/summon {args: {animation: 'carpenter_wave_up', start_animation: true}}
execute positioned -13.0 101 45.0 rotated -120 0 if entity @e[tag=globals,limit=1,scores={DayCycle=2}] run summon minecraft:interaction ~ ~ ~ {Tags:["MackInteraction"],width:1.5,height:3,response:true}
execute positioned -13.5 103 54.5 rotated -135 0 if entity @e[tag=globals,limit=1,scores={DayCycle=3,Time=..17999}] run function animated_java:mack/summon {args: {animation: 'carpenter_wave_up', start_animation: true}}
execute positioned -13.5 103 54.5 rotated -135 0 if entity @e[tag=globals,limit=1,scores={DayCycle=3,Time=..17999}] run summon minecraft:interaction ~ ~ ~ {Tags:["MackInteraction"],width:1.5,height:3,response:true}

execute positioned -1.0 106.0625 38.5 rotated 180 0 if entity @e[tag=globals,limit=1,scores={DayCycle=1}] run function animated_java:apprentice/summon {args: {animation: 'apprentice_stare_up', start_animation: true}}
execute positioned -1.0 106.0625 38.5 rotated 180 0 if entity @e[tag=globals,limit=1,scores={DayCycle=1}] run summon minecraft:interaction ~ ~ ~ {Tags:["ApprenticeInteraction"],width:1.5,height:3,response:true}

execute positioned 0 100 45 rotated 90 0 if entity @e[tag=globals,limit=1,scores={DayCycle=1}] run function animated_java:bremor/summon {args: {animation: 'carpenter_carry_plank', start_animation: true}}
execute positioned 0 100 45 rotated 90 0 if entity @e[tag=globals,limit=1,scores={DayCycle=1}] run summon minecraft:interaction ~ ~ ~ {Tags:["BremorInteraction"],width:1.5,height:3,response:true}
execute positioned 1.0 109 39.0 rotated 90 0 if entity @e[tag=globals,limit=1,scores={DayCycle=2}] run function animated_java:bremor/summon {args: {animation: 'carpenter_carry_plank', start_animation: true}}
execute positioned 1.0 109 39.0 rotated 90 0 if entity @e[tag=globals,limit=1,scores={DayCycle=2}] run summon minecraft:interaction ~ ~ ~ {Tags:["BremorInteraction"],width:1.5,height:3,response:true}
execute positioned 1.0 112 39.0 rotated 90 0 if entity @e[tag=globals,limit=1,scores={DayCycle=3,Time=..17999}] run function animated_java:bremor/summon {args: {animation: 'carpenter_carry_plank', start_animation: true}}
execute positioned 1.0 112 39.0 rotated 90 0 if entity @e[tag=globals,limit=1,scores={DayCycle=3,Time=..17999}] run summon minecraft:interaction ~ ~ ~ {Tags:["BremorInteraction"],width:1.5,height:3,response:true}
execute as @e[tag=BremorInteraction] run scoreboard players set @s npc_movement 0

# Reload
function majoras_mask:locations/clocktown_south/game_states/gate_barrier