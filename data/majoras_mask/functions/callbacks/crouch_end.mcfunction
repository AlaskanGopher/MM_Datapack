tag @s remove Crouching

execute if score @s DekuCrouchTimer matches 41.. unless entity @e[tag=GoldDekuFlower,distance=..1] run function majoras_mask:items/deku_flower/launch
execute if score @s DekuCrouchTimer matches 41.. if entity @e[tag=GoldDekuFlower,distance=..1] run function majoras_mask:items/deku_flower/gold_launch

function majoras_mask:items/deku_flower/reset_variables