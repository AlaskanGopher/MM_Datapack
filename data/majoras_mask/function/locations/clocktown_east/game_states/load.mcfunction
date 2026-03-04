# Add
execute positioned 54 102 10 rotated 90 0 run function animated_java:east_gate_soldier/summon {args: {animation: 'guard_idle', start_animation: true}}
execute positioned 54 102 10 rotated 90 0 run summon minecraft:interaction ~ ~ ~ {Tags:["EastClocktownSoldierInteraction"],width:1.5,height:3,response:true}

# Reload
function majoras_mask:locations/_any/game_states/clocktown_gate_barriers