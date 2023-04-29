# If player is wearing a deku mask near a deku flower
execute if entity @s[tag=WearingDekuMask] if entity @e[distance=..1.25, tag=DekuFlower] run function majoras_mask:items/deku_flower/deku_flower_crouch

# otherwise reset variables
execute unless entity @s[tag=WearingDekuMask] unless entity @e[distance=..1.25, tag=DekuFlower] run function majoras_mask:items/deku_flower/deku_flower_reset_variables

say crouching