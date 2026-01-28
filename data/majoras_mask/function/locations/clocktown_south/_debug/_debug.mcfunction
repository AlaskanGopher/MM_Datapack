# Remove
execute as @e[tag=aj.south_gate_soldier.root] run function animated_java:south_gate_soldier/remove/all
kill @e[tag=SouthClocktownSoldierInteraction]
execute as @e[tag=aj.brac.root] run function animated_java:brac/remove/all
kill @e[tag=BracInteraction]
execute as @e[tag=aj.mack.root] run function animated_java:mack/remove/all
kill @e[tag=MackInteraction]
execute as @e[tag=aj.apprentice.root] run function animated_java:apprentice/remove/all
kill @e[tag=ApprenticeInteraction]
execute as @e[tag=aj.bremor.root] run function animated_java:bremor/remove/all
kill @e[tag=BremorInteraction]

tag @e[tag=globals] remove GatesOpen

# Add
execute positioned 0.5 100 56.5 rotated 180 0 run function animated_java:south_gate_soldier/summon {args: {animation: 'soldier_idle', start_animation: true}}
execute positioned 0.5 100 56.5 rotated 180 0 run summon minecraft:interaction ~ ~ ~ {Tags:["SouthClocktownSoldierInteraction"],width:1.5,height:3,response:true}
execute positioned 14.5 100 32.0 rotated -90 0 run function animated_java:brac/summon {args: {animation: 'carpenter_idle', start_animation: true}}
execute positioned 14.5 100 32.0 rotated -90 0 run summon minecraft:interaction ~ ~ ~ {Tags:["BracInteraction"],width:1.5,height:3,response:true}
execute positioned -4.5 100 38.5 rotated -90 0 run function animated_java:mack/summon {args: {animation: 'carpenter_wave_up', start_animation: true}}
execute positioned -4.5 100 38.5 rotated -90 0 run summon minecraft:interaction ~ ~ ~ {Tags:["MackInteraction"],width:1.5,height:3,response:true}
execute positioned -1.0 106.0625 38.5 rotated 180 0 run function animated_java:apprentice/summon {args: {animation: 'apprentice_stare_up', start_animation: true}}
execute positioned -1.0 106.0625 38.5 rotated 180 0 run summon minecraft:interaction ~ ~ ~ {Tags:["ApprenticeInteraction"],width:1.5,height:3,response:true}
execute positioned 0 100 45 rotated 90 0 run function animated_java:bremor/summon {args: {animation: 'carpenter_carry_plank', start_animation: true}}
execute positioned 0 100 45 rotated 90 0 run summon minecraft:interaction ~ ~ ~ {Tags:["BremorInteraction"],width:1.5,height:3,response:true}
execute as @e[tag=BremorInteraction] run scoreboard players set @s npc_movement 0

# Reload
function majoras_mask:locations/clocktown_south/game_states/gate_barrier