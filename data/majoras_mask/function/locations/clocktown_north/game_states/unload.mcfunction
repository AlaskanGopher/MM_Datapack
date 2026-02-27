# Guard
execute as @e[tag=aj.north_gate_soldier.root] run function animated_java:north_gate_soldier/remove/all
kill @e[tag=NorthClocktownSoldierInteraction]

# Tingle
execute as @e[tag=aj.tingle.root] run function animated_java:tingle/remove/all
kill @e[tag=TingleInteraction]