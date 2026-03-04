
$execute if entity @e[tag=$(id)] run ride @s mount @n[tag=$(id)]

$execute at @s if entity @e[sort=nearest, predicate=majoras_mask:touchingwater, limit=1, tag=$(id)] \
    run function majoras_mask:items/masks/deku_mask/water with storage temp:working

$execute if entity @e[tag=$(id)] if entity @s[predicate=majoras_mask:grounded] \
    run kill @e[tag=$(id)]