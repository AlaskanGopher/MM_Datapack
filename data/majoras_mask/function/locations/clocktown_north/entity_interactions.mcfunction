
# Runs as mineacraft:interaction... unless a different type of entity interaction is added
# Triggers on interact player advancement

execute unless function majoras_mask:bool/currently_interacting run return fail

execute if entity @s[tag=TingleInteraction] unless score @s npc_state matches 14 run return fail

execute if score @s text matches 0..2147483647 run scoreboard players add @s text 1
execute unless score @s text matches -2147483648..2147483647 run scoreboard players set @s text 1

function majoras_mask:locations/clocktown_north/npc_text

execute if entity @s[type=minecraft:interaction] run data remove entity @s interaction