# If player is senaking wearing a deku mask near a deku flower
execute if entity @s[tag=WearingDekuMask] if entity @e[distance=..1.5, tag=DekuFlower] run function majoras_mask:items/deku_flower/deku_flower_crouch

# Reset all Dekus' variables if they are not near a flower
execute as @s[tag=WearingDekuMask] unless entity @e[distance=..1.5, tag=DekuFlower] run function majoras_mask:items/deku_flower/deku_flower_reset_variables