#Deku Flower
function majoras_mask:items/deku_flower/deku_flower_launch

#Deku Mask
function majoras_mask:items/masks/deku_mask/deku_mask

#Advance Cooldown
execute as @a run scoreboard players add @s Cooldown 1

#Use Item Reset
execute as @a[scores={UseItem=1..}] run scoreboard players set @s UseItem 0