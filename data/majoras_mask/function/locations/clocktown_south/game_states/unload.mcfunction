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