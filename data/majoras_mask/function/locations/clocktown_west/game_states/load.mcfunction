# Add
execute positioned -51.5 107 -0.5 rotated -90 0 run function animated_java:west_gate_soldier/summon {args: {animation: 'guard_idle', start_animation: true}}
execute positioned -51.5 107 -0.5 rotated -90 0 run summon minecraft:interaction ~ ~ ~ {Tags:["WestClocktownSoldierInteraction"],width:1.5,height:3,response:true}

# Reload
function majoras_mask:locations/_any/game_states/clocktown_gate_barriers