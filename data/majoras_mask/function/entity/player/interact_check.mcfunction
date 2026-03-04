
# Runs as player

execute if entity @s[tag=South_Clocktown] at @s as @e[distance=..6, type=minecraft:interaction] \
    run function majoras_mask:locations/clocktown_south/entity_interactions

execute if entity @s[tag=North_Clocktown] at @s as @e[distance=..6, type=minecraft:interaction] \
    run function majoras_mask:locations/clocktown_south/entity_interactions

advancement revoke @s only majoras_mask:interact
