execute as @a unless entity @s[tag=NoNightVision] run effect give @s minecraft:night_vision 1000000 0 true
execute as @a if entity @s[tag=NoNightVision] run effect clear @s minecraft:night_vision

# Callbacks
execute as @a[scores={Sneak=1},tag=!Crouching] at @s run function majoras_mask:callbacks/crouch_start
execute as @a[scores={Sneak=0},tag=Crouching] at @s run function majoras_mask:callbacks/crouch_end
execute as @a[tag=Crouching] at @s run function majoras_mask:callbacks/crouch

#Teleports
function majoras_mask:teleports/tick

#Jump Cutscenes
function majoras_mask:jump_cutscenes/tick

#Entities
# function majoras_mask:entity_setup/tick

#Moving Things
function majoras_mask:moving_things/tick

#Items
function majoras_mask:items/tick

#Music
function majoras_mask:music/tick

#Always Active
recipe take @a *
stopsound @a music minecraft:music.game
stopsound @a music minecraft:music.creative
stopsound @a music minecraft:music.menu
stopsound @a ambient minecraft:ambient.cave

#Global Scoreboards

execute as @a[scores={Sneak=1..}] run scoreboard players set @s Sneak 0
execute as @a[scores={Walk=1..}] run scoreboard players set @s Walk 0
execute as @a[scores={Run=1..}] run scoreboard players set @s Run 0

#Positional trash

##Player Height scoreboard

execute as @a store result score @s Height run data get entity @s Pos[1] 100.0

##Player Speed scoreboard
execute as @a run scoreboard players operation @s LastXPos = @s XPos
execute as @a run scoreboard players operation @s LastZPos = @s ZPos

execute as @a store result score @s XPos run data get entity @s Pos[0] 100.0
execute as @a store result score @s ZPos run data get entity @s Pos[2] 100.0

execute as @a run scoreboard players operation @s Accumulator = @s XPos
execute as @a store result score @s DeltaX run scoreboard players operation @s Accumulator -= @s LastXPos
execute as @a run scoreboard players operation @s Accumulator = @s ZPos
execute as @a store result score @s DeltaZ run scoreboard players operation @s Accumulator -= @s LastZPos

execute as @a run scoreboard players operation @s HorizontalSpeedSq = @s DeltaX
execute as @a run scoreboard players operation @s Accumulator = @s DeltaZ

execute as @a run scoreboard players operation @s HorizontalSpeedSq *= @s HorizontalSpeedSq
execute as @a run scoreboard players operation @s Accumulator *= @s Accumulator

execute as @a run scoreboard players operation @s HorizontalSpeedSq += @s Accumulator