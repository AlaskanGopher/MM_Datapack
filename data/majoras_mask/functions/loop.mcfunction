execute unless entity @a[tag=NoNightVision] run effect give @a minecraft:night_vision 1000000 0 true
execute if entity @a[tag=NoNightVision] run effect clear @a minecraft:night_vision

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

#Always Active
recipe take @a *
stopsound @a music minecraft:music.game
stopsound @a music minecraft:music.creative
stopsound @a music minecraft:music.menu
stopsound @a ambient minecraft:ambient.cave

execute if entity @a[scores={Sneak=1..}] run scoreboard players set @a Sneak 0
execute if entity @a[scores={Walk=1..}] run scoreboard players set @a Walk 0
execute if entity @a[scores={Run=1..}] run scoreboard players set @a Run 0