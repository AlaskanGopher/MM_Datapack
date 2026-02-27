effect give @s minecraft:blindness 2 100 true
item replace entity @p armor.head with minecraft:air 1
attribute @s minecraft:scale base set 1
tag @s remove Wearing_Deku_Mask
tag @s add NoTransformationMask
$execute if entity @e[tag=$(id)] run kill @e[tag=$(id)]
scoreboard players set @s Cooldown 0