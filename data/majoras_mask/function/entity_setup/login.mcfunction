# Function that Loads on Login
# Identification
execute as @s run function majoras_mask:entity_setup/player/uuid

execute unless score @s PlayerID matches 0.. run scoreboard players add MMGameManager PlayerID 1
execute unless score @s PlayerID matches 0.. run scoreboard players operation @s PlayerID = MMGameManager PlayerID

tag @s add Registered
