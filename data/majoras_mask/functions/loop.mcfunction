execute as @a unless entity @s[tag=NoNightVision] run effect give @s minecraft:night_vision 1000000 0 true
execute as @a if entity @s[tag=NoNightVision] run effect clear @s minecraft:night_vision

# Callbacks
execute as @a[scores={Sneak=1},tag=!Crouching] at @s run function majoras_mask:callbacks/crouch_start
execute as @a[scores={Sneak=0},tag=Crouching] at @s run function majoras_mask:callbacks/crouch_end
execute as @a[tag=Crouching] at @s run function majoras_mask:callbacks/crouch

#Teleports
function majoras_mask:teleports/loop

#Jump Cutscenes
function majoras_mask:jump_cutscenes/loop

#Entities
# function majoras_mask:entity_setup/loop

#Moving Things
function majoras_mask:moving_things/loop

#Items
function majoras_mask:items/loop

#Music
function majoras_mask:music/loop

#Always Active
recipe take @a *
stopsound @a music minecraft:music.game
stopsound @a music minecraft:music.creative
stopsound @a music minecraft:music.menu
stopsound @a ambient minecraft:ambient.cave

execute as @a[scores={Sneak=1..}] run scoreboard players set @s Sneak 0
execute as @a[scores={Walk=1..}] run scoreboard players set @s Walk 0
execute as @a[scores={Run=1..}] run scoreboard players set @s Run 0