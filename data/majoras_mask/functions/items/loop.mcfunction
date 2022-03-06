#Multiplayer Tick Fix
function majoras_mask:items/multiplayer_tick_fix

#Deku Flower
function majoras_mask:items/deku_flower/deku_flower_launch

#Deku Mask
function majoras_mask:items/masks/deku_mask/deku_mask

#Advance Cooldown
execute as @a run scoreboard players add @s Cooldown 1

#Use Item Reset
execute as @a[scores={UseItem=1..}] run scoreboard players set @s UseItem 0

#Player Height scoreboard
execute as @a store result score @s Height run data get entity @s Pos[1] 100.0