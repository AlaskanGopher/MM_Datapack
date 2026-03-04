
# Running as minecraft:interaction

execute store result score @s WorkingVariable run data get entity @s interaction.timestamp
execute unless score @s WorkingVariable matches 0 run return 1

return fail
