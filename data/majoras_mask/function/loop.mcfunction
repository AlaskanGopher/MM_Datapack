execute as @a if entity @s[tag=NightVision] run effect give @s minecraft:night_vision 1000000 0 true
execute as @a unless entity @s[tag=NightVision] run effect clear @s minecraft:night_vision
execute as @e[type=marker, tag=globals, limit=1] store result score @s Time run time query daytime

#Teleports
function majoras_mask:locations/_tick

#Jump Cutscenes
#function majoras_mask:jump_cutscenes/loop

#Entities
#function majoras_mask:entity_setup/loop

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

execute if entity @a[scores={Sneak=1..}] run scoreboard players set @a Sneak 0
execute if entity @a[scores={Walk=1..}] run scoreboard players set @a Walk 0
execute if entity @a[scores={Run=1..}] run scoreboard players set @a Run 0
execute store result score @p coord_x run data get entity @p Pos[0]
execute store result score @p coord_y run data get entity @p Pos[1]
execute store result score @p coord_z run data get entity @p Pos[2]