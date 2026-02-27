
execute as @s at @s anchored feet rotated ~ 0 if block ^ ^-1 ^ minecraft:water \
    run return 1

execute store result score @s WorkingVariable run function majoras_mask:items/masks/deku_mask/water_check {val: 0}
execute if score @s WorkingVariable matches 1 run return 1

execute store result score @s WorkingVariable run function majoras_mask:items/masks/deku_mask/water_check {val: 1}
execute if score @s WorkingVariable matches 1 run return 1

return 0