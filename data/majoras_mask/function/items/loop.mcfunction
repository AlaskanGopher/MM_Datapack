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

#Player Speed scoreboard
#execute as @a run scoreboard players operation @s LastXPos = @s XPos
#execute as @a run scoreboard players operation @s LastZPos = @s ZPos

#execute as @a store result score @s XPos run data get entity @s Pos[0] 100.0
#execute as @a store result score @s ZPos run data get entity @s Pos[2] 100.0

#execute as @a run scoreboard players operation @s WorkingVariable = @s XPos
#execute as @a store result score @s DeltaX run scoreboard players operation @s WorkingVariable -= @s LastXPos
#execute as @a run scoreboard players operation @s WorkingVariable = @s ZPos
#execute as @a store result score @s DeltaZ run scoreboard players operation @s WorkingVariable -= @s LastZPos

#execute as @a run scoreboard players operation @s HorizontalSpeedSq = @s DeltaX
#execute as @a run scoreboard players operation @s WorkingVariable = @s DeltaZ

#execute as @a run scoreboard players operation @s HorizontalSpeedSq *= @s HorizontalSpeedSq
#execute as @a run scoreboard players operation @s WorkingVariable *= @s WorkingVariable

#execute as @a run scoreboard players operation @s HorizontalSpeedSq += @s WorkingVariable

# Player on ground
execute as @a at @s if block ~ ~-.25 ~ air run tag @s remove onGround
execute as @a at @s unless block ~ ~-.25 ~ air run tag @s add onGround