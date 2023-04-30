# If player is senaking wearing a deku mask in a deku flower
execute if entity @s[tag=WearingDekuMask] if entity @e[distance=..1, tag=DekuFlower] run function majoras_mask:items/deku_flower/crouch

# Reset all Dekus' variables if they are not in a flower
execute as @s[tag=WearingDekuMask] unless entity @e[distance=..1, tag=DekuFlower] run function majoras_mask:items/deku_flower/reset_variables