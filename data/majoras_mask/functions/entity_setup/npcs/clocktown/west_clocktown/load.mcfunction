# Do West Clocktown NPC Things

# Banker
execute if entity @a[tag=West_Clocktown] unless entity @e[type=#animated_java:root,tag=aj.banker.root] positioned -33.25 105 20.25 rotated 45 0 run function animated_java:banker/summon
execute as @e[type=#animated_java:root,tag=aj.banker.root] run function animated_java:banker/animations/dance/play