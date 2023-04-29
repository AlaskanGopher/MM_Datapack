# If player is wearing a deku mask near a deku flower
execute if entity @s[tag=WearingDekuMask] if entity @e[distance=..1.5, tag=DekuFlower] run function majoras_mask:items/deku_flower/deku_flower_crouch

# otherwise reset variables
execute unless entity @e[distance=..1.5, tag=DekuFlower] run function majoras_mask:items/deku_flower/deku_flower_reset_variables