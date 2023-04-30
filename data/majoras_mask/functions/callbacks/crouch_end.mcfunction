tag @s remove Crouching

execute if score @s DekuCrouchTimer matches 41.. unless entity @e[tag=GoldDekuFlower,distance=..1] run say Launch :/
execute if score @s DekuCrouchTimer matches 41.. if entity @e[tag=GoldDekuFlower,distance=..1] run say LAUNCH OwO

function majoras_mask:items/deku_flower/reset_variables