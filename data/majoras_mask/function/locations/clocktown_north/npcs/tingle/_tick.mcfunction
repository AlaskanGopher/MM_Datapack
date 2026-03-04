# Everytime
tp @s @e[tag=aj.tingle.root,limit=1]
execute as @e[tag=aj.tingle.root,limit=1] run function majoras_mask:locations/clocktown_north/npcs/tingle/animation/_tick

$function majoras_mask:locations/clocktown_north/npcs/tingle/animation/$(tingleAnimation)

# Everytime
execute as @e[tag=TingleInteraction] run data remove entity @s interaction